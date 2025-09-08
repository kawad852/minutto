import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RequestsListScreen extends StatefulWidget {
  final String collection;

  const RequestsListScreen({
    super.key,
    required this.collection,
  });

  @override
  State<RequestsListScreen> createState() => _RequestsListScreenState();
}

class _RequestsListScreenState extends State<RequestsListScreen> {
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
