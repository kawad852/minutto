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
      body: Padding(
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
            StretchedButton(
              onPressed: () {},
              margin: const EdgeInsets.only(top: 40),
              backgroundColor: context.colorPalette.blue091,
              child: Text(
                context.appLocalization.add,
                style: TextStyle(
                  color: context.colorPalette.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
