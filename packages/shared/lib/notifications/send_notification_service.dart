import 'package:flutter/services.dart' show rootBundle;
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:http/http.dart' as http;

import '../shared.dart';

class SendNotificationService {
  static Future<void> send(
    BuildContext context, {
    required NotificationModel notificationModel,
    bool targetAll = false,
  }) async {
    final accessToken = await _getAccessToken();

    final notification = notificationModel.notification!;
    final data = notificationModel.data;
    var json = <String, dynamic>{
      "notification": notification.toJson(),
      "data": data?.toJson(),
      if (targetAll) "topic": "all",
      if (!targetAll) "token": notificationModel.token!,
    };

    final result = await http.post(
      Uri.parse('https://fcm.googleapis.com/v1/projects/imtithal-app/messages:send'),
      headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer $accessToken'},
      body: jsonEncode({
        "message": {
          ...json,
          "apns": {
            "payload": {
              "aps": {"sound": "default"},
            },
          },
        },
      }),
    );
    if (result.statusCode == 200) {
      final documentREF = FirebaseFirestore.instance.collection("notifications").doc();
      json["id"] = documentREF.id;
      json["createdAt"] = FieldValue.serverTimestamp();
      await documentREF.set(json);
      debugPrint("Notification Sent Successfully!!");
    } else {
      debugPrint("NotificationStatus Failed:: ${result.body} ${result.statusCode}");
    }
  }

  static Future<String> _getAccessToken() async {
    // Load the service account JSON from the assets folder
    final String serviceAccountString = await rootBundle.loadString(
      'assets/serviceAccountJsonKey.json',
    );

    // Parse the JSON string into a Map
    final serviceAccountJson = jsonDecode(serviceAccountString);

    List<String> scopes = [
      "https://www.googleapis.com/auth/userinfo.email",
      "https://www.googleapis.com/auth/firebase.database",
      "https://www.googleapis.com/auth/firebase.messaging",
    ];

    http.Client client = await auth.clientViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
      scopes,
    );

    // Obtain the access token
    auth.AccessCredentials credentials = await auth.obtainAccessCredentialsViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
      scopes,
      client,
    );

    // Close the HTTP client
    client.close();

    // Return the access token
    return credentials.accessToken.data;
  }
}
