import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.appLocalization.vacations,
        ),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          context.navigate((context) => const RequestInputScreen());
        },
        title: context.appLocalization.vacationRequest,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          RequestHead(),
          RequestTabBar(),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return RequestCard();
            },
          ),
        ],
      ),
    );
  }
}
