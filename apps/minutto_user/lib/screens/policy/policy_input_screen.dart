import 'package:shared/shared.dart';

class PolicyInputScreen extends StatefulWidget {
  final String title, docId;

  const PolicyInputScreen({
    super.key,
    required this.title,
    required this.docId,
  });

  @override
  State<PolicyInputScreen> createState() => _PolicyInputScreenState();
}

class _PolicyInputScreenState extends State<PolicyInputScreen> {
  late Future<PolicyModel?> _future;

  void _initialize() {
    _future = ApiService.build(
      callBack: () async {
        final docRef = FirebaseFirestore.instance.companyPolicies.doc(widget.docId);
        final snapshot = await docRef.get();
        return snapshot.data();
      },
    );
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
        title: Text(widget.title),
      ),
      body: BlitzBuilder.future(
        future: _future,
        onComplete: (context, snapshot) {
          final data = snapshot.data;
          if (data != null) {
            return Html(
              data: data.content,
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
