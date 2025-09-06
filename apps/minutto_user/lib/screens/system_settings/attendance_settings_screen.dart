import 'package:shared/shared.dart';

class AttendanceSettingsScreen extends StatefulWidget {
  const AttendanceSettingsScreen({super.key});

  @override
  State<AttendanceSettingsScreen> createState() => _AttendanceSettingsScreenState();
}

class _AttendanceSettingsScreenState extends State<AttendanceSettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  late CompanyModel _company;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _onSubmit(BuildContext context) {
    _formKey.onSubmit(
      context,
      isAdd: false,
      onCall: (user) async {
        _firebaseFirestore.companies.doc(_company.id).update(_company.toJson());
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _company = MySharedPreferences.company!;
    _company.attendancePolicy ??= AttendancePolicyModel(lateDeductionRules: []);
    if (_company.attendancePolicy!.lateDeductionRules.isEmpty) {
      _company.attendancePolicy!.lateDeductionRules.add(LateDeductionRuleModel());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.attendanceAndDeparture),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetTitle(
                title: context.appLocalization.gracePeriodShift,
                child: CustomTextField.int(
                  initialValue: _company.attendancePolicy!.shiftGraceMinutes,
                  onChanged: (value) => _company.attendancePolicy!.shiftGraceMinutes = value!,
                ),
              ),
              Row(
                children: [
                  CustomSwitch(
                    value: _company.attendancePolicy!.lateAfterGrace,
                    onChanged: (value) {
                      setState(() {
                        _company.attendancePolicy!.lateAfterGrace = value;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      context.appLocalization.afterGracePeriod,
                      style: context.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                context.appLocalization.deductionInCaseDelay,
                style: context.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Column(
                spacing: 5,
                children: List.generate(_company.attendancePolicy!.lateDeductionRules.length, (
                  index,
                ) {
                  final element = _company.attendancePolicy!.lateDeductionRules[index];
                  return Row(
                    key: ValueKey(index),
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: WidgetTitle(
                          title: context.appLocalization.fromMinutes,
                          child: CustomTextField.int(
                            initialValue: element.fromMinutes,
                            onChanged: (value) => element.fromMinutes = value!,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: WidgetTitle(
                          title: context.appLocalization.toMinutes,
                          child: CustomTextField.int(
                            initialValue: element.toMinutes,
                            onChanged: (value) => element.toMinutes = value!,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: WidgetTitle(
                          title: context.appLocalization.numberDiscountHours,
                          child: CustomTextField.int(
                            initialValue: element.value,
                            onChanged: (value) => element.value = value!,
                          ),
                        ),
                      ),
                      if (_company.attendancePolicy!.lateDeductionRules.length > 1)
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: IconButton.filled(
                            onPressed: () {
                              setState(() {
                                _company.attendancePolicy!.lateDeductionRules.removeAt(index);
                              });
                            },
                            style: IconButton.styleFrom(
                              backgroundColor: context.colorScheme.error,
                            ),
                            icon: Icon(Icons.delete),
                          ),
                        ),
                    ],
                  );
                }),
              ),
              Row(
                spacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _company.attendancePolicy!.lateDeductionRules.add(LateDeductionRuleModel());
                      });
                    },
                    child: const CustomSvg(MyIcons.addIcon),
                  ),
                  Text(
                    context.appLocalization.addAnotherDiscount,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
