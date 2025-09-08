import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class OldRequestsScreen extends StatefulWidget {
  final String collection;
  final bool isVacation;
  const OldRequestsScreen({super.key, required this.collection, this.isVacation = false});

  @override
  State<OldRequestsScreen> createState() => _OldRequestsScreenState();
}

class _OldRequestsScreenState extends State<OldRequestsScreen> {
  late Query<RequestModel> _query;

  (String, String) _getRequestInfo(BuildContext context) {
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
    final request = _getRequestInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          request.$1,
        ),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          context.navigate(
            (context) => OldRequestInputScreen(
              collection: widget.collection,
              isVacation: widget.isVacation,
            ),
          );
        },
        title: request.$2,
      ),
      body: BlitzBuilder.query(
        query: _query,
        onComplete: (context, snapshot, _) {
          if (snapshot.docs.isEmpty) {
            return EmptyWidget();
          }
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: snapshot.docs.length,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemBuilder: (context, index) {
              if (snapshot.isLoadingMore(index)) {
                return BaseLoader();
              }
              final request = snapshot.docs[index].data();
              return OldRequestCard(
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
