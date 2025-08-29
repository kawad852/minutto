import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
          title: Text(context.appLocalization.notifications),
          backgroundColor: Colors.transparent,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 13),
          itemCount: 5,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          itemBuilder: (context, index) {
            return NotificationCard();
          },
        ),
      ),
    );
  }
}
