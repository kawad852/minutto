import 'dart:developer';
import 'dart:io' show Platform;

import 'package:shared/shared.dart';

import 'notification_route_handler.dart';

class CloudMessagingService {
  final BuildContext context;

  CloudMessagingService(this.context);

  void requestPermission(BuildContext context) async {
    await FirebaseMessaging.instance
        .requestPermission()
        .then((value) async {
          if (Platform.isIOS) {
            await FirebaseMessaging.instance.getAPNSToken();
          }
        })
        .then((onValue) {
          if (context.mounted) {
            _init(context);
          }
        });
  }

  Future<void> _init(BuildContext context) async {
    await LocalNotificationsService(context).initialize();

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
      _handleBackgroundMessage(initialMessage);
    }

    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
  }

  void _handleLocalMessage(BuildContext context, RemoteMessage? message) {
    final data = message?.notification;
    log(
      "ReceivedNotification::\nType:: ForegroundMessage\nTitle:: ${data?.title}\nBody:: ${data?.body}\nData:: ${message?.data}",
    );
    LocalNotificationsService(context).display(context, message!);
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    final data = message.notification;
    debugPrint(
      "ReceivedNotification::\nType:: Background\nTitle:: ${data?.title}\nBody:: ${data?.body}\nData:: ${message.data}",
    );
    final dataJson = message.data;
    final id = dataJson["id"];
    final type = dataJson["type"];
    NotificationRouteHandler.toggle(context, id: id, type: type);
  }

  void subscribeToTopic(String value) {
    FirebaseMessaging.instance.subscribeToTopic(value);
  }

  void unSubscribeToTopic(String value) {
    FirebaseMessaging.instance.unsubscribeFromTopic(value);
  }
}
