import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestCard extends StatelessWidget {
  final RequestModel request;

  const RequestCard({
    super.key,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate((context) => const RequestDetailsScreen());
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 13,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CustomSvg(MyIcons.note),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    LeaveReason.label(context, request.reason!),
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 15,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                color: context.colorPalette.greyF9F,
                border: Border.all(color: context.colorPalette.greyEAE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: RequestInfo(
                      title: context.appLocalization.vacationDate,
                      value: "25 -27 أغسطس",
                    ),
                  ),
                  Expanded(
                    child: RequestInfo(
                      title: context.appLocalization.totalDays,
                      value: "يومين",
                    ),
                  ),
                ],
              ),
            ),
            Row(
              spacing: 10,
              children: [
                const CustomSvg(MyIcons.checkIcon),
                Text(
                  "جاري انتظار الرد",
                  style: TextStyle(
                    color: context.colorPalette.yellowF69,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
