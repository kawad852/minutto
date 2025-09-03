import 'package:shared/shared.dart';

class FAQInputScreen extends StatefulWidget {
  const FAQInputScreen({super.key});

  @override
  State<FAQInputScreen> createState() => _FAQInputScreenState();
}

class _FAQInputScreenState extends State<FAQInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.faq),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            WidgetTitle(
              title: context.appLocalization.question,
              child: CustomTextField.text(onChanged: (value) {}),
            ),
            WidgetTitle(
              title: context.appLocalization.answer,
              child: CustomTextField.text(
                onChanged: (value) {},
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
