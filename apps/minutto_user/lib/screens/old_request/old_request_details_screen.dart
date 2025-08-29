import 'package:shared/shared.dart';

class OldRequestDetailsScreen extends StatefulWidget {
  final String collection;
  final RequestModel request;

  const OldRequestDetailsScreen({
    super.key,
    required this.request,
    required this.collection,
  });

  @override
  State<OldRequestDetailsScreen> createState() => _OldRequestDetailsScreenState();
}

class _OldRequestDetailsScreenState extends State<OldRequestDetailsScreen> {
  RequestModel get _request => widget.request;
  String get _collection => widget.collection;

  TextStyle get style => TextStyle(
    color: context.colorPalette.black,
    fontSize: 16,
  );

  (String, String, String) _getRequestInfo(BuildContext context) {
    switch (_collection) {
      case MyCollections.overtimes:
        return (
          context.appLocalization.overtimeRequest,
          MyIcons.money,
          context.appLocalization.workHistory,
        );
      default:
        if (_request.type == LeaveRequestType.leave.value) {
          return (
            context.appLocalization.leaveRequest,
            MyIcons.clockIcon,
            context.appLocalization.leaveDate,
          );
        }
        return (context.appLocalization.vacationRequest, MyIcons.umbrella, "");
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = _getRequestInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          request.$1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          RequestHeader(
            icon: request.$2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_request.reason != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "${context.appLocalization.requestType} : ${LeaveReason.label(context, _request.reason!)}",
                      overflow: TextOverflow.ellipsis,
                      style: style,
                    ),
                  ),
                if (_request.date != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "${request.$3} : ${_request.date!.defaultFormat}",
                      overflow: TextOverflow.ellipsis,
                      style: style,
                    ),
                  ),
                ListBody(
                  children: [
                    if (_request.fromHour != null || _request.toHour != null) ...[
                      Text(
                        "${context.appLocalization.fromHour} : ${_request.fromHour ?? _request.fromDate!.hourFormat}",
                        overflow: TextOverflow.ellipsis,
                        style: style,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${context.appLocalization.toHour} : ${_request.toHour ?? _request.toDate!.hourFormat}",
                        overflow: TextOverflow.ellipsis,
                        style: style,
                      ),
                    ],
                    if (_request.fromDate != null && _request.toDate != null) ...[
                      Text(
                        "${context.appLocalization.fromDate} : ${_request.fromDate!.defaultFormat}",
                        overflow: TextOverflow.ellipsis,
                        style: style,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${context.appLocalization.toDate} : ${_request.toDate!.defaultFormat}",
                        overflow: TextOverflow.ellipsis,
                        style: style,
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "${context.appLocalization.dateAndTimeRequest} : ${_request.createdAt.defaultFormat} - ${_request.createdAt.hourFormat}",
                  overflow: TextOverflow.ellipsis,
                  style: style,
                ),
              ],
            ),
          ),
          RequestDetailsCard(
            request: _request,
          ),
        ],
      ),
    );
  }
}
