import 'package:shared/shared.dart';

class BranchCalendarWidget extends StatelessWidget {
  final String? branchId;
  final ValueChanged<String?> onBranchChanged;
  final ValueChanged<DateTime> onDateChanged;
  final DateTime date;

  const BranchCalendarWidget({
    super.key,
    required this.branchId,
    required this.onBranchChanged,
    required this.onDateChanged,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        BranchEditor(
          value: branchId,
          onChanged: onBranchChanged,
        ),
        ReportDate(
          onChanged: onDateChanged,
        ),
        CustomCalender(
          key: ValueKey("${date.month}${date.year}"),
          date: date,
          warpContainer: true,
          onChanged: onDateChanged,
        ),
      ],
    );
  }
}
