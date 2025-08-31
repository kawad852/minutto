import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestsScreen extends StatefulWidget {
  final String collection;

  const RequestsScreen({
    super.key,
    required this.collection,
  });

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  late Query<RequestModel> _query;

  String get _collection => widget.collection;

  void _initialize() {
    _query = FirebaseFirestore.instance
        .collection(_collection)
        .requestConvertor
        .whereUserId
        .orderByCreatedAtDesc;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
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
      bottomNavigationBar: BottomButton(
        onPressed: () {
          context.navigate((context) => const RequestInputScreen());
        },
        title: info.inputTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            RequestHead(),
            RequestTabBar(),
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
                      final request = snapshot.docs[index].data();
                      return RequestCard(
                        request: request,
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
