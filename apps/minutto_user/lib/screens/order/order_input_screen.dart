import 'package:shared/shared.dart';

class OrderInputScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  const OrderInputScreen({super.key, required this.orderTypeEnum});

  @override
  State<OrderInputScreen> createState() => _OrderInputScreenState();
}

class _OrderInputScreenState extends State<OrderInputScreen> {
  String _getTitle() {
    switch (widget.orderTypeEnum) {
      case OrderTypeEnum.overtime:
        return context.appLocalization.overtime;
      case OrderTypeEnum.leave:
        return context.appLocalization.leaveRequest;
      case OrderTypeEnum.vacation:
        return context.appLocalization.vacationRequest;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_getTitle())),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {},
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          if (widget.orderTypeEnum != OrderTypeEnum.overtime)
            WidgetTitle(
              title: context.appLocalization.requestType,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'مرضية', child: Text('مرضية')),
                  DropdownMenuItem(
                    value: 'حالة وفاة',
                    child: Text('حالة وفاة'),
                  ),
                ],
                onChanged: (value) {},
                value: null,
              ),
            ),
          if (widget.orderTypeEnum == OrderTypeEnum.vacation)
            Row(
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.fromDate,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.toDate,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
              ],
            ),
          if (widget.orderTypeEnum != OrderTypeEnum.vacation)
            WidgetTitle(
              title: widget.orderTypeEnum == OrderTypeEnum.overtime
                  ? context.appLocalization.overtimeHistory
                  : context.appLocalization.leaveDate,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: CustomTextField.text(onChanged: (value) {}),
            ),
          if (widget.orderTypeEnum != OrderTypeEnum.vacation)
            Row(
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.fromHour,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.toHour,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
              ],
            ),
          const OrderForm(),
        ],
      ),
    );
  }
}
