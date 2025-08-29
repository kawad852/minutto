import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class DebtInputScreen extends StatefulWidget {
  const DebtInputScreen({super.key});

  @override
  State<DebtInputScreen> createState() => _DebtInputScreenState();
}

class _DebtInputScreenState extends State<DebtInputScreen> {
  late SalaryAdvanceModel _salaryAdvance;
  final _formKey = GlobalKey<FormState>();
  List<XFile> _files = [];

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          final docRef = _firebaseFirestore.salaryAdvances.doc();
          _salaryAdvance.id = docRef.id;
          _salaryAdvance.companyId = user.companyId!;
          _salaryAdvance.userId = user.id!;
          _salaryAdvance.createdAt = kNowDate;
          _salaryAdvance.attachments = await StorageService().uploadFiles(
            MyCollections.salaryAdvances,
            _files,
          );
          await docRef.set(_salaryAdvance);
          if (context.mounted) {
            context.showSnackBar(context.appLocalization.sentSuccessfully);
            Navigator.pop(context);
          }
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _salaryAdvance = SalaryAdvanceModel(createdAt: kNowDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.appLocalization.debtRequest,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            _onSubmit(context);
          },
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DebtBubble(),
              Row(
                children: [
                  // Expanded(
                  //   child: WidgetTitle(
                  //     title: context.appLocalization.orderDate,
                  //     padding: const EdgeInsets.symmetric(vertical: 5),
                  //     child: CustomTextField.text(onChanged: (value) {}),
                  //   ),
                  // ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.valuee,
                      miniTitle: " (${context.appLocalization.ceiling} = 90د.أ)",
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: CustomTextField.double(
                        onChanged: (value) => _salaryAdvance.amount = value!,
                      ),
                    ),
                  ),
                ],
              ),
              RequestForm(
                onNotesChanged: (value) => _salaryAdvance.notes = value,
                attachments: _salaryAdvance.attachments,
                onAttachmentChanged: (List<XFile> value) => _files = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
