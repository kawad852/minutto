import 'package:shared/shared.dart';

import '../../minutto_user.dart';

class UserAttendancesScreen extends StatefulWidget {
  final UserModel user;

  const UserAttendancesScreen({
    super.key,
    required this.user,
  });

  @override
  State<UserAttendancesScreen> createState() => _UserAttendancesScreenState();
}

class _UserAttendancesScreenState extends State<UserAttendancesScreen> {
  late DateTime _selectedDate;
  UserModel get _user => widget.user;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now().copyWith(day: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text(context.appLocalization.attendanceAndDepartureReport),
      ),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReportDate(
            onChanged: (value) {
              setState(() {
                _selectedDate = value;
              });
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: EmployeeAttendanceCard(
                user: _user,
                date: _selectedDate,
                endDate: _selectedDate.copyWith(month: _selectedDate.month + 1, day: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
