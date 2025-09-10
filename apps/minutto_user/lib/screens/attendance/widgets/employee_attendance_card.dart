import 'package:minutto_user/minutto_user.dart';
import 'package:minutto_user/screens/attendance/widgets/attendance_expansion.dart';
import 'package:shared/shared.dart';

class EmployeeAttendanceCard extends StatelessWidget {
  final UserModel user;
  final DateTime date;
  final DateTime? endDate;

  const EmployeeAttendanceCard({
    super.key,
    required this.user,
    required this.date,
    this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate(
          (context) => UserAttendancesScreen(
            user: user,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: context.colorPalette.greyF9F,
          border: Border.all(color: context.colorPalette.greyEAE),
          borderRadius: BorderRadius.circular(kRadiusSecondary),
        ),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserTile(
              user: user,
            ),
            AttendanceExpansion(
              userId: user.id,
              date: date,
              endDate: endDate,
            ),
          ],
        ),
      ),
    );
  }
}
