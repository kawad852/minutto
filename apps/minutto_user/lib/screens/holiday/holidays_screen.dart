import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class VacationScheduleScreen extends StatefulWidget {
  const VacationScheduleScreen({super.key});

  @override
  State<VacationScheduleScreen> createState() => _VacationScheduleScreenState();
}

class _VacationScheduleScreenState extends State<VacationScheduleScreen> {
  late Query<HolidayModel> _query;

  void _initialize() {
    _query = FirebaseFirestore.instance.holidays.whereCompanyId.orderByCreatedAtDesc;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.vacationTabel),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.navigate(
              (context) => const HolidayInputScreen(),
            );
          },
          backgroundColor: context.colorPalette.blueB2D,
          label: Text(
            context.appLocalization.addVacation,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colorPalette.greyEAE),
                    borderRadius: BorderRadius.circular(kRadiusSecondary),
                  ),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "عام 2025",
                        style: TextStyle(
                          color: context.colorPalette.blue475,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CustomSvg(
                        MyIcons.calander,
                        color: context.colorPalette.blue475,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: BlitzBuilder.query(
                query: _query,
                onComplete: (context, snapshot, _) {
                  if (snapshot.docs.isEmpty) {
                    return const EmptyWidget();
                  }
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemCount: snapshot.docs.length,
                    itemBuilder: (context, index) {
                      final holiday = snapshot.docs[index].data();
                      final branches = holiday.branches;
                      return ScheduleCard(
                        isVacation: true,
                        title: holiday.name,
                        branch: branches.map((e) => e.name).join(', '),
                        time: holiday.fromDate!.yMMMMd,
                      );
                    },
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
