import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class DebtInputScreen extends StatefulWidget {
  const DebtInputScreen({super.key});

  @override
  State<DebtInputScreen> createState() => _DebtInputScreenState();
}

class _DebtInputScreenState extends State<DebtInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.debtRequest)),
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
          DebtBubble(),
          Row(
            children: [
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.orderDate,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.valuee,
                  miniTitle: " (${context.appLocalization.ceiling} = 90د.أ)",
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              ),
            ],
          ),
          RequestForm(
            onNotesChanged: (value) {},
            attachments: [],
            onAttachmentChanged: (List<XFile> value) {},
          ),
        ],
      ),
    );
  }
}
