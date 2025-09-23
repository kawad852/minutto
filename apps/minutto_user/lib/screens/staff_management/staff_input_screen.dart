import 'package:shared/shared.dart';

class StaffInputScreen extends StatefulWidget {
  final UserModel? user;

  const StaffInputScreen({
    super.key,
    this.user,
  });

  @override
  State<StaffInputScreen> createState() => _StaffInputScreenState();
}

class _StaffInputScreenState extends State<StaffInputScreen> {
  int _currentIndex = 0;
  late PageController _pageController;
  final _formKey = GlobalKey<FormState>();
  final _storageService = StorageService();
  late UserModel _user;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;
  bool get _isAdd => widget.user == null;

  void _onSubmit(BuildContext context) {
    final userProvider = context.userProvider;
    ApiService.fetch(
      context,
      callBack: () async {
        final user = MySharedPreferences.user!;
        if (_isAdd) {
          final uid = userProvider.getToken(_user.phoneNumber, _user.phoneNumberCountryCode);
          await userProvider.generateCustomToken(uid);
          _user.id = uid;
          _user.companyId = user.companyId;
          _user.createdAt = kNowDate;
          _user.role = RoleEnum.employee.value;
          _user.status = UserStatusEnum.active.value;
        }
        final docRef = _firebaseFirestore.users.doc(_user.id);
        await docRef.set(_user);
        if (context.mounted) {
          context.showSnackBar(
            _isAdd
                ? context.appLocalization.addedSuccessfully
                : context.appLocalization.updatedSuccessfully,
          );
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _user = UserModel.fromJson(
      widget.user?.toJson() ??
          UserModel(
            bank: BankModel(),
          ).toJson(),
    );
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final departments = MyStorage.departments;
    final branches = MyStorage.branches;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addStaff),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          // if (_formKey.currentState!.validate()) {
          context.unFocusKeyboard();
          if (_currentIndex != 2) {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          } else {
            _onSubmit(context);
          }
          // }
        },
        title: _currentIndex == 2
            ? context.appLocalization.confirmAddition
            : context.appLocalization.next,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              LinearProgressIndicator(
                color: context.colorPalette.blueB2D,
                backgroundColor: context.colorPalette.greyF9F,
                value: (_currentIndex + 1) / 3,
                borderRadius: BorderRadius.circular(10),
                minHeight: 10,
              ),
              const SizedBox(height: 30),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.appLocalization.personalData,
                            style: TextStyle(
                              color: context.colorPalette.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.employeeName,
                            child: CustomTextField.text(
                              initialValue: _user.name,
                              onChanged: (value) => _user.name = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.phoneNum,
                            child: PhoneEditor(
                              code: _user.phoneNumberCountryCode,
                              onChanged: (value) => _user.phoneNumber = value!,
                              onCodeSelected: (value) => _user.phoneNumberCountryCode = value,
                              initialValue: _user.phoneNumber,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.email,
                            child: CustomTextField.email(
                              context,
                              onChanged: (value) => _user.email = value!,
                              hintText: "",
                              initialValue: _user.email,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.dateOfBirth,
                            child: DateEditor(
                              value: _user.birthDate,
                              onChanged: (value) => _user.birthDate = value,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.gender,
                            child: DropDownEditor<String>(
                              items: GenderEnum.values.map((e) {
                                return DropdownMenuItem(
                                  value: e.value,
                                  child: Text(GenderEnum.label(context, e.value)),
                                );
                              }).toList(),
                              onChanged: (value) => _user.gender = value!,
                              title: context.appLocalization.choose,
                              value: _user.gender.isEmpty ? null : _user.gender,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.maritalStatus,
                            child: DropDownEditor<String>(
                              items: MaritalStatusEnum.values.map((e) {
                                return DropdownMenuItem(
                                  value: e.value,
                                  child: Text(MaritalStatusEnum.label(context, e.value)),
                                );
                              }).toList(),
                              onChanged: (value) => _user.maritalStatus = value!,
                              title: context.appLocalization.choose,
                              value: _user.maritalStatus.isEmpty ? null : _user.maritalStatus,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.appLocalization.workData,
                            style: TextStyle(
                              color: context.colorPalette.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.department,
                            child: DropDownEditor<String>(
                              items: departments.map((e) {
                                return DropdownMenuItem(
                                  value: e.id,
                                  child: Text(e.name),
                                );
                              }).toList(),
                              onChanged: (value) => _user.departmentId = value!,
                              title: context.appLocalization.choose,
                              value: _user.departmentId.isEmpty ? null : _user.departmentId,
                            ),
                          ),
                          BranchEditor(
                            value: _user.branchId,
                            onChanged: (value) => _user.branchId = value!,
                          ),
                          WidgetTitle(
                            title: context.appLocalization.jobTitle,
                            child: CustomTextField.text(
                              initialValue: _user.jobTitle,
                              onChanged: (value) => _user.jobTitle = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.basicSalary,
                            child: CustomTextField.double(
                              initialValue: _user.basicSalary != 0 ? _user.basicSalary : null,
                              onChanged: (value) => _user.basicSalary = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.contractDuration,
                            child: CustomTextField.int(
                              initialValue: _user.contractDurationMonths != 0
                                  ? _user.contractDurationMonths
                                  : null,
                              suffixText: context.appLocalization.year,
                              onChanged: (value) => _user.contractDurationMonths = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.dateStartWork,
                            child: DateEditor(
                              value: _user.workStartDate,
                              onChanged: (value) => _user.workStartDate = value,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.expirationDateContract,
                            child: DateEditor(
                              value: _user.contractEndDate,
                              onChanged: (value) => _user.contractEndDate = value,
                            ),
                          ),
                          WidgetTitle(
                            title: "ID",
                            child: CustomTextField.text(
                              initialValue: _user.nationalId,
                              onChanged: (value) => _user.nationalId = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.socialSecurityDeductionSalary,
                            child: CustomTextField.double(onChanged: (value) {}),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.numberAnnualLeaveDays,
                            child: CustomTextField.double(onChanged: (value) {}),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.numberSickLeaveDays,
                            child: CustomTextField.double(onChanged: (value) {}),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.appLocalization.financialStatements,
                            style: TextStyle(
                              color: context.colorPalette.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.nameBankSalary,
                            child: CustomTextField.text(
                              initialValue: _user.bank?.name ?? '',
                              required: false,
                              onChanged: (value) => _user.bank!.name = value!,
                            ),
                          ),
                          WidgetTitle(
                            title: context.appLocalization.accountNumberIBAN,
                            child: CustomTextField.text(
                              initialValue: _user.bank?.iban ?? '',
                              required: false,
                              onChanged: (value) => _user.bank!.iban = value!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
