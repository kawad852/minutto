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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.branchManagement,
                ),
                FacilityCard(
                  onTap: () {
                    context.navigate((context) => const ShiftManagementScreen());
                  },
                  title: context.appLocalization.shiftManagement,
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.staffManagement,
                ),
                FacilityCard(
                  onTap: () {
                    context.navigate((context) => const ShiftTableScreen());
                  },
                  title: context.appLocalization.shiftTable,
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.salaries,
                ),
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.advances,
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.attendanceAndDeparture,
                ),
                FacilityCard(
                  onTap: () {},
                  title: context.appLocalization.companySystemSettings,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
