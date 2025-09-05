const admin = require("firebase-admin");
const { onDocumentCreated, onDocumentUpdated } = require("firebase-functions/v2/firestore");
const { onCall } = require("firebase-functions/v2/https");

admin.initializeApp();

const db = admin.firestore();
const messaging = admin.messaging();

// ====== CONSTANTS ======
const REGION = "europe-west3";
const SETTINGS_DOC_ID = "6FpxtsNEhh7Fie394WOr";

// Request collections (user-submitted forms)
const REQUEST_COLLECTIONS = [
  "vacations",
  "incentives",
  "breaks",
  "salaryAdvances",
  "overtimes",
  "leaves",
];

// Versioned collections (bump company settings.version on create/update)
const VERSIONED_COLLECTIONS = ["users", "branches", "departments", "cities"];

const VERSION_FIELD_BY_COLLECTION = {
  users: "usersVersion",
  branches: "branchesVersion",
  departments: "departmentsVersion",
  cities: "citiesVersion",
};

// ====== UTILITIES ======

/**
 * Get localized strings for a collection and action.
 * @param {string} collection
 * @param {'create'|'update'} action
 * @param {'ar'|'en'|string} lang
 */
function localize(collection, action, lang) {
  const key = collection; // as provided above
  const isAr = (lang || "ar").toLowerCase().startsWith("ar");

  // Friendly names per collection (EN/AR)
  const friendly = {
    vacations: { en: "Vacation request", ar: "طلب إجازة" },
    incentives: { en: "Incentive request", ar: "طلب حوافز" },
    breaks: { en: "Break request", ar: "طلب استراحة" },
    salaryAdvances: { en: "Salary advance request", ar: "طلب سلفة" },
    overtimes: { en: "Overtime request", ar: "طلب عمل إضافي" },
    leaves: { en: "Leave request", ar: "طلب إذن" },
  };

  // Fallback if unknown key
  const name = friendly[key] || { en: key, ar: key };

  if (action === "create") {
    return isAr
      ? {
          title: `طلب جديد: ${name.ar}`,
          body: `قام الموظف بإنشاء ${name.ar}.`,
        }
      : {
          title: `New ${name.en}`,
          body: `An employee submitted a new ${name.en}.`,
        };
  }

  // update
  return isAr
    ? {
        title: `تم تحديث ${name.ar}`,
        body: `تم تحديث حالة ${name.ar}.`,
      }
    : {
        title: `${name.en} updated`,
        body: `Your ${name.en} has been updated.`,
      };
}

/**
 * Add status to body if we can infer it (approved/rejected/updated).
 * Looks for common fields: status or approved boolean.
 */
function addStatusToBody(body, afterData, lang) {
  const isAr = (lang || "ar").toLowerCase().startsWith("ar");
  let statusText = null;

  if (typeof afterData?.status === "string" && afterData.status.trim()) {
    statusText = afterData.status.trim();
  } else if (typeof afterData?.approved === "boolean") {
    statusText = afterData.approved ? (isAr ? "مقبول" : "approved") : (isAr ? "مرفوض" : "rejected");
  }

  if (!statusText) return body;

  if (isAr) {
    return `${body.replace(/\.?$/, "")} (الحالة: ${statusText}).`;
  }
  return `${body.replace(/\.?$/, "")} (status: ${statusText}).`;
}

exports.generateCustomToken = onCall({region: "europe-west3"},
    async (request) => {
      const payload = request.data;
      const uid = payload.uid;
      try {
        const token = await admin.auth().createCustomToken(uid);
        console.log("Custom Token:", token);
        return token;
      } catch (error) {
        console.error("Error creating custom token:", error);
        throw error;
      }
    });

/**
 * Sends push to multiple tokens (silently skips invalid/empty).
 * Returns sendEachForMulticast response or null.
 */
async function sendToTokens(tokens, title, body, data = {}) {
  const valid = Array.isArray(tokens) ? tokens.filter(Boolean) : [];
  if (valid.length === 0) return null;

  const message = {
    notification: { title, body },
    data: Object.fromEntries(
      Object.entries(data || {}).map(([k, v]) => [String(k), String(v)])
    ),
    apns: { payload: { aps: { sound: "default" } } },
    android: { notification: { sound: "default" } },
    tokens: valid,
  };

  try {
    return await messaging.sendEachForMulticast(message);
  } catch (e) {
    console.error("sendEachForMulticast error:", e);
    return null;
  }
}

/**
 * Notify all admins in the same company.
 * Expects doc having companyId, userId, id.
 */
