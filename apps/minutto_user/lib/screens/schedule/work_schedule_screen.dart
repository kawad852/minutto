import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class WorkScheduleScreen extends StatefulWidget {
  const WorkScheduleScreen({super.key});

  @override
  State<WorkScheduleScreen> createState() => _WorkScheduleScreenState();
}

class _WorkScheduleScreenState extends State<WorkScheduleScreen> {
  @override
  Widget build(BuildContext context) {
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
            DateRangeCard(),
            CustomCalender(
              warpContainer: true,
              date: DateTime.now(),
              onChanged: (value) {},
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ScheduleCard(
                    title: "شيقت صباحي",
                    time: "9:00 ص : 03:00 م",
                    branch: "فرع عمان",
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
