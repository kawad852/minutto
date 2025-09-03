import 'package:shared/shared.dart';

class VacationInputScreen extends StatefulWidget {
  const VacationInputScreen({super.key});

  @override
  State<VacationInputScreen> createState() => _VacationInputScreenState();
}

class _VacationInputScreenState extends State<VacationInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.vacations),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            WidgetTitle(
              title: context.appLocalization.vacationName,
              child: CustomTextField.text(onChanged: (value) {}),
            ),
            Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startDate,
                    child: DateEditor(
                      onChanged: (value) => {},
                      value: DateTime.now(),
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endDate,
                    child: DateEditor(
                      onChanged: (value) => {},
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
          ],
        ),
      ),
    );
  }
}
