import 'package:shared/shared.dart';

class AllowanceBubble extends StatelessWidget {
  const AllowanceBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "${context.appLocalization.requestType} : بدل مواصلات",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "${context.appLocalization.expenseAllowanceDate} : 03.03.2023",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.colorPalette.black, fontSize: 16),
          ),
        ),
        Text(
          "${context.appLocalization.dateAndTimeRequest} : 04.04.2023  - 12:33 PM",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Text(
          "${context.appLocalization.allowanceValue} : 50 دينار",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
      ],
    );
  }
}
