import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class EmployeeProfileScreen extends StatefulWidget {
  const EmployeeProfileScreen({super.key});

  @override
  State<EmployeeProfileScreen> createState() => _EmployeeProfileScreenState();
}

class _EmployeeProfileScreenState extends State<EmployeeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BaseNetworkImage(
                "",
                width: 90,
                height: 90,
                shape: BoxShape.circle,
              ),
              const SizedBox(height: 20),
              Text(
                "صهيب البكار",
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "مصمم جرافيك",
                style: TextStyle(
                  color: context.colorPalette.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            spacing: 10,
            children: [
              RequestBubble(
                title: context.appLocalization.leaveRequests,
                value: "1/4 ",
                isProfle: true,
              ),
              RequestBubble(
                title: context.appLocalization.leaveAbsence,
                value: "0/2 ",
                isProfle: true,
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.fingerBlue,
                  title: context.appLocalization.attendanceAndDeparture,
                ),
              ),
              Expanded(
                child: HomeBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const WorkScheduleScreen(),
                    );
                  },
                  icon: MyIcons.workIcon,
                  title: context.appLocalization.workTabel,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.umbrella,
                  title: context.appLocalization.vacations,
                ),
              ),
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.clockIcon,
                  title: context.appLocalization.leaves,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.money,
                  title: context.appLocalization.salaries,
                ),
              ),
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.danger,
                  title: context.appLocalization.alarms,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.advance,
                  title: context.appLocalization.advances,
                ),
              ),
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.incentiveIcon,
                  title: context.appLocalization.incentivesRequests,
                ),
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.overtime,
                  title: context.appLocalization.overtime,
                ),
              ),
              Expanded(
                child: HomeBubble(
                  onTap: () {},
                  icon: MyIcons.breakIcon,
                  title: context.appLocalization.workBreak,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
