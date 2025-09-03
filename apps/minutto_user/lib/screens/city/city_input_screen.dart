import 'package:shared/shared.dart';

class CityInputScreen extends StatefulWidget {
  const CityInputScreen({super.key});

  @override
  State<CityInputScreen> createState() => _CityInputScreenState();
}

class _CityInputScreenState extends State<CityInputScreen> {
  late CityModel _city;
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          final docRef = _firebaseFireStore.cities.doc();
          _city.id = docRef.id;
          _city.companyId = user.companyId;
          _city.createdAt = kNowDate;
          await docRef.set(_city);
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
    _city = CityModel(createdAt: kNowDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addCity),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
        title: context.appLocalization.add,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: WidgetTitle(
            title: context.appLocalization.name,
            child: CustomTextField.text(
              onChanged: (value) => _city.name = value!,
            ),
          ),
        ),
      ),
    );
  }
}
