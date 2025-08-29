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

  (String label, String icon) _info(BuildContext context) {
    switch (collection) {
      case MyCollections.overtimes:
        return (context.appLocalization.overtimeRequest, MyIcons.money);
      default:
        if (isVacation) {
          return (context.appLocalization.vacationRequest, MyIcons.umbrella);
        }
        return (context.appLocalization.leaveRequest, MyIcons.clockIcon);
    }
  }

  @override
  Widget build(BuildContext context) {
    final info = _info(context);
    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => RequestDetailsScreen(
            request: request,
            collection: collection,
          ),
        );
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
            CustomSvg(info.$2),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    info.$1,

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
            if (request.reason != null)
              Expanded(
                child: Text(
                  LeaveReason.label(context, request.reason!),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Text(
              StatusEnum.label(context, request.status),
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
