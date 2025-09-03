import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class VacationScheduleScreen extends StatefulWidget {
  const VacationScheduleScreen({super.key});

  @override
  State<VacationScheduleScreen> createState() => _VacationScheduleScreenState();
}

class _VacationScheduleScreenState extends State<VacationScheduleScreen> {
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
              (context) => const VacationInputScreen(),
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
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ScheduleCard(
                    isVacation: true,
                    title: "إجازة عيد الفطر",
                    branch: "كل الفروع",
                    time: "24 يوليو",
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
