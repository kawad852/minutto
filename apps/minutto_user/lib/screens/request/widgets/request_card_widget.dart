import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestCardWidget extends StatelessWidget {
  final String collection;
  final bool isVacation;
  final RequestModel request;

  const RequestCardWidget({
    super.key,
    required this.collection,
    required this.isVacation,
    required this.request,
  });

  String get _icon {
    switch (collection) {
      case MyCollections.overtimes:
        return MyIcons.money;
      default:
        if (isVacation) {
          return MyIcons.umbrella;
        }
        return MyIcons.clockIcon;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate((context) => RequestDetalisScreen(orderTypeEnum: OrderTypeEnum.leave));
      },
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: context.colorPalette.blueD8E,
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Row(
          children: [
            CustomSvg(_icon),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "طلب مغادرة",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    request.createdAt.dotFormat,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (isVacation)
              Expanded(
                child: Text(
                  request.reason,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Text(
              request.status,
              style: TextStyle(
                color: context.colorPalette.yellowF69,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
