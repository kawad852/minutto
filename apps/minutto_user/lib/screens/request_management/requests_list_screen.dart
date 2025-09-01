import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestsListScreen extends StatefulWidget {
  const RequestsListScreen({super.key});

  @override
  State<RequestsListScreen> createState() => _RequestsListScreenState();
}

class _RequestsListScreenState extends State<RequestsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.breakRequests),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemBuilder: (context, index) {
          return RequestManageCard();
        },
      ),
    );
  }
}
