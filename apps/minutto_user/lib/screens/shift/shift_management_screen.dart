import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class ShiftManagementScreen extends StatefulWidget {
  const ShiftManagementScreen({super.key});

  @override
  State<ShiftManagementScreen> createState() => _ShiftManagementScreenState();
}

class _ShiftManagementScreenState extends State<ShiftManagementScreen> {
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
        title: Text(context.appLocalization.shiftManagement),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       context.navigate(
        //         (context) => const ShiftInputScreen(),
        //       );
        //     },
        //     icon: const CustomSvg(MyIcons.addIcon),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 15,
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
                  return UserShiftCard(
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
