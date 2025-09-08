import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceManagementScreen extends StatefulWidget {
  const AttendanceManagementScreen({super.key});

  @override
  State<AttendanceManagementScreen> createState() => _AttendanceManagementScreenState();
}

class _AttendanceManagementScreenState extends State<AttendanceManagementScreen> {
  String? _branchId, _date;

  @override
  Widget build(BuildContext context) {
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
            WidgetTitle(
              title: context.appLocalization.branch,
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
            ReportDate(),
            CustomCalender(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: MyStorage.users.length,
                itemBuilder: (context, index) {
                  final user = MyStorage.users[index];
                  return EmployeeAttendanceCard(
                    user: user,
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
