import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class OrderScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  const OrderScreen({super.key, required this.orderTypeEnum});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  (String, String) _getOrderInfo(BuildContext context) {
    switch (widget.orderTypeEnum) {
      case OrderTypeEnum.overtime:
        return (context.appLocalization.overtimeRequests, context.appLocalization.newOrder);
      case OrderTypeEnum.leave:
        return (context.appLocalization.myLeave, context.appLocalization.leaveRequest);
      case OrderTypeEnum.vacation:
        return (context.appLocalization.myVacation, context.appLocalization.vacationRequest);
    }
  }

  @override
  Widget build(BuildContext context) {
    final order = _getOrderInfo(context);
    return Scaffold(
      appBar: AppBar(title: Text(order.$1)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            context.navigate((context) => LeaveInputScreen(orderTypeEnum: widget.orderTypeEnum));
          },
          child: Text(
            order.$2,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (context, index) {
          return OrderCard(orderTypeEnum: widget.orderTypeEnum);
        },
      ),
    );
  }
}
