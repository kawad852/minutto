import 'package:shared/shared.dart';

class PolicyScreen extends StatefulWidget {
  final String title;
  final String docId;

  const PolicyScreen({
    super.key,
    required this.title,
    required this.docId,
  });

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  late Stream<PolicyModel?> _stream;

  void _initialize() {
    _stream = FirebaseFirestore.instance.companyPolicies
        .doc(widget.docId)
        .snapshots()
        .map((e) => e.data());
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.stream(
      stream: _stream,
      onComplete: (context, snapshot) {
        final data = snapshot.data;
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.navigate((context) {
                return PolicyInputScreen(
                  policy: data,
                  title: widget.title,
                  docId: widget.docId,
                );
              });
            },
            child: Icon(Icons.edit),
          ),
          body: data?.content != null
              ? Html(
                  data: data!.content,
                )
              : SizedBox.shrink(),
        );
      },
    );
  }
}
