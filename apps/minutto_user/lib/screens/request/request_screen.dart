import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestScreen extends StatefulWidget {
  final String collection;
  final bool isVacation;
  const RequestScreen({super.key, required this.collection, this.isVacation = false});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  (String, String) _getOrderInfo(BuildContext context) {
    switch (widget.collection) {
      case MyCollections.overtimes:
        return (context.appLocalization.overtimeRequests, context.appLocalization.newOrder);
      default:
        if (widget.isVacation) {
          return (context.appLocalization.myVacation, context.appLocalization.vacationRequest);
        }
        return (context.appLocalization.myLeave, context.appLocalization.leaveRequest);
    }
  }

  @override
  Widget build(BuildContext context) {
    final order = _getOrderInfo(context);
    return Scaffold(
      appBar: AppBar(title: Text(order.$1)),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            context.navigate(
              (context) => RequestInputScreen(
                collection: widget.collection,
                isVacation: widget.isVacation,
              ),
            );
          },
          child: Text(
            order.$2,
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
          return RequestCardWidget(
            collection: widget.collection,
            isVacation: widget.isVacation,
          );
        },
      ),
    );
  }
}
