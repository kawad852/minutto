import 'package:shared/shared.dart';

class RequestDetailsScreen extends StatefulWidget {
  final String collection;
  final RequestModel request;

  const RequestDetailsScreen({
    super.key,
    required this.request,
    required this.collection,
  });

  @override
  State<RequestDetailsScreen> createState() => _RequestDetailsScreenState();
}

class _RequestDetailsScreenState extends State<RequestDetailsScreen> {
  RequestModel get _request => widget.request;
  String get _collection => widget.collection;

  (String, String, String) _getOrderInfo(BuildContext context) {
    switch (_collection) {
      case MyCollections.overtimes:
        return (
          context.appLocalization.overtimeRequest,
          MyIcons.money,
          context.appLocalization.workHistory,
        );
      case MyCollections.leaves:
        return (
          context.appLocalization.leaveRequest,
          MyIcons.clockIcon,
          context.appLocalization.leaveDate,
        );
      default:
        return (context.appLocalization.vacationRequest, MyIcons.umbrella, "");
    }
  }

  @override
  Widget build(BuildContext context) {
    final order = _getOrderInfo(context);
    return Scaffold(
      appBar: AppBar(title: Text(order.$1)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          OrderHeader(
            headerHeight: 230,
            containerHeight: 194,
            icon: order.$2,
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
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                if (_request.date != null)
                  Text(
                    "${order.$3} : ${_request.date!.dotFormat}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
                  ),
                if (_request.fromDate != null && _request.toDate != null) ...[
                  Builder(
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ListBody(
                          children: [
                            Text(
                              "${context.appLocalization.fromHour} : ${_request.fromDate!.hour}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "${context.appLocalization.toHour} : ${_request.toDate!.hour}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "${context.appLocalization.fromDate} : ${_request.fromDate!.dotFormat}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "${context.appLocalization.toDate} : ${_request.toDate!.dotFormat}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
                Text(
                  "${context.appLocalization.dateAndTimeRequest} : ${_request.createdAt.dotFormat}  - ${_request.createdAt.hour}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          OrderDetailsCard(
            request: _request,
          ),
        ],
      ),
    );
  }
}
