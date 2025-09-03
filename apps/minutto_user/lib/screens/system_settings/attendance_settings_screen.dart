import 'package:shared/shared.dart';

class AttendanceSettingsScreen extends StatefulWidget {
  const AttendanceSettingsScreen({super.key});

  @override
  State<AttendanceSettingsScreen> createState() => _AttendanceSettingsScreenState();
}

class _AttendanceSettingsScreenState extends State<AttendanceSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.attendanceAndDeparture),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetTitle(
              title: context.appLocalization.gracePeriodShift,
              child: CustomTextField.double(onChanged: (value) {}),
            ),
            Row(
              children: [
                CustomSwitch(onChanged: (value) {}),
                Expanded(
                  child: Text(
                    context.appLocalization.afterGracePeriod,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              context.appLocalization.deductionInCaseDelay,
              style: context.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              spacing: 6,
              children: [
                Expanded(
                  flex: 2,
                  child: WidgetTitle(
                    title: context.appLocalization.fromMinutes,
                    child: CustomTextField.double(onChanged: (value) {}),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: WidgetTitle(
                    title: context.appLocalization.toMinutes,
                    child: CustomTextField.double(onChanged: (value) {}),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: WidgetTitle(
                    title: context.appLocalization.numberDiscountHours,
                    child: CustomTextField.double(onChanged: (value) {}),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                InkWell(
                  onTap: () {},
                  child: const CustomSvg(MyIcons.addIcon),
                ),
                Text(
                  context.appLocalization.addAnotherDiscount,
                  style: context.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
