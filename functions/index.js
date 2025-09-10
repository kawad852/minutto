const admin = require("firebase-admin");
const { onDocumentCreated, onDocumentUpdated } = require("firebase-functions/v2/firestore");
const { onCall } = require("firebase-functions/v2/https");

admin.initializeApp();

const db = admin.firestore();
const messaging = admin.messaging();

const REGION = "europe-west3";
const SETTINGS_DOC_ID = "6FpxtsNEhh7Fie394WOr";

const REQUEST_COLLECTIONS = [
  "vacations",
  "incentives",
  "breaks",
  "salaryAdvances",
  "overtimes",
  "leaves",
];

const VERSIONED_COLLECTIONS = ["branches", "departments", "cities"];

const VERSION_FIELD_BY_COLLECTION = {
  users: "usersVersion",
  branches: "branchesVersion",
  departments: "departmentsVersion",
  cities: "citiesVersion",
};

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
  return isAr
    ? { title: `تم تحديث ${name.ar}`, body: `تم تحديث حالة ${name.ar}.` }
    : { title: `${name.en} updated`, body: `Your ${name.en} has been updated.` };
}

function addStatusToBody(body, afterData, lang) {
  const isAr = (lang || "ar").toLowerCase().startsWith("ar");
  let statusText = null;
  if (typeof afterData?.status === "string" && afterData.status.trim()) {
    statusText = afterData.status.trim();
  } else if (typeof afterData?.approved === "boolean") {
    statusText = afterData.approved ? (isAr ? "مقبول" : "approved") : (isAr ? "مرفوض" : "rejected");
  }
  if (!statusText) return body;
  if (isAr) return `${body.replace(/\.?$/, "")} (الحالة: ${statusText}).`;
  return `${body.replace(/\.?$/, "")} (status: ${statusText}).`;
}

exports.generateCustomToken = onCall({ region: "europe-west3" }, async (request) => {
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

async function notifyAdminsOnCreate(collection, docData) {
  const companyId = docData?.companyId;
  const requestId = docData?.id;
  if (!companyId) return;
  const adminsSnap = await db
    .collection("users")
    .where("companyId", "==", companyId)
    .where("role", "==", "admin")
    .get();
  if (adminsSnap.empty) return;
  await Promise.all(
    adminsSnap.docs.map(async (adminDoc) => {
      const adminData = adminDoc.data() || {};
      const lang = adminData.languageCode || "ar";
      const { title, body } = localize(collection, "create", lang);
      const tokens = adminData.deviceTokens || [];
      await sendToTokens(tokens, title, body, {
        type: collection,
        id: String(requestId || ""),
        companyId: String(companyId || ""),
        role: "admin",
        action: "create",
      });
    })
  );
}

async function notifyOwnerOnUpdate(collection, afterData) {
  const userId = afterData?.userId;
  const companyId = afterData?.companyId;
  const requestId = afterData?.id;
  if (!userId) return;
  const userSnap = await db.collection("users").doc(userId).get();
  if (!userSnap.exists) return;
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

async function bumpVersion(companyId, collectionName) {
  if (!companyId) return;
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
  } catch (e) {
    console.error("[version] bump error:", e);
  }
}

function topicName(companyId, branchId) {
  const norm = (s) => String(s || "").replace(/[^A-Za-z0-9_-]/g, "_");
  return branchId ? `c_${norm(companyId)}_b_${norm(branchId)}` : `c_${norm(companyId)}_all`;
}

function toSet(arr) {
  return new Set((Array.isArray(arr) ? arr : []).filter(Boolean));
}
function diff(aSet, bSet) {
  const out = [];
  for (const v of aSet) if (!bSet.has(v)) out.push(v);
  return out;
}

/* Requests: on create notify admins; on update notify owner */
for (const col of REQUEST_COLLECTIONS) {
  exports[`on_${col}_created_notify_admins`] = onDocumentCreated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const data = event.data?.data?.() || {};
      try { await notifyAdminsOnCreate(col, data); } catch (e) { console.error(`[${col}] create notify admins error:`, e); }
    }
  );
  exports[`on_${col}_updated_notify_owner`] = onDocumentUpdated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const after = event.data?.after?.data?.() || {};
      try { await notifyOwnerOnUpdate(col, after); } catch (e) { console.error(`[${col}] update notify owner error:`, e); }
    }
  );
}

/* Versioned collections (except users handled below) */
for (const col of VERSIONED_COLLECTIONS) {
  exports[`on_${col}_created_bump_version`] = onDocumentCreated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const data = event.data?.data?.() || {};
      try { await bumpVersion(data.companyId, col); } catch (e) { console.error(`[${col}] version bump on create error:`, e); }
    }
  );
  exports[`on_${col}_updated_bump_version`] = onDocumentUpdated(
    { region: REGION, document: `${col}/{docId}` },
    async (event) => {
      const after = event.data?.after?.data?.() || {};
      try { await bumpVersion(after.companyId, col); } catch (e) { console.error(`[${col}] version bump on update error:`, e); }
    }
  );
}

