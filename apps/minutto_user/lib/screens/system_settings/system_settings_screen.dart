import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class SystemSettingsScreen extends StatefulWidget {
  const SystemSettingsScreen({super.key});

  @override
  State<SystemSettingsScreen> createState() => _SystemSettingsScreenState();
}

class _SystemSettingsScreenState extends State<SystemSettingsScreen> {
  TextStyle get style => TextStyle(
    color: context.colorPalette.blue091,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.companySystemSettings),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          Text(
            context.appLocalization.settings,
            style: style,
          ),
          SettingsCard(
            child: Column(
              spacing: 18,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingsBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const AttendanceSettingsScreen(),
                    );
                  },
                  title: context.appLocalization.attendanceAndDeparture,
                  icon: MyIcons.fingerSharp,
                ),
                SettingsBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const LeavesSettingsScreen(),
                    );
                  },
                  title: context.appLocalization.vacationsAndLeaves,
                  icon: MyIcons.umbrellaSharp,
                ),
                SettingsBubble(
                  onTap: () {},
                  title: context.appLocalization.breakDuration,
                  icon: MyIcons.coffeSharp,
                ),
                SettingsBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const DepartmentsScreen(),
                    );
                  },
                  title: context.appLocalization.companyDepartments,
                  icon: MyIcons.deparatment,
                ),
              ],
            ),
          ),
          Text(
            context.appLocalization.aboutTheCompany,
            style: style,
          ),
          SettingsCard(
            child: Column(
              spacing: 18,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingsBubble(
                  onTap: () {},
                  title: context.appLocalization.bylaws,
                  icon: MyIcons.bookSharp,
                ),
                SettingsBubble(
                  onTap: () {
                    context.navigate(
                      (context) => const FAQManagementScreen(),
                    );
                  },
                  title: context.appLocalization.faq,
                  icon: MyIcons.faqSharp,
                ),
                SettingsBubble(
                  onTap: () {},
                  title: context.appLocalization.privacyPolicy,
                  icon: MyIcons.policySharp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
