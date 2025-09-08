import 'package:minutto_user/shared.dart';
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
    final users = MyStorage.users.where((e) => e.branchId == _selectedBranchId).toList();
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: Text(context.appLocalization.attendanceAndDepartureReport),
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
            BranchEditor(
              value: _selectedBranchId,
              onChanged: (value) {
                setState(() {
                  _selectedBranchId = value;
                });
              },
            ),
            ReportDate(
              onChanged: (value) {
                setState(() {
                  _selectedDate = value;
                });
              },
            ),
            CustomCalender(
              key: ValueKey(_selectedDate),
              date: _selectedDate,
              warpContainer: true,
              onChanged: (value) {
                setState(() {
                  _selectedDate = value;
                });
              },
            ),
            if (_selectedBranchId != null)
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return EmployeeAttendanceCard(
                      // key: ValueKey("$_selectedDate$_selectedBranchId"),
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
