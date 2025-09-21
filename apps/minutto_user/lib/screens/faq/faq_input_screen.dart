import 'package:shared/shared.dart';

class FAQInputScreen extends StatefulWidget {
  final FAQModel? faq;

  const FAQInputScreen({super.key, this.faq});

  @override
  State<FAQInputScreen> createState() => _FAQInputScreenState();
}

class _FAQInputScreenState extends State<FAQInputScreen> {
  late FAQModel _faq;
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();
  bool get _isAdd => widget.faq == null;

  void _onSubmit(BuildContext context) {
    _formKey.onSubmit(
      context,
      isAdd: _isAdd,
      onCall: (user) async {
        final docRef = _firebaseFireStore.companyFAQ.doc(_isAdd ? null : _faq.id);
        _faq.id = docRef.id;
        _faq.createdAt = kNowDate;
        await docRef.set(_faq);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _faq = FAQModel.fromJson(
      widget.faq?.toJson() ?? FAQModel().toJson(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.save),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            children: [
              WidgetTitle(
                title: context.appLocalization.question,
                child: CustomTextField.text(
                  initialValue: _faq.question,
                  onChanged: (value) => _faq.question = value!,
                ),
              ),
              WidgetTitle(
                title: context.appLocalization.answer,
                child: CustomTextField.text(
                  initialValue: _faq.answer,
                  onChanged: (value) => _faq.answer = value!,
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
