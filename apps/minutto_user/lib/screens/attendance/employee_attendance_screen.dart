import 'package:shared/shared.dart';

class EmployeeAttendanceScreen extends StatefulWidget {
  const EmployeeAttendanceScreen({super.key});

  @override
  State<EmployeeAttendanceScreen> createState() => _EmployeeAttendanceScreenState();
}

class _EmployeeAttendanceScreenState extends State<EmployeeAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text("صهيب البكار"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CustomSvg(MyIcons.searchIcon),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReportDate(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 13),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return AttendanceCard(
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
