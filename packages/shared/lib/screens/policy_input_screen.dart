import 'package:shared/shared.dart';

class PolicyInputScreen extends StatefulWidget {
  final PolicyModel? policy;
  final String title, docId;

  const PolicyInputScreen({
    super.key,
    required this.policy,
    required this.title,
    required this.docId,
  });

  @override
  State<PolicyInputScreen> createState() => _PolicyInputScreenState();
}

class _PolicyInputScreenState extends State<PolicyInputScreen> {
  late PolicyModel _policy;

  void _onSubmit(BuildContext context) {
    ApiService.fetch(
      context,
      callBack: () async {
        final docRef = FirebaseFirestore.instance.companyPolicies.doc(widget.docId);
        _policy.id ??= docRef.id;
        await docRef.set(_policy);
        if (context.mounted) {
          Navigator.pop(context);
          Fluttertoast.showToast(msg: context.appLocalization.updatedSuccessfully);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _policy = PolicyModel.fromJson(widget.policy?.toJson() ?? PolicyModel().toJson());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        title: context.appLocalization.save,
      ),
      body: PolicyBuilder(
        onChanged: (value) => _policy.content = value,
        content: _policy.content,
      ),
    );
  }
}
