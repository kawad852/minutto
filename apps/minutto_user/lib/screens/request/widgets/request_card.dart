import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestCard extends StatelessWidget {
  final RequestModel request;
  final String collection;

  const RequestCard({
    super.key,
    required this.request,
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    final statusInfo = StatusEnum.info(context, request.status);
    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => RequestDetailsScreen(
            collection: collection,
            request: request,
          ),
        );
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
            if (request.fromDate != null && request.toDate != null)
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
                        value:
                            "${request.fromDate!.defaultFormat} - ${request.toDate!.defaultFormat}",
                      ),
                    ),
                    Expanded(
                      child: RequestInfo(
                        title: context.appLocalization.totalDays,
                        value:
                            "${request.toDate!.difference(request.fromDate!).inDays} ${context.appLocalization.day}",
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
                  statusInfo.$1,
                  style: TextStyle(
                    color: statusInfo.$2,
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
