import 'package:shared/shared.dart';

class DebtDetalisScreen extends StatefulWidget {
  const DebtDetalisScreen({super.key});

  @override
  State<DebtDetalisScreen> createState() => _DebtDetalisScreenState();
}

class _DebtDetalisScreenState extends State<DebtDetalisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.debtRequest)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          OrderHeader(
            headerHeight: 160,
            containerHeight: 129,
            icon: MyIcons.debtYellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${context.appLocalization.debtValue} : 50.00د.أ",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "${context.appLocalization.orderDate} : 03.03.2023",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontSize: 16,
                    ),
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
