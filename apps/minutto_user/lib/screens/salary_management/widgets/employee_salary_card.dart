import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class EmployeeSalaryCard extends StatelessWidget {
  const EmployeeSalaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kRadiusSecondary),
      child: ExpansionTile(
        initiallyExpanded: false,
        backgroundColor: context.colorPalette.greyF7F,
        collapsedBackgroundColor: context.colorPalette.greyF7F,
        collapsedShape: BorderDirectional(
          start: BorderSide(color: context.colorPalette.blueB2D, width: 8),
        ),
        shape: BorderDirectional(
          start: BorderSide(color: context.colorPalette.blueB2D, width: 8),
        ),
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        title: Row(
          children: [
            Expanded(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${context.appLocalization.salaryReport} ابريل 2021",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "${context.appLocalization.from} 01.03.2023 ${context.appLocalization.to} 01.03.2023",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.grey8C8,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "321 JOD",
              style: TextStyle(
                color: context.colorPalette.green19B,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        children: [
          SalaryInfo(
            title: context.appLocalization.basicSalary,
            value: "300.00 د.أ",
          ),
          SalaryInfo(
            title: context.appLocalization.incentivesAndRewards,
            value: "300.00 د.أ",
          ),
          SalaryInfo(
            title: context.appLocalization.fuelAllowance,
            value: "300.00 د.أ",
          ),
          SalaryInfo(
            title: context.appLocalization.absenceDiscount,
            value: "300.00 د.أ",
            valueColor: context.colorPalette.redF95,
          ),
          SalaryInfo(
            title: context.appLocalization.delayDiscount,
            value: "300.00 د.أ",
            valueColor: context.colorPalette.redF95,
          ),
          SalaryInfo(
            title: context.appLocalization.advances,
            value: "300.00 د.أ",
            valueColor: context.colorPalette.redF95,
          ),
          Divider(
            color: context.colorPalette.greyEAE,
          ),
          SalaryInfo(
            title: context.appLocalization.total,
            value: "300.00 د.أ",
            titleColor: context.colorPalette.black,
          ),
        ],
      ),
    );
  }
}
