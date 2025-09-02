import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class FacilityManagementScreen extends StatefulWidget {
  const FacilityManagementScreen({super.key});

  @override
  State<FacilityManagementScreen> createState() => _FacilityManagementScreenState();
}

class _FacilityManagementScreenState extends State<FacilityManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.facilityManagement)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Row(
            spacing: 10,
            children: [
              FacilityCard(
                title: context.appLocalization.employeesNumber,
                value: "200",
                rank: "12",
                icon: MyIcons.staffIcon,
                backgroundColor: context.colorPalette.black,
                textColor: context.colorPalette.white,
              ),
              FacilityCard(
                title: context.appLocalization.attendanceAndDeparture,
                value: "200",
                rank: "12",
                icon: MyIcons.bagIcon,
                backgroundColor: context.colorPalette.greyF2F,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            spacing: 10,
            children: [
              FacilityCard(
                onTap: () {
                  context.navigate(
                    (context) => const RequestManagementScreen(),
                  );
                },
                title: context.appLocalization.requests,
                value: "200",
                rank: "12",
                icon: MyIcons.bookIcon,
                backgroundColor: context.colorPalette.blue73B,
              ),
              FacilityCard(
                title: context.appLocalization.salaries,
                value: "200",
                rank: "12",
                icon: MyIcons.rankIcon,
                backgroundColor: context.colorPalette.blueB2D,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 20),
            child: Row(
              children: [
                FacilityBubble(
                  onTap: () {
                    context.navigate((context) => const BranchesScreen());
                  },
                  title: context.appLocalization.branchManagement,
                  icon: MyIcons.branchManage,
                ),
                FacilityBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const ShiftManagementScreen(),
                    );
                  },
                  title: context.appLocalization.shiftManagement,
                  icon: MyIcons.shiftManage,
                ),
                FacilityBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const StaffManagementScreen(),
                    );
                  },
                  title: context.appLocalization.employees,
                  icon: MyIcons.staff,
                ),
              ],
            ),
          ),
          Row(
            children: [
              FacilityBubble(
                onTap: () {
                  context.navigate((context) => const SalaryManagementScreen());
                },
                title: context.appLocalization.salaries,
                icon: MyIcons.salaryManage,
              ),
              FacilityBubble(
                onTap: () {
                  context.navigate(
                    (context) => const AdvancesScheduleScreen(),
                  );
                },
                title: context.appLocalization.advances,
                icon: MyIcons.advancesManage,
              ),
              FacilityBubble(
                onTap: () {
                  context.navigate((context) => const ShiftTableScreen());
                },
                title: context.appLocalization.shiftTable,
                icon: MyIcons.shiftTabel,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                FacilityBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const AttendanceManagementScreen(),
                    );
                  },
                  title: context.appLocalization.attendanceAndDeparture,
                  icon: MyIcons.bag,
                ),
                FacilityBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const VacationScheduleScreen(),
                    );
                  },
                  title: context.appLocalization.vacationTabel,
                  icon: MyIcons.umbrellaIcon,
                ),
                FacilityBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const WorkScheduleScreen(),
                    );
                  },
                  title: context.appLocalization.workTabel,
                  icon: MyIcons.work,
                ),
              ],
            ),
          ),
          Row(
            children: [
              FacilityBubble(
                onTap: () {
                  context.navigate(
                    (context) => const EmploymentContractsScreen(),
                  );
                },
                title: context.appLocalization.employmentContracts,
                icon: MyIcons.work,
              ),
              FacilityBubble(
                onTap: () {
                  context.navigate(
                    (context) => const NotificationManagementScreen(),
                  );
                },
                title: context.appLocalization.notifications,
                icon: MyIcons.notificationIcon,
              ),
              FacilityBubble(
                onTap: () {},
                title: context.appLocalization.companySystemSettings,
                icon: MyIcons.settings,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
