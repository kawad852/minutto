import 'package:shared/shared.dart';

class FeedbackInputScreen extends StatefulWidget {
  const FeedbackInputScreen({super.key});

  @override
  State<FeedbackInputScreen> createState() => _FeedbackInputScreenState();
}

class _FeedbackInputScreenState extends State<FeedbackInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.requestForExpenseAllowance)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {},
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          WidgetTitle(
            title: context.appLocalization.typeExpenseCompensated,
            padding: const EdgeInsets.only(bottom: 5),
            child: DropDownEditor<String>(
              items: [DropdownMenuItem(value: 'بدل مواصلات', child: Text('بدل مواصلات'))],
              onChanged: (value) {},
              value: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.expenseAllowanceDate,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.valuee,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: CustomTextField.text(onChanged: (value) {}),
                  ),
                ),
              ],
            ),
          ),
          OrderForm(onNotesChanged: (value) {}),
        ],
      ),
    );
  }
}
