/* eslint-disable no-console */
const admin = require("firebase-admin");
const {
  onDocumentCreated,
  onDocumentUpdated,
  onDocumentDeleted,
} = require("firebase-functions/v2/firestore");
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

// Versioned collections (bump company settings.version on create/update/delete)
const VERSIONED_COLLECTIONS = ["users", "branches", "departments", "cities"];

const VERSION_FIELD_BY_COLLECTION = {
  users: "usersVersion",
  branches: "branchesVersion",
  departments: "departmentsVersion",
  cities: "citiesVersion",
};

// v2 trigger runtime options
const TRIGGER_OPTS = {
  region: REGION,
  memory: "256MiB",
  timeoutSeconds: 60,
  maxInstances: 50,
  retry: false,
};

// ====== UTILITIES ======

/** Company settings fetcher */
async function getCompanySettings(companyId) {
  if (!companyId) return {};
  const ref = db
    .collection("companies")
    .doc(companyId)
    .collection("settings")
    .doc(SETTINGS_DOC_ID);
  const snap = await ref.get();
  return snap.exists ? snap.data() || {} : {};
}

/** Localize title/body by collection + action */
function localize(collection, action, lang) {
  const key = collection;
  const isAr = (lang || "ar").toLowerCase().startsWith("ar");

  const friendly = {
    vacations: { en: "Vacation request", ar: "طلب إجازة" },
    incentives: { en: "Incentive request", ar: "طلب حوافز" },
    breaks: { en: "Break request", ar: "طلب استراحة" },
    salaryAdvances: { en: "Salary advance request", ar: "طلب سلفة" },
    overtimes: { en: "Overtime request", ar: "طلب عمل إضافي" },
    leaves: { en: "Leave request", ar: "طلب إذن" },
  };

  const name = friendly[key] || { en: key, ar: key };

  if (action === "create") {
    return isAr
      ? { title: `طلب جديد: ${name.ar}`, body: `قام الموظف بإنشاء ${name.ar}.` }
      : { title: `New ${name.en}`, body: `An employee submitted a new ${name.en}.` };
  }

  // update
  return isAr
    ? { title: `تم تحديث ${name.ar}`, body: `تم تحديث حالة ${name.ar}.` }
    : { title: `${name.en} updated`, body: `Your ${name.en} has been updated.` };
}

/** Normalize common status values to friendly labels */
function normalizeStatusText(raw) {
  if (!raw || typeof raw !== "string") return "";
  const s = raw.trim().toLowerCase();
  if (["approved", "accept", "accepted", "true", "ok"].includes(s)) return "approved";
  if (["rejected", "declined", "false", "denied"].includes(s)) return "rejected";
  if (["pending", "in_review", "waiting"].includes(s)) return "pending";
  return raw.trim();
}

/** Add status suffix to body if present */
function addStatusToBody(body, afterData, lang) {
  const isAr = (lang || "ar").toLowerCase().startsWith("ar");
  let statusText = null;

  if (typeof afterData?.status === "string" && afterData.status.trim()) {
    statusText = normalizeStatusText(afterData.status);
  } else if (typeof afterData?.approved === "boolean") {
    statusText = afterData.approved ? (isAr ? "مقبول" : "approved") : (isAr ? "مرفوض" : "rejected");
  }

  if (!statusText) return body;

  const statusLabel = isAr
    ? statusText === "approved"
      ? "مقبول"
      : statusText === "rejected"
      ? "مرفوض"
      : statusText === "pending"
      ? "قيد المراجعة"
      : statusText
    : statusText;

  return body.replace(/\.?$/, "") + (isAr ? ` (الحالة: ${statusLabel}).` : ` (status: ${statusLabel}).`);
}

/** Build deep link extras for client routing */
function buildDeepLinkData(collection, id) {
  return {
    screen: "REQUEST_DETAILS",
    collection,
    id: String(id || ""),
    web_url: `https://your-admin.example.com/${collection}/${id}`,
    app_route: `/requests/${collection}/${id}`,
  };
}

/** Decision change guard for updates (status/approved) */
function decisionChanged(before, after) {
  const prev = {
    status: typeof before?.status === "string" ? before.status.trim() : "",
    approved: typeof before?.approved === "boolean" ? before.approved : null,
  };
  const curr = {
    status: typeof after?.status === "string" ? after.status.trim() : "",
    approved: typeof after?.approved === "boolean" ? after.approved : null,
  };
  return prev.status !== curr.status || prev.approved !== curr.approved;
}

