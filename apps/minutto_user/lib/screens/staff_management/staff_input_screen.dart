import 'package:shared/shared.dart';

class StaffInputScreen extends StatefulWidget {
  const StaffInputScreen({super.key});

  @override
  State<StaffInputScreen> createState() => _StaffInputScreenState();
}

class _StaffInputScreenState extends State<StaffInputScreen> {
  int _currentIndex = 0;
  late PageController _pageController;
  final _formKey = GlobalKey<FormState>();
  final _storageService = StorageService();
  late Future<List<dynamic>> _futures;
  late UserModel _user;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _initialize() {
    _futures = ApiService.build(
      callBack: () async {
        final departmentsFuture = _firebaseFirestore.departments.whereCompanyId.orderByCreatedAtDesc
            .get()
            .then((value) => value.docs.map((e) => e.data()).toList());
        final branchesFuture = _firebaseFirestore.branches.whereCompanyId.orderByCreatedAtDesc
            .get()
            .then((value) => value.docs.map((e) => e.data()).toList());
        return Future.wait([departmentsFuture, branchesFuture]);
      },
    );
  }

  void _onSubmit(BuildContext context) {
    ApiService.fetch(
      context,
      callBack: () async {
        final user = MySharedPreferences.user!;
        final docRef = _firebaseFirestore.users.doc();
        _user.id = docRef.id;
        _user.companyId = user.companyId;
        _user.createdAt = kNowDate;
        await docRef.set(_user);
        if (context.mounted) {
          context.showSnackBar(context.appLocalization.addedSuccessfully);
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _user = UserModel(
      bank: BankModel(),
    );
    _pageController = PageController(initialPage: 0);
    _initialize();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlitzBuilder.future(
      future: _futures,
      onComplete: (context, snapshot) {
        final departments = (snapshot.data?[0] ?? <DepartmentModel>[]) as List<DepartmentModel>;
        final branches = (snapshot.data?[1] ?? <BranchModel>[]) as List<BranchModel>;
        return Scaffold(
          appBar: AppBar(
            title: Text(context.appLocalization.addStaff),
          ),
          bottomNavigationBar: BottomButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.unFocusKeyboard();
                if (_currentIndex != 2) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInExpo,
                  );
                } else {
                  _onSubmit(context);
                }
              }
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
                                child: CustomTextField.phone(
                                  context,
                                  code: _user.phoneNumberCountryCode,
                                  onChanged: (value) => _user.phoneNumber = value!,
                                  onCodeSelected: (value) => _user.phoneNumberCountryCode = value!,
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
                              WidgetTitle(
                                title: context.appLocalization.branch,
                                child: DropDownEditor<String>(
                                  items: branches.map((e) {
                                    return DropdownMenuItem(
                                      value: e.id,
                                      child: Text(e.name),
                                    );
                                  }).toList(),
                                  onChanged: (value) => _user.branchId = value!,
                                  title: context.appLocalization.choose,
                                  value: _user.branchId.isEmpty ? null : _user.branchId,
                                ),
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
                                  initialValue: _user.basicSalary,
                                  onChanged: (value) => _user.basicSalary = value!,
                                ),
                              ),
                              WidgetTitle(
                                title: context.appLocalization.contractDuration,
                                child: CustomTextField.double(
                                  initialValue: _user.contractDurationMonths.toDouble(),
                                  onChanged: (value) =>
                                      _user.contractDurationMonths = value!.toInt(),
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
                                  onChanged: (value) => _user.bank!.name = value!,
                                ),
                              ),
                              WidgetTitle(
                                title: context.appLocalization.accountNumberIBAN,
                                child: CustomTextField.text(
                                  initialValue: _user.bank?.iban ?? '',
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
      },
    );
  }
}
