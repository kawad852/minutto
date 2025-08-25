import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class SalaryTable extends StatelessWidget {
  const SalaryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      padding: const EdgeInsetsDirectional.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: context.colorPalette.greyFEF,
        border: Border.all(color: context.colorPalette.greyE1D),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TableText(context.appLocalization.basicSalary),
                TableText(context.appLocalization.incentivesAndRewards),
                TableText(context.appLocalization.fuelAllowance),
                TableText(context.appLocalization.absenceDiscount),
                TableText(context.appLocalization.delayDiscount),
                TableText(context.appLocalization.advances),
                TableText(
                  context.appLocalization.total,
                  color: context.colorPalette.green64B,
                  isEnd: true,
                ),
              ],
            ),
          ),
          CustomLine(isEnd: true, isVertical: true, padding: EdgeInsets.zero),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TableText("300.00 د.أ", isValue: true),
                TableText("20.00 د.أ", isValue: true),
                TableText("20.00 د.أ", isValue: true),
                TableText(
                  "20.00 د.أ",
                  color: context.colorPalette.redDF0,
                  isValue: true,
                ),
                TableText(
                  "20.00 د.أ",
                  color: context.colorPalette.redDF0,
                  isValue: true,
                ),
                TableText(
                  "20.00 د.أ",
                  color: context.colorPalette.yellowF69,
                  isValue: true,
                ),
                TableText(
                  "20.00 د.أ",
                  color: context.colorPalette.green64B,
                  isValue: true,
                  isEnd: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
