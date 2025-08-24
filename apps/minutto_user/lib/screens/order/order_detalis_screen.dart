import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class OrderDetalisScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  const OrderDetalisScreen({super.key, required this.orderTypeEnum});

  @override
  State<OrderDetalisScreen> createState() => _OrderDetalisScreenState();
}

class _OrderDetalisScreenState extends State<OrderDetalisScreen> {
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
          SizedBox(
            height: 230,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SharedContainer(
                    height: 194,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 6,
                    ),
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
                ),
                Positioned(top: 0, child: CustomSvg(order.$2, width: 65)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: WidgetTitle(
              title: context.appLocalization.notes,
              child: SharedContainer(
                child: Text(
                  "هذا النص مثال لنص يمكن ان يستبدل",
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.attachedDocuments,
            child: SharedContainer(
              child: Text(
                "لا يوجد",
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          CustomLine(
            isEnd: true,
            color: context.colorPalette.black,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: WidgetTitle(
              title: context.appLocalization.officialReplied,
              child: SharedContainer(
                child: Text(
                  "مقبول",
                  style: TextStyle(
                    color: context.colorPalette.green47A,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.officialNotes,
            child: SharedContainer(
              child: Text(
                "لا يوجد",
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
