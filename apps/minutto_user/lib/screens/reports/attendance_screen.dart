import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.attendanceAndDeparture),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          ReportDate(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              spacing: 6,
              children: [
                CustomCircle(color: context.colorPalette.green64B),
                Expanded(
                  child: Text(
                    context.appLocalization.disciplined,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CustomCircle(color: context.colorPalette.yellowF69),
                Expanded(
                  flex: 2,
                  child: Text(
                    context.appLocalization.delayWithoutDiscount,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CustomCircle(color: context.colorPalette.redDF0),
                Expanded(
                  child: Text(
                    context.appLocalization.delayDiscount,
                    style: TextStyle(
                      color: context.colorPalette.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 13),
            itemCount: 6,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AttendanceCard();
            },
          ),
        ],
      ),
    );
  }
}
