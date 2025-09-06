import 'package:shared/shared.dart';

class LeavesSettingsScreen extends StatefulWidget {
  const LeavesSettingsScreen({super.key});

  @override
  State<LeavesSettingsScreen> createState() => _LeavesSettingsScreenState();
}

class _LeavesSettingsScreenState extends State<LeavesSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.leaveDepartureSystem),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.saveModifications,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            WidgetTitle(
              title: context.appLocalization.maxDaysRequestedOnetime,
              child: CustomTextField.double(onChanged: (value) {}),
            ),
            Row(
              spacing: 12,
              children: [
                CustomSwitch(
                  onChanged: (value) {},
                  value: true,
                ),
                Expanded(
                  child: Text(
                    context.appLocalization.possibilityCarryingDays,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            WidgetTitle(
              title: context.appLocalization.maximumCarryover,
              child: CustomTextField.double(onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