/* Users: bump version + topic sync on create and update */
exports.on_users_created_bump_and_topics = onDocumentCreated(
  { region: REGION, document: `users/{userId}` },
  async (event) => {
    const after = event.data?.data?.() || {};
    const companyId = after.companyId;
    try {
      await bumpVersion(companyId, "users");
    } catch (e) {
      console.error(`[users] version bump on create error:`, e);
    }
    try {
      const tokens = (Array.isArray(after.deviceTokens) ? after.deviceTokens : []).filter(Boolean);
      if (!companyId || tokens.length === 0) return;
      await messaging.subscribeToTopic(tokens, topicName(companyId, null));
      if (after.branchId) {
        await messaging.subscribeToTopic(tokens, topicName(companyId, after.branchId));
      }
    } catch (e) {
      console.error(`[users] topic subscribe on create error:`, e);
    }
  }
);

exports.on_users_updated_bump_and_topics = onDocumentUpdated(
  { region: REGION, document: `users/{userId}` },
  async (event) => {
    const before = event.data?.before?.data?.() || {};
    const after = event.data?.after?.data?.() || {};
    const companyId = after.companyId;
    try {
      await bumpVersion(companyId, "users");
    } catch (e) {
      console.error(`[users] version bump on update error:`, e);
    }

    try {
      if (!companyId) return;

      const beforeTokens = toSet(before.deviceTokens);
      const afterTokens = toSet(after.deviceTokens);

      const addedTokens = diff(afterTokens, beforeTokens);
      const removedTokens = diff(beforeTokens, afterTokens);

      if (addedTokens.length > 0) {
        await messaging.subscribeToTopic(addedTokens, topicName(companyId, null));
        if (after.branchId) {
          await messaging.subscribeToTopic(addedTokens, topicName(companyId, after.branchId));
        }
      }

      if (removedTokens.length > 0) {
        await messaging.unsubscribeFromTopic(removedTokens, topicName(companyId, null));
        if (before.branchId) {
          await messaging.unsubscribeFromTopic(removedTokens, topicName(companyId, before.branchId));
        }
      }

      const beforeBranch = before.branchId || null;
      const afterBranch = after.branchId || null;

      if (beforeBranch !== afterBranch) {
        const currentTokens = Array.from(afterTokens);
        if (beforeBranch && currentTokens.length > 0) {
          await messaging.unsubscribeFromTopic(currentTokens, topicName(companyId, beforeBranch));
        }
        if (afterBranch && currentTokens.length > 0) {
          await messaging.subscribeToTopic(currentTokens, topicName(companyId, afterBranch));
        }
      }
    } catch (e) {
      console.error(`[users] topic sync on update error:`, e);
    }
  }
);

/* Broadcast general notification: to company topic or branch topic + write per-user docs */
exports.broadcastGeneralNotification = onCall({ region: REGION }, async (request) => {
  const { title, body, companyId, branchId } = request?.data || {};
  if (!companyId || !title || !body) throw new Error("Missing required fields: companyId, title, body");

  const topic = topicName(companyId, branchId);

  let fcmSuccess = 0, fcmFailure = 0;
  try {
    await messaging.send({
      topic,
      notification: { title: String(title), body: String(body) },
      data: {
        type: "GENERAL",
        action: "broadcast",
        companyId: String(companyId),
        ...(branchId ? { branchId: String(branchId) } : {}),
      },
      apns: { payload: { aps: { sound: "default" } } },
      android: { notification: { sound: "default" } },
    });
    fcmSuccess = 1;
  } catch (e) {
    console.error("[broadcast] topic send failed:", e);
    fcmFailure = 1;
  }

  let q = db.collection("users").where("companyId", "==", companyId);
  if (branchId) q = q.where("branchId", "==", branchId);

  const usersSnap = await q.get();
  if (usersSnap.empty) {
    return { topic, usersCount: 0, notificationsCreated: 0, fcmSuccess, fcmFailure };
  }

  const writer = db.bulkWriter();
  let notificationsCreated = 0;

  for (const doc of usersSnap.docs) {
    const userId = doc.id;
    const notifRef = db.collection("users").doc(userId).collection("notifications").doc();
    writer.set(notifRef, {
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
      data: {
        id: notifRef.id,
        type: "bulk",
      },
      markAsRead: false,
      notification: {
        title: String(title),
        body: String(body),
        image: null,
      },
    });
    notificationsCreated++;
  }
  await writer.close();

  return {
    topic,
    usersCount: usersSnap.size,
    notificationsCreated,
    fcmSuccess,
    fcmFailure,
  };
});

/* Optional admin-create user callable preserved */
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
