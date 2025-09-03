import 'package:shared/shared.dart';

class DeductionSettingsScreen extends StatefulWidget {
  const DeductionSettingsScreen({super.key});

  @override
  State<DeductionSettingsScreen> createState() => _DeductionSettingsScreenState();
}

class _DeductionSettingsScreenState extends State<DeductionSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.deductionRates),
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
            Row(
              spacing: 12,
              children: [
                CustomSwitch(onChanged: (value) {}),
                Expanded(
                  child: Text(
                    context.appLocalization.facilitySocialSecurity,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            WidgetTitle(
              title: context.appLocalization.socialSecurityDeductionSalary,
              child: CustomTextField.double(onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