async function notifyAdminsOnCreate(collection, docData) {
  const companyId = docData?.companyId;
  const requestId = docData?.id;
  if (!companyId) {
    console.warn(`[${collection}] Missing companyId on create; skip admin notification.`);
    return;
  }

  // Find admins in the same company
  const adminsSnap = await db
    .collection("users")
    .where("companyId", "==", companyId)
    .where("role", "==", "admin")
    .get();

  if (adminsSnap.empty) {
    console.log(`[${collection}] No admins found for company ${companyId}.`);
    return;
  }

  // Send localized per admin (respects languageCode & deviceTokens)
  await Promise.all(
    adminsSnap.docs.map(async (adminDoc) => {
      const adminData = adminDoc.data() || {};
      const lang = adminData.languageCode || "ar";
      const { title, body } = localize(collection, "create", lang);
      const tokens = adminData.deviceTokens || [];

      await sendToTokens(tokens, title, body, {
        type: collection.toUpperCase(),
        id: String(requestId || ""),
        companyId: String(companyId || ""),
        role: "admin",
        action: "create",
      });
    })
  );
}

/**
 * Notify the owner user on update.
 * Expects afterData having userId, companyId, id.
 */
async function notifyOwnerOnUpdate(collection, afterData) {
  const userId = afterData?.userId;
  const companyId = afterData?.companyId;
  const requestId = afterData?.id;
  if (!userId) {
    console.warn(`[${collection}] Missing userId on update; skip user notification.`);
    return;
  }

  const userSnap = await db.collection("users").doc(userId).get();
  if (!userSnap.exists) {
    console.warn(`[${collection}] User ${userId} not found.`);
    return;
  }

  const user = userSnap.data() || {};
  const lang = user.languageCode || "ar";
  const base = localize(collection, "update", lang);
  const body = addStatusToBody(base.body, afterData, lang);
  const tokens = user.deviceTokens || [];

  await sendToTokens(tokens, base.title, body, {
    type: collection.toUpperCase(),
    id: String(requestId || ""),
    companyId: String(companyId || ""),
    role: "employee",
    action: "update",
  });
}

/**
 * Bump version in companies/{companyId}/settings/{SETTINGS_DOC_ID}
 */
async function bumpVersion(companyId, collectionName) {
  if (!companyId) {
    console.warn(`[version] Missing companyId for ${collectionName}.`);
    return;
  }
  const field = VERSION_FIELD_BY_COLLECTION[collectionName];
  if (!field) return;

  const settingsRef = db
    .collection("companies")
    .doc(companyId)
    .collection("settings")
    .doc(SETTINGS_DOC_ID);

  try {
    await settingsRef.set(
      { [field]: admin.firestore.FieldValue.increment(1) },
      { merge: true }
    );
    console.log(`[version] ${collectionName} → incremented ${field} for company ${companyId}`);
  } catch (e) {
    console.error("[version] bump error:", e);
  }
}

// ====== TRIGGERS: REQUEST COLLECTIONS ======

// On CREATE → notify admins
for (const col of REQUEST_COLLECTIONS) {
  exports[`on_${col}_created_notify_admins`] = onDocumentCreated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const data = event.data?.data?.() || {};
      try {
        await notifyAdminsOnCreate(col, data);
      } catch (e) {
        console.error(`[${col}] create notify admins error:`, e);
      }
    }
  );
}

// On UPDATE → notify owner (user)
for (const col of REQUEST_COLLECTIONS) {
  exports[`on_${col}_updated_notify_owner`] = onDocumentUpdated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const after = event.data?.after?.data?.() || {};
      try {
        await notifyOwnerOnUpdate(col, after);
      } catch (e) {
        console.error(`[${col}] update notify owner error:`, e);
      }
    }
  );
}

// ====== TRIGGERS: VERSIONED COLLECTIONS (create & update) ======

for (const col of VERSIONED_COLLECTIONS) {
  // CREATE → bump
  exports[`on_${col}_created_bump_version`] = onDocumentCreated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const data = event.data?.data?.() || {};
      try {
        await bumpVersion(data.companyId, col);
      } catch (e) {
        console.error(`[${col}] version bump on create error:`, e);
      }
    }
  );

  // UPDATE → bump
  exports[`on_${col}_updated_bump_version`] = onDocumentUpdated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const after = event.data?.after?.data?.() || {};
      try {
        await bumpVersion(after.companyId, col);
      } catch (e) {
        console.error(`[${col}] version bump on update error:`, e);
      }
    }
  );
}

// ====== OPTIONAL: create user via callable (kept from your style) ======
exports.createUser = onCall({ region: REGION }, async (request) => {
  try {
    const payload = request.data || {};
    const email = payload.email;
    const password = payload.password;
    const isAdmin = payload.admin === true;

    if (!email || !password) {
      throw new Error("Missing email or password");
    }

    const user = await admin.auth().createUser({ email, password });
    if (isAdmin) {
      await admin.auth().setCustomUserClaims(user.uid, { admin: true });
    }
    return { uid: user.uid };
  } catch (error) {
    console.error("createUser error:", error);
    throw error;
  }
});
