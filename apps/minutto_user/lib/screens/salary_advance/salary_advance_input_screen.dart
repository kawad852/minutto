import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class SalaryAdvanceInputScreen extends StatefulWidget {
  const SalaryAdvanceInputScreen({super.key});

  @override
  State<SalaryAdvanceInputScreen> createState() => _SalaryAdvanceInputScreenState();
}

class _SalaryAdvanceInputScreenState extends State<SalaryAdvanceInputScreen> {
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
    _salaryAdvance = SalaryAdvanceModel(
      createdAt: kNowDate,
      date: kNowDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.appLocalization.debtRequest,
        ),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        title: context.appLocalization.send,
      ), 
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              AdvanceBubble(),
              Row(
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.orderDate,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: DateEditor(
                        value: _salaryAdvance.date,
                        onChanged: (value) => _salaryAdvance.date = value,
                      ),
                    ),
                  ),
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
