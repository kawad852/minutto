import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class AttendanceManagementScreen extends StatefulWidget {
  const AttendanceManagementScreen({super.key});

  @override
  State<AttendanceManagementScreen> createState() => _AttendanceManagementScreenState();
}

class _AttendanceManagementScreenState extends State<AttendanceManagementScreen> {
  String? _selectedBranchId;
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _selectedDate = now;
  }

  @override
  Widget build(BuildContext context) {
    final users = MyStorage.users.where((e) {
      if (_selectedBranchId == null) return true;
      return e.branchId == _selectedBranchId;
    }).toList();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text(context.appLocalization.attendanceAndDepartureReport),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: const CustomSvg(MyIcons.searchIcon),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BranchCalendarWidget(
              branchId: _selectedBranchId,
              date: _selectedDate,
              onBranchChanged: (value) {
                setState(() {
                  _selectedBranchId = value;
                });
              },
              onDateChanged: (value) {
                setState(() {
                  _selectedDate = value;
                });
              },
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return EmployeeAttendanceCard(
                    key: ValueKey(user.id),
                    user: user,
                    date: _selectedDate,
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
