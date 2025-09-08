import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RequestCard extends StatelessWidget {
  final RequestModel request;
  final String collection;
  final bool showActions;
  final ValueChanged<(String, String)> onAccept;

  const RequestCard({
    super.key,
    required this.request,
    required this.collection,
    this.showActions = false,
    required this.onAccept,
  });

  void _showActionDialog(BuildContext context, String status) {
    showDialog<(String, String)?>(
      context: context,
      builder: (context) {
        return ReplyDialog(
          status: status,
        );
      },
    ).then((value) {
      if (value != null) {
        onAccept(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final status = request.status;
    final isPending = status == StatusEnum.pending.value;
    final statusInfo = StatusEnum.info(context, status);
    final user = CacheService.instance.getUser(request.userId);
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
            if (showActions)
              Row(
                spacing: 15,
                children: [
                  BaseNetworkImage(
                    user.profileImage,
                    width: 32,
                    height: 32,
                    shape: BoxShape.circle,
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.name,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.black,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          user.jobTitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.blue475,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                const CustomSvg(MyIcons.note),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    "${context.appLocalization.requestDate}: ${request.createdAt.defaultFormat}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.blue091,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (!showActions && isPending)
                  EditButton(
                    onPressed: () {
                      context.navigate((context) {
                        return RequestInputScreen(
                          collection: collection,
                          request: request,
                        );
                      });
                    },
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  if (request.reason != null)
                    RequestInfo(
                      title: context.appLocalization.requestType,
                      value: LeaveReason.label(context, request.reason!),
                    ),
                  if (request.amount != 0)
                    RequestInfo(
                      title: context.appLocalization.amount,
                      value: request.amount.toStringAsFixed(2),
                    ),
                  if (request.date != null)
                    RequestInfo(
                      title: context.appLocalization.date,
                      value: request.date!.defaultFormat,
                    ),
                  if (request.fromHour != null && request.toHour != null)
                    RequestInfo(
                      title: context.appLocalization.time,
                      value: "${request.fromHour!} - ${request.toHour!}",
                      ltrOnly: true,
                    ),
                  if (request.fromDate != null && request.toDate != null)
                    RequestInfo(
                      title: context.appLocalization.date,
                      value:
                          "${request.fromDate!.defaultFormat} - ${request.toDate!.defaultFormat}",
                    ),
                  if (request.fromDate != null && request.toDate != null)
                    RequestInfo(
                      title: context.appLocalization.totalDays,
                      value:
                          "${request.toDate!.difference(request.fromDate!).inDays} ${context.appLocalization.day}",
                    ),
                ],
              ),
            ),
            if (!showActions)
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
            if (showActions && isPending) ...[
              Row(
                spacing: 20,
                children: [
                  RequestButton(
                    onPressed: () {
                      _showActionDialog(context, StatusEnum.accepted.value);
                    },
                    backgroundColor: context.colorPalette.green19B,
                    title: context.appLocalization.accept,
                  ),
                  RequestButton(
                    onPressed: () {
                      _showActionDialog(context, StatusEnum.rejected.value);
                    },
                    backgroundColor: context.colorPalette.redF95,
                    title: context.appLocalization.reject,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