/** Send multicast push, skip if no tokens */
async function sendToTokens(tokens, title, body, data = {}) {
  const valid = Array.isArray(tokens) ? tokens.filter(Boolean) : [];
  if (valid.length === 0) return null;

  const message = {
    notification: { title, body },
    data: Object.fromEntries(Object.entries(data || {}).map(([k, v]) => [String(k), String(v)])),
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

/** Remove invalid tokens from a user's document based on FCM response */
async function cleanupInvalidTokens(userDocRef, tokens, resp) {
  if (!resp || !Array.isArray(resp.responses)) return;
  const toRemove = [];
  resp.responses.forEach((r, idx) => {
    if (!r.success) {
      const code = r.error?.code || r.error?.message || "";
      if (
        code.includes("registration-token-not-registered") ||
        code.includes("messaging/invalid-registration-token") ||
        code.includes("messaging/registration-token-not-registered")
      ) {
        toRemove.push(tokens[idx]);
      }
    }
  });
  if (toRemove.length) {
    await userDocRef
      .update({ deviceTokens: admin.firestore.FieldValue.arrayRemove(...toRemove) })
      .catch(() => {});
  }
}

/** In-app notification doc model (aligned with your Freezed models) */
function toNotificationDoc({ title, body, image, type, id }) {
  return {
    createdAt: admin.firestore.FieldValue.serverTimestamp(),
    markAsRead: false,
    notification: {
      title: title ?? null,
      body: body ?? null,
      image: image ?? null,
    },
    data: {
      id: id != null ? String(id) : null,
      type: type != null ? String(type) : null,
    },
  };
}

/** Create a notification doc under users/{uid}/notifications/{autoId} */
async function createUserNotificationDoc(userId, { title, body, image, type, id }) {
  if (!userId) return;
  const ref = db.collection("users").doc(userId).collection("notifications").doc();
  await ref.set(toNotificationDoc({ title, body, image, type, id }));
}

/** Optionally scope admin list by branch/department */
async function queryScopedAdmins(companyId, branchId, departmentId) {
  let q = db
    .collection("users")
    .where("companyId", "==", companyId)
    .where("role", "==", "admin");

  const snap = await q.get();
  if (snap.empty) return [];

  // Manual filter to include superAdmin or matching scope if set
  const filtered = snap.docs.filter((d) => {
    const u = d.data() || {};
    if (u.role === "superAdmin") return true;
    if (branchId && u.branchId && u.branchId === branchId) return true;
    if (departmentId && u.departmentId && u.departmentId === departmentId) return true;
    return !branchId && !departmentId;
  });

  return filtered;
}

/** Notify admins in the same company (and optional scope) on CREATE */
async function notifyAdminsOnCreate(collection, docData) {
  const companyId = docData?.companyId;
  const requestId = docData?.id;
  const branchId = docData?.branchId;
  const departmentId = docData?.departmentId;

  if (!companyId) {
    console.warn(`[${collection}] Missing companyId on create; skip admin notification.`);
    return;
  }

  const settings = await getCompanySettings(companyId);
  if (settings.notifyAdminsOnCreate === false) {
    console.log(`[${collection}] Admin create notifications disabled for company ${companyId}`);
    return;
  }

  const admins = await queryScopedAdmins(companyId, branchId, departmentId);
  if (!admins.length) {
    console.log(`[${collection}] No scoped admins found for company ${companyId}.`);
    return;
  }

  await Promise.all(
    admins.map(async (adminDoc) => {
      const adminData = adminDoc.data() || {};
      const lang = adminData.languageCode || settings.defaultLanguage || "ar";
      const { title, body } = localize(collection, "create", lang);
      const tokens = adminData.deviceTokens || [];
      const payloadType = collection.toUpperCase();
      const extra = buildDeepLinkData(collection, requestId);

      const resp = await sendToTokens(tokens, title, body, {
        ...extra,
        type: payloadType,
        id: String(requestId || ""),
        companyId: String(companyId || ""),
        role: "admin",
        action: "create",
      });

      // In-app notification document for this admin
      await createUserNotificationDoc(adminDoc.id, {
        title,
        body,
        image: null,
        type: payloadType,
        id: requestId || "",
      });

      // Optional: cleanup invalid tokens
      await cleanupInvalidTokens(adminDoc.ref, tokens, resp);
    })
  );
}

/** Notify owner user on UPDATE (decision change only) */
async function notifyOwnerOnUpdate(collection, beforeData, afterData) {
  const userId = afterData?.userId;
  const companyId = afterData?.companyId;
  const requestId = afterData?.id;

  if (!userId) {
    console.warn(`[${collection}] Missing userId on update; skip user notification.`);
    return;
  }

  const settings = await getCompanySettings(companyId);
  if (settings.notifyOwnerOnUpdate === false) {
    console.log(`[${collection}] Owner update notifications disabled for company ${companyId}`);
    return;
  }

  // Only notify on decision changes
  if (!decisionChanged(beforeData, afterData)) return;

  const userSnap = await db.collection("users").doc(userId).get();
  if (!userSnap.exists) {
    console.warn(`[${collection}] User ${userId} not found.`);
    return;
  }

  const user = userSnap.data() || {};
  const lang = user.languageCode || settings.defaultLanguage || "ar";
  const base = localize(collection, "update", lang);
  const body = addStatusToBody(base.body, afterData, lang);
  const tokens = user.deviceTokens || [];
  const payloadType = collection.toUpperCase();
  const extra = buildDeepLinkData(collection, requestId);

  const resp = await sendToTokens(tokens, base.title, body, {
    ...extra,
    type: payloadType,
    id: String(requestId || ""),
    companyId: String(companyId || ""),
    role: "employee",
    action: "update",
  });

  // In-app notification document for the owner
  await createUserNotificationDoc(userId, {
    title: base.title,
    body,
    image: null,
    type: payloadType,
    id: requestId || "",
  });

  // Optional: cleanup invalid tokens
  await cleanupInvalidTokens(userSnap.ref, tokens, resp);
}

/** Bump version in companies/{companyId}/settings/{SETTINGS_DOC_ID} */
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
    console.log(
      `[version] ${collectionName} → incremented ${field} for company ${companyId}`
    );
  } catch (e) {
    console.error("[version] bump error:", e);
  }
}

