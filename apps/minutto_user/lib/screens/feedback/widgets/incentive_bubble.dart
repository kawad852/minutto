import 'package:shared/shared.dart';

class IncentiveBubble extends StatelessWidget {
  const IncentiveBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "${context.appLocalization.typeIncentive} : بدل عمل اضافي",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "${context.appLocalization.incentiveDate} : 03.03.2023",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.colorPalette.black, fontSize: 16),
          ),
        ),
        Text(
          "${context.appLocalization.incentive} : 13.6 JOD",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
        const SizedBox(height: 8),
        Text(
          "${context.appLocalization.dateRegistrationIncentive} : 03.03.2023",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
      ],
    );
  }
}
