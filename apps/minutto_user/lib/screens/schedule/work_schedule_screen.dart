import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class WorkScheduleScreen extends StatefulWidget {
  const WorkScheduleScreen({super.key});

  @override
  State<WorkScheduleScreen> createState() => _WorkScheduleScreenState();
}

class _WorkScheduleScreenState extends State<WorkScheduleScreen> {
  late (DateTime, DateTime) _dates;
  final nowDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _dates = (nowDate, nowDate);
  }

  @override
  Widget build(BuildContext context) {
    final shifts = MyStorage.shifts;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.workTabel),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 15,
          children: [
            RangeDateButton(
              onChanged: (start, end) {
                _dates = (start, end);
              },
              startDate: _dates.$1,
              endDate: _dates.$2,
            ),
            CustomCalender(
              warpContainer: true,
              date: nowDate,
              onChanged: (value) {
                setState(() {
                  _dates = (
                    _dates.$1.copyWith(day: value.weekday),
                    _dates.$2.copyWith(day: value.weekday),
                  );
                });
              },
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: shifts.length,
                itemBuilder: (context, index) {
                  final shift = shifts[index];
                  final branches = MyStorage.branches
                      .where((e) => shift.branchIds.contains(e.id))
                      .toList();
                  final branchNames = branches.map((e) => e.name).toList();
                  return ScheduleCard(
                    title: shift.name,
                    time: "${shift.startHour} - ${shift.endHour}",
                    branch: branchNames.join(', '),
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
