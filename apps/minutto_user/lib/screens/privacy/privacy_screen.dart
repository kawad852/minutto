import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:shared/shared.dart';

class PrivacyScreen extends StatefulWidget {
  final PrivacyType privacyType;
  const PrivacyScreen({super.key, required this.privacyType});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
          title: Text(
            widget.privacyType == PrivacyType.app
                ? context.appLocalization.whoAreWe
                : context.appLocalization.privacyPolicy,
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Text(
              "تلتزم مينيتو بحماية خصوصية العملاء، وتنطبيق سياسة حماية الخصوصية على كل المعلومات الشخصية التي يتم جمعها أو تقديمها من خلال التطبيق.تلتزم مينيتو بحماية خصوصية العملاء، وتنطبيق سياسة حماية الخصوصية على كل المعلومات الشخصية التي يتم جمعها أو تقديمها من خلال التطبيق.",
              style: TextStyle(
                color: context.colorPalette.grey333,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
