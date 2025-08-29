import 'package:shared/shared.dart';

class DebtDetalisScreen extends StatefulWidget {
  final SalaryAdvanceModel salaryAdvance;

  const DebtDetalisScreen({
    super.key,
    required this.salaryAdvance,
  });

  @override
  State<DebtDetalisScreen> createState() => _DebtDetalisScreenState();
}

class _DebtDetalisScreenState extends State<DebtDetalisScreen> {
  SalaryAdvanceModel get _salaryAdvance => widget.salaryAdvance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.debtRequest)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          OrderHeader(
            icon: MyIcons.debtYellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${context.appLocalization.debtValue} : ${_salaryAdvance.amount} ${context.currency}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "${context.appLocalization.orderDate} : ${_salaryAdvance.createdAt.defaultFormat}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  "${context.appLocalization.dateAndTimeRequest} : ${_salaryAdvance.createdAt.defaultFormat}  - ${_salaryAdvance.createdAt.hourFormat}",
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
            request: RequestModel(
              createdAt: DateTime.now(),
            ),
          ),
        ],
      ),
    );
  }
}
