import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class OvertimeScreen extends StatefulWidget {
  const OvertimeScreen({super.key});

  @override
  State<OvertimeScreen> createState() => _OvertimeScreenState();
}

class _OvertimeScreenState extends State<OvertimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.overtimeRequests)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            context.navigate((context) => const OvertimeInputScreen());
          },
          child: Text(
            context.appLocalization.newOrder,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemCount: 10,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (context, index) {
          return const OvertimeCard();
        },
      ),
    );
  }
}
