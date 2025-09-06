import 'package:shared/shared.dart';

class LeavesSettingsScreen extends StatefulWidget {
  const LeavesSettingsScreen({super.key});

  @override
  State<LeavesSettingsScreen> createState() => _LeavesSettingsScreenState();
}

class _LeavesSettingsScreenState extends State<LeavesSettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  late CompanyModel _company;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _onSubmit(BuildContext context) {
    _formKey.onSubmit(
      context,
      isAdd: false,
      onCall: (user) async {
        _firebaseFirestore.companies.doc(_company.id).update(_company.toJson()).then((value) {
          MySharedPreferences.company = _company;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _company = MySharedPreferences.company!;
    _company.leavePolicy ??= LeavePolicyModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.leaveDepartureSystem),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        title: context.appLocalization.saveModifications,
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
                title: context.appLocalization.maxDaysRequestedOnetime,
                child: CustomTextField.int(
                  initialValue: _company.leavePolicy!.maxDaysPerRequest,
                  onChanged: (value) => _company.leavePolicy!.maxDaysPerRequest = value!,
                ),
              ),
              Row(
                spacing: 12,
                children: [
                  CustomSwitch(
                    value: _company.leavePolicy!.allowCarryOver,
                    onChanged: (value) {
                      setState(() {
                        _company.leavePolicy!.allowCarryOver = value;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      context.appLocalization.possibilityCarryingDays,
                      style: context.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              WidgetTitle(
                title: context.appLocalization.maximumCarryover,
                child: CustomTextField.int(
                  initialValue: _company.leavePolicy!.maxCarryOverDays,
                  onChanged: (value) => _company.leavePolicy!.maxCarryOverDays = value!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
