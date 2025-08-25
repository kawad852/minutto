import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class LeavesCard extends StatelessWidget {
  final String total, taken, rest;
  final bool isMonthly;
  const LeavesCard({
    super.key,
    required this.total,
    required this.taken,
    required this.rest,
    this.isMonthly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF7F,
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        children: [
          ReportTile(
            title: context.appLocalization.total,
            value: total,
            color: context.colorPalette.green47A,
            unit: isMonthly
                ? context.appLocalization.hour
                : context.appLocalization.day,
          ),
          SizedBox(
            height: 55,
            child: CustomLine(
              isVertical: true,
              isEnd: true,
              padding: EdgeInsets.zero,
              color: context.colorPalette.black,
            ),
          ),
          ReportTile(
            title: context.appLocalization.taken,
            value: taken,
            unit: isMonthly
                ? context.appLocalization.hour
                : context.appLocalization.day,
          ),
          SizedBox(
            height: 55,
            child: CustomLine(
              isVertical: true,
              isEnd: true,
              padding: EdgeInsets.zero,
              color: context.colorPalette.black,
            ),
          ),
          ReportTile(
            title: context.appLocalization.residual,
            value: rest,
            unit: isMonthly
                ? context.appLocalization.hour
                : context.appLocalization.day,
          ),
        ],
      ),
    );
  }
}
