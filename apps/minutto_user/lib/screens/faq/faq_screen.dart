import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: sv.Svg(MyIcons.scaffoldBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(context.appLocalization.faq),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            CustomTextField.text(
              onChanged: (value) {},
              prefixIcon: Icon(Icons.search),
              hintText: context.appLocalization.search,
            ),
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemCount: 6,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (context, index) {
                return FAQCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
