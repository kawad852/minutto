import 'package:shared/shared.dart';

class RequestDetalisScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  const RequestDetalisScreen({super.key, required this.orderTypeEnum});

  @override
  State<RequestDetalisScreen> createState() => _RequestDetalisScreenState();
}

class _RequestDetalisScreenState extends State<RequestDetalisScreen> {
  (String, String, String) _getOrderInfo(BuildContext context) {
    switch (widget.orderTypeEnum) {
      case OrderTypeEnum.overtime:
        return (
          context.appLocalization.overtimeRequest,
          MyIcons.money,
          context.appLocalization.workHistory,
        );
      case OrderTypeEnum.leave:
        return (
          context.appLocalization.leaveRequest,
          MyIcons.clockIcon,
          context.appLocalization.leaveDate,
        );
      case OrderTypeEnum.vacation:
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
                if (widget.orderTypeEnum != OrderTypeEnum.overtime)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "${context.appLocalization.requestType} : مرضية",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                if (widget.orderTypeEnum != OrderTypeEnum.vacation)
                  Text(
                    "${order.$3} : 04.04.2023",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
                  ),
                if (widget.orderTypeEnum != OrderTypeEnum.vacation)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${context.appLocalization.fromHour} : 04:00 PM",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "${context.appLocalization.toHour} : 04:00 PM",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (widget.orderTypeEnum == OrderTypeEnum.vacation)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${context.appLocalization.fromDate} : 04.04.2023",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "${context.appLocalization.toDate} : 04.04.2023",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: context.colorPalette.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                Text(
                  "${context.appLocalization.dateAndTimeRequest} : 04.04.2023  - 12:33 PM",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
         const OrderDetalisCard(),
        ],
      ),
    );
  }
}
