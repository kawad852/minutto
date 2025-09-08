import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class FAQManagementScreen extends StatefulWidget {
  const FAQManagementScreen({super.key});

  @override
  State<FAQManagementScreen> createState() => _FAQManagementScreenState();
}

class _FAQManagementScreenState extends State<FAQManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.faq),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomStart,
        child: FloatingActionButton.extended(
          onPressed: () {
            context.navigate(
              (context) => const FAQInputScreen(),
            );
          },
          backgroundColor: context.colorPalette.blueB2D,
          label: Text(
            context.appLocalization.addNewQuestion,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemBuilder: (context, index) {
          return FAQManageCard();
        },
      ),
    );
  }
}
