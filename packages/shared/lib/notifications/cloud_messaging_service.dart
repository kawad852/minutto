import 'dart:developer';
import 'dart:io' show Platform;

import 'package:shared/shared.dart';

class CloudMessagingService {
  final BuildContext context;

  CloudMessagingService(this.context);

  void requestPermission(
    BuildContext context, {
    required Function(BuildContext context, Map<dynamic, dynamic>?) onCall,
  }) async {
    await FirebaseMessaging.instance
        .requestPermission()
        .then((value) async {
          if (Platform.isIOS) {
            await FirebaseMessaging.instance.getAPNSToken();
          }
        })
        .then((onValue) {
          if (context.mounted) {
            _init(context, onCall: onCall);
          }
        });
  }

  Future<void> _init(
    BuildContext context, {
    required Function(BuildContext context, Map<dynamic, dynamic>?) onCall,
  }) async {
    await LocalNotificationsService(context).initialize(onCall: onCall);

    if (context.mounted) {
      context.userProvider.updateDeviceToken(context);
    }

    FirebaseMessaging.onMessage.listen((event) {
      if (context.mounted) {
        _handleLocalMessage(context, event);
      }
    });

    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleBackgroundMessage(initialMessage, onCall: onCall);
    }

    FirebaseMessaging.onMessageOpenedApp.listen((m) {
      _handleBackgroundMessage(m, onCall: onCall);
    });
  }

  void _handleLocalMessage(BuildContext context, RemoteMessage? message) {
    final data = message?.notification;
    log(
      "ReceivedNotification::\nType:: ForegroundMessage\nTitle:: ${data?.title}\nBody:: ${data?.body}\nData:: ${message?.data}",
    );
    LocalNotificationsService(context).display(context, message!);
  }

  void _handleBackgroundMessage(
    RemoteMessage message, {
    required Function(BuildContext context, Map<dynamic, dynamic>?) onCall,
  }) {
    final data = message.notification;
    debugPrint(
      "ReceivedNotification::\nType:: Background\nTitle:: ${data?.title}\nBody:: ${data?.body}\nData:: ${message.data}",
    );
    final dataJson = message.data;
    onCall(rootNavigatorKey.currentContext!, dataJson);
  }

  void subscribeToTopic(String value) {
    FirebaseMessaging.instance.subscribeToTopic(value);
  }

  void unSubscribeToTopic(String value) {
    FirebaseMessaging.instance.unsubscribeFromTopic(value);
  }
}
