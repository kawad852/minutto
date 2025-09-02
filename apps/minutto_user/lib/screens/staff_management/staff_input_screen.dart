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

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _initialize() {
    _futures = ApiService.build(
      callBack: () async {
        final departmentsFuture = _firebaseFirestore.departments.whereCompanyId.orderByCreatedAtDesc
            .get()
            .then((value) => value.docs.map((e) => e.data()));
        final branchesFuture = _firebaseFirestore.branches.whereCompanyId.orderByCreatedAtDesc
            .get()
            .then((value) => value.docs.map((e) => e.data()));
        return Future.wait([departmentsFuture, branchesFuture]);
      },
    );
  }

  @override
  void initState() {
    super.initState();
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
              if (_currentIndex != 2) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInExpo,
                );
              }
            },
            title: _currentIndex == 2
                ? context.appLocalization.confirmAddition
                : context.appLocalization.next,
            backgroundColor: context.colorPalette.blue091,
            textColor: context.colorPalette.white,
          ),
          body: Padding(
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
                              child: CustomTextField.text(onChanged: (value) {}),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.phoneNum,
                              child: CustomTextField.phone(
                                context,
                                code: null,
                                onChanged: (value) {},
                                onCodeSelected: (value) {},
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.email,
                              child: CustomTextField.email(
                                context,
                                onChanged: (value) {},
                                hintText: "",
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.dateOfBirth,
                              child: DateEditor(
                                value: null,
                                onChanged: (value) {},
                              ),
                            ),
                            // WidgetTitle(
                            //   title: context.appLocalization.country,
                            //   child: DropDownEditor<String>(
                            //     items: [
                            //       DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                            //       DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                            //     ],
                            //     onChanged: (value) {},
                            //     title: context.appLocalization.choose,
                            //     value: null,
                            //   ),
                            // ),
                            WidgetTitle(
                              title: context.appLocalization.gender,
                              child: DropDownEditor<String>(
                                items: GenderEnum.values.map((e) {
                                  return DropdownMenuItem(
                                    value: e.value,
                                    child: Text(
                                      GenderEnum.label(context, e.value),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                                title: context.appLocalization.choose,
                                value: null,
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.maritalStatus,
                              child: DropDownEditor<String>(
                                items: MaritalStatusEnum.values.map((e) {
                                  return DropdownMenuItem(
                                    value: e.value,
                                    child: Text(
                                      MaritalStatusEnum.label(context, e.value),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                                title: context.appLocalization.choose,
                                value: null,
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
                                    child: Text(
                                      e.name,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                                title: context.appLocalization.choose,
                                value: null,
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.branch,
                              child: DropDownEditor<String>(
                                items: branches.map((e) {
                                  return DropdownMenuItem(
                                    value: e.id,
                                    child: Text(
                                      e.name,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                                title: context.appLocalization.choose,
                                value: null,
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.jobTitle,
                              child: CustomTextField.text(onChanged: (value) {}),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.basicSalary,
                              child: CustomTextField.double(onChanged: (value) {}),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.contractDuration,
                              child: CustomTextField.double(onChanged: (value) {}),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.dateStartWork,
                              child: DateEditor(
                                value: DateTime.now(),
                                onChanged: (value) {},
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.expirationDateContract,
                              child: DateEditor(
                                value: DateTime.now(),
                                onChanged: (value) {},
                              ),
                            ),
                            WidgetTitle(
                              title: "ID",
                              child: CustomTextField.text(onChanged: (value) {}),
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
                            // WidgetTitle(
                            //   title: context.appLocalization.nameBankSalary,
                            //   child: DropDownEditor<String>(
                            //     items: [
                            //       DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                            //       DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                            //     ],
                            //     onChanged: (value) {},
                            //     title: context.appLocalization.choose,
                            //     value: null,
                            //   ),
                            // ),
                            // WidgetTitle(
                            //   title: context.appLocalization.branch,
                            //   child: DropDownEditor<String>(
                            //     items: [
                            //       DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                            //       DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                            //     ],
                            //     onChanged: (value) {},
                            //     title: context.appLocalization.choose,
                            //     value: null,
                            //   ),
                            // ),
                            WidgetTitle(
                              title: context.appLocalization.nameBankSalary,
                              child: CustomTextField.text(
                                onChanged: (value) {},
                              ),
                            ),
                            WidgetTitle(
                              title: context.appLocalization.accountNumberIBAN,
                              child: CustomTextField.double(
                                onChanged: (value) {},
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
        );
      },
    );
  }
}
