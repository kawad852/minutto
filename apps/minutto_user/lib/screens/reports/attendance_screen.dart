import 'package:minutto_user/minutto_user.dart';
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
          ReportDate(
            onChanged: (value) {},
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 13),
            itemCount: 6,
            padding: const EdgeInsets.symmetric(vertical: 15),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AttendanceCard(
                onTap: () {
                  context.navigate((context) => const AttendanceInputScreen());
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