// ====== TRIGGERS: REQUEST COLLECTIONS ======

// On CREATE → notify admins (+ write admin in-app notification)
for (const col of REQUEST_COLLECTIONS) {
  exports[`on_${col}_created_notify_admins`] = onDocumentCreated(
    { ...TRIGGER_OPTS, document: `${col}/{docId}` },
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

// On UPDATE → notify owner if decision changed (+ write owner in-app notification)
for (const col of REQUEST_COLLECTIONS) {
  exports[`on_${col}_updated_notify_owner`] = onDocumentUpdated(
    { ...TRIGGER_OPTS, document: `${col}/{docId}` },
    async (event) => {
      const before = event.data?.before?.data?.() || {};
      const after = event.data?.after?.data?.() || {};
      try {
        await notifyOwnerOnUpdate(col, before, after);
      } catch (e) {
        console.error(`[${col}] update notify owner error:`, e);
      }
    }
  );
}

// ====== TRIGGERS: VERSIONED COLLECTIONS (create & update & delete) ======

for (const col of VERSIONED_COLLECTIONS) {
  // CREATE → bump
  exports[`on_${col}_created_bump_version`] = onDocumentCreated(
    { ...TRIGGER_OPTS, document: `${col}/{docId}` },
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
    { ...TRIGGER_OPTS, document: `${col}/{docId}` },
    async (event) => {
      const after = event.data?.after?.data?.() || {};
      try {
        await bumpVersion(after.companyId, col);
      } catch (e) {
        console.error(`[${col}] version bump on update error:`, e);
      }
    }
  );

  // DELETE → bump
  exports[`on_${col}_deleted_bump_version`] = onDocumentDeleted(
    { ...TRIGGER_OPTS, document: `${col}/{docId}` },
    async (event) => {
      const before = event.data?.before?.data?.() || {};
      try {
        await bumpVersion(before.companyId, col);
      } catch (e) {
        console.error(`[${col}] version bump on delete error:`, e);
      }
    }
  );
}

// ====== CALLABLES ======

/** Create a Firebase Auth user (optional admin claim) */
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

/** Send a test push to a user and also create an in-app notification doc */
exports.sendTestPush = onCall({ region: REGION }, async (req) => {
  const { userId, title = "Test", body = "Hello!" } = req.data || {};
  if (!userId) throw new Error("Missing userId");
  const snap = await db.collection("users").doc(userId).get();
  if (!snap.exists) throw new Error("User not found");
  const user = snap.data() || {};
  const tokens = user.deviceTokens || [];
  const resp = await sendToTokens(tokens, title, body, { type: "TEST" });
  await createUserNotificationDoc(userId, {
    title,
    body,
    image: null,
    type: "TEST",
    id: "",
  });
  await cleanupInvalidTokens(snap.ref, tokens, resp);
  return { successCount: resp?.successCount ?? 0, failureCount: resp?.failureCount ?? 0 };
});
