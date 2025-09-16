import 'package:shared/shared.dart';

class DepartmentInputScreen extends StatefulWidget {
  final DepartmentModel? department;

  const DepartmentInputScreen({
    super.key,
    this.department,
  });

  @override
  State<DepartmentInputScreen> createState() => _DepartmentInputScreenState();
}

class _DepartmentInputScreenState extends State<DepartmentInputScreen> {
  final _formKey = GlobalKey<FormState>();
  late DepartmentModel _department;

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();
  bool get _isAdd => _department.id.isEmpty;

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          final docRef = _firebaseFireStore.departments.doc(
            _department.id.isNotEmpty ? _department.id : null,
          );
          if (_isAdd) {
            _department.id = docRef.id;
            _department.companyId = user.companyId;
            _department.createdAt = kNowDate;
          }
          await docRef.set(_department);
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
  }

  @override
  void initState() {
    super.initState();
    _department = DepartmentModel.fromJson(
      widget.department?.toJson() ??
          DepartmentModel(
            createdAt: kNowDate,
          ).toJson(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final branches = MyStorage.branches;
    final users = MyStorage.users;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addDepartment),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              WidgetTitle(
                title: context.appLocalization.departmentName,
                child: CustomTextField.text(
                  initialValue: _department.name,
                  onChanged: (value) => _department.name = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.branch,
                  child: DropDownEditor<String>(
                    items: branches.map((e) {
                      return DropdownMenuItem(
                        value: e.id,
                        child: Text(e.name),
                      );
                    }).toList(),
                    onChanged: (value) => _department.branchId = value!,
                    title: context.appLocalization.choose,
                    value: _department.branchId.isNotEmpty ? _department.branchId : null,
                  ),
                ),
              ),
              WidgetTitle(
                title: context.appLocalization.departmentManager,
                child: DropDownEditor<String>(
                  items: users.map((e) {
                    return DropdownMenuItem(
                      value: e.id,
                      child: Text(e.name),
                    );
                  }).toList(),
                  onChanged: (value) => _department.managerId = value!,
                  title: context.appLocalization.choose,
                  value: _department.managerId.isNotEmpty ? _department.managerId : null,
                ),
              ),
              // const SizedBox(height: 25),
              // Row(
              //   children: [
              //     Expanded(
              //       child: Text(
              //         context.appLocalization.condition,
              //         style: context.textTheme.titleMedium!.copyWith(
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //     ),
              //     // CustomSwitch(onChanged: (value) {}),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
