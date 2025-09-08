import 'package:minutto_user/helper/notification_route_handler.dart';
import 'package:shared/shared.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationModel;

  const NotificationCard({
    super.key,
    required this.notificationModel,
  });

  @override
  Widget build(BuildContext context) {
    final notification = notificationModel.notification!;
    final data = notificationModel.data;
    final borderRadius = BorderRadius.circular(10);
    return InkWell(
      onTap: data != null
          ? () {
              NotificationRouteHandler.toggle(
                context,
                extra: data.toJson(),
              );
            }
          : null,
      borderRadius: borderRadius,
      child: Material(
        type: MaterialType.transparency,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        child: Row(
          spacing: 10,
          children: [
            CustomSvg(MyIcons.umbrella, width: 50),
            Expanded(
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notification.title!,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    notification.body!,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    notificationModel.createdAt!.defaultFormat,
                    style: TextStyle(
                      color: context.colorPalette.grey8F8,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
