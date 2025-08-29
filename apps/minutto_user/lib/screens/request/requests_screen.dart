import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestsScreen extends StatefulWidget {
  final String collection;
  final bool isVacation;
  const RequestsScreen({super.key, required this.collection, this.isVacation = false});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  late Query<RequestModel> _query;

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

  void _initialize() {
    final userIdFilter = Filter(MyFields.userId, isEqualTo: MySharedPreferences.user!.id);
    var query = FirebaseFirestore.instance
        .collection(widget.collection)
        .requestConvertor
        .orderByCreatedAtDesc;
    if (widget.collection != MyCollections.overtimes) {
      final typeFilter = Filter(
        MyFields.type,
        isEqualTo: widget.isVacation
            ? LeaveRequestType.vacation.value
            : LeaveRequestType.leave.value,
      );
      final filter = Filter.and(userIdFilter, typeFilter);
      query = query.where(filter);
    } else {
      query = query.where(userIdFilter);
    }
    _query = query;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
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
      body: BlitzBuilder.query(
        query: _query,
        onComplete: (context, snapshot, _) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: snapshot.docs.length,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemBuilder: (context, index) {
              if (snapshot.isLoadingMore(index)) {
                return BaseLoader();
              }
              final request = snapshot.docs[index].data();
              return RequestCardWidget(
                collection: widget.collection,
                isVacation: widget.isVacation,
                request: request,
              );
            },
          );
        },
      ),
    );
  }
}
