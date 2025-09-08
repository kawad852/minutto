import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.reports)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          ReportDate(
            onChanged: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.appLocalization.attendance,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.navigate((context) => const AttendanceScreen());
                  },
                  child: CustomSvg(MyIcons.arrowLeft),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 171,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: context.colorPalette.greyF7F,
              borderRadius: BorderRadius.circular(kRadiusSecondary),
            ),
            child: Column(
              spacing: 12,
              children: [
                Row(
                  children: [
                    ReportTile(
                      title: context.appLocalization.attendance,
                      value: "23",
                      color: context.colorPalette.green47A,
                      unit: context.appLocalization.day,
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
                      title: context.appLocalization.delay,
                      value: "7",
                      color: context.colorPalette.yellowF69,
                      unit: context.appLocalization.hour,
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
                      title: context.appLocalization.absence,
                      value: "2",
                      color: context.colorPalette.redDF0,
                      unit: context.appLocalization.day,
                    ),
                  ],
                ),
                Row(
                  children: [
                    ReportTile(
                      title: context.appLocalization.delayDiscount,
                      value: "15.31",
                      color: context.colorPalette.yellowF69,
                      unit: "دينار",
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
                      title: context.appLocalization.absenceDiscount,
                      value: "20.00",
                      color: context.colorPalette.redDF0,
                      unit: "دينار",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              context.appLocalization.annualLeaves,
              style: TextStyle(
                color: context.colorPalette.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LeavesCard(
            total: "14",
            taken: "5",
            rest: "9",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              context.appLocalization.monthlyLeaves,
              style: TextStyle(
                color: context.colorPalette.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LeavesCard(
            total: "14",
            taken: "5",
            rest: "9",
            isMonthly: true,
          ),
        ],
      ),
    );
  }
}
