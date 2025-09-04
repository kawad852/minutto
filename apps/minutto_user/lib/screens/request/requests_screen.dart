import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestsScreen extends StatefulWidget {
  final String collection;
  final bool showActions;

  const RequestsScreen({
    super.key,
    required this.collection,
    this.showActions = false,
  });

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  late Query<RequestModel> _query;
  var _status = StatusEnum.pending.value;

  late (Query<RequestModel> pending, Query<RequestModel> accepted, Query<RequestModel> rejected)
  _countQueries;

  String get _collection => widget.collection;

  Query<RequestModel> _fetchQuery(String status) {
    late Filter userFilter;
    final statusFilter = Filter(MyFields.status, isEqualTo: status);
    final user = MySharedPreferences.user!;
    if (widget.showActions) {
      userFilter = Filter(MyFields.companyId, isEqualTo: user.companyId);
    } else {
      userFilter = Filter(MyFields.userId, isEqualTo: user.id);
    }
    final filter = Filter.and(userFilter, statusFilter);
    return FirebaseFirestore.instance
        .collection(_collection)
        .requestConvertor
        .where(filter)
        .orderByCreatedAtDesc;
  }

  void _initialize() {
    _query = _fetchQuery(_status);
  }

  @override
  void initState() {
    super.initState();
    _initialize();
    _countQueries = (
      _fetchQuery(StatusEnum.pending.value),
      _fetchQuery(StatusEnum.accepted.value),
      _fetchQuery(StatusEnum.rejected.value),
    );
  }

  @override
  Widget build(BuildContext context) {
    final info = _collection.info(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          info.title,
        ),
      ),
      bottomNavigationBar: !widget.showActions
          ? BottomButton(
              onPressed: () {
                context.navigate(
                  (context) => RequestInputScreen(
                    collection: _collection,
                  ),
                );
              },
              title: info.inputTitle,
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            RequestHead(),
            RequestTabBar(
              queries: _countQueries,
              status: _status,
              onChanged: (value) {
                _status = value;
                setState(() {
                  _initialize();
                });
              },
            ),
            Expanded(
              child: BlitzBuilder.query(
                query: _query,
                onComplete: (context, snapshot, _) {
                  if (snapshot.docs.isEmpty) {
                    return const EmptyWidget();
                  }
                  return ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemCount: snapshot.docs.length,
                    itemBuilder: (context, index) {
                      final doc = snapshot.docs[index];
                      final request = doc.data();
                      final reference = doc.reference;
                      return RequestCard(
                        request: request,
                        collection: _collection,
                        showActions: widget.showActions,
                        onAccept: (value) {
                          final status = value.$1;
                          final notes = value.$2;
                          reference.update({
                            MyFields.status: status,
                            if (notes.isNotEmpty) MyFields.adminNotes: notes,
                          });
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
