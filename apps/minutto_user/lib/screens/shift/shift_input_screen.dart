import 'package:shared/shared.dart';

class ShiftInputScreen extends StatefulWidget {
  const ShiftInputScreen({super.key});

  @override
  State<ShiftInputScreen> createState() => _ShiftInputScreenState();
}

class _ShiftInputScreenState extends State<ShiftInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addShift),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            WidgetTitle(
              title: context.appLocalization.shiftName,
              child: CustomTextField.text(onChanged: (value) {}),
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startsFrom,
                    child: DayTimeEditor(
                      initialValue: null,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endsIn,
                    child: DayTimeEditor(
                      onChanged: (value) {},
                      initialValue: null,
                    ),
                  ),
                ),
              ],
            ),
            WidgetTitle(
              title: context.appLocalization.chooseMoreBranch,
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                CustomSwitch(onChanged: (value) {}),
                Text(
                  context.appLocalization.saturday,
                  style: TextStyle(
                    color: context.colorPalette.grey718,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                CustomSwitch(onChanged: (value) {}),
                Text(
                  context.appLocalization.sunday,
                  style: TextStyle(
                    color: context.colorPalette.grey718,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
                    ),
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
