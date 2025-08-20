import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:shared/shared.dart';

import 'notification_route_handler.dart';

class LocalNotificationsService {
  final BuildContext context;

  LocalNotificationsService(this.context);

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_launcher'),
      iOS: DarwinInitializationSettings(
        //   requestSoundPermission: false,
        //   requestBadgePermission: false,
        //   requestAlertPermission: false,
      ),
    );
    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (message) {
        if (message.payload != null && message.payload!.isNotEmpty) {
          Map<String, dynamic> data = json.decode(message.payload!);
          final id = data["id"];
          final type = data["type"];
          NotificationRouteHandler.toggle(context, id: id, type: type);
        }
      },
    );
  }

  Future<BigPictureStyleInformation?> getImage(String? imageURL) async {
    if (imageURL == null) {
      return null;
    }
    final http.Response response = await http.get(Uri.parse(imageURL));
    BigPictureStyleInformation bigPictureStyleInformation = BigPictureStyleInformation(
      ByteArrayAndroidBitmap.fromBase64String(base64Encode(response.bodyBytes)),
      largeIcon: ByteArrayAndroidBitmap.fromBase64String(base64Encode(response.bodyBytes)),
    );
    return bigPictureStyleInformation;
  }

  //for notifications in foreground
  void display(BuildContext context, RemoteMessage message) async {
    try {
      final data = message.notification;
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'appchannel', // id
        'app channel', // title
        description: 'This channel is used for important notifications.',
        importance: Importance.max,
        playSound: true,
      );

      final styleInformation = await getImage(message.data['image']);

      final isFreshChat = message.data["source"] == "freshchat_user";
      await _flutterLocalNotificationsPlugin.show(
        id,
        data?.title,
        isFreshChat ? message.data["body"] : data?.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            importance: Importance.max,
            playSound: true,
            icon: 'ic_launcher',
            color: context.colorScheme.primary,
            largeIcon: const DrawableResourceAndroidBitmap('android_launcher'),
            styleInformation: styleInformation,
          ),
          iOS: const DarwinNotificationDetails(),
        ),
        payload: json.encode(message.data),
      );
    } on Exception catch (e) {
      log("Exception:: $e");
    }
  }
}
