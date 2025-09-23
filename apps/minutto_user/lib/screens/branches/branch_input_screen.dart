import 'package:shared/shared.dart';

class BranchInputScreen extends StatefulWidget {
  const BranchInputScreen({super.key});

  @override
  State<BranchInputScreen> createState() => _BranchInputScreenState();
}

class _BranchInputScreenState extends State<BranchInputScreen> {
  late BranchModel _branch;
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          final docRef = _firebaseFireStore.branches.doc();
          _branch.id = docRef.id;
          _branch.companyId = user.companyId;
          _branch.createdAt = kNowDate;
          await docRef.set(_branch);
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
    _branch = BranchModel(
      createdAt: kNowDate,
      geoLocation: GeoLocationModel(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cities = MyStorage.cities;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addBranch),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
        title: context.appLocalization.add,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetTitle(
                title: context.appLocalization.branchName,
                child: CustomTextField.text(
                  onChanged: (value) => _branch.name = value!,
                ),
              ),
              const SizedBox(height: 15),
              WidgetTitle(
                title: context.appLocalization.email,
                child: CustomTextField.email(
                  context,
                  onChanged: (value) => _branch.email = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.phoneNum,
                  child: PhoneEditor(
                    code: _branch.phoneNumberCountryCode,
                    onChanged: (value) => _branch.phoneNumber = value!,
                    onCodeSelected: (value) => _branch.phoneNumberCountryCode = value,
                  ),
                ),
              ),
              // WidgetTitle(
              //   title: context.appLocalization.responsibleManager,
              //   child: CustomTextField.text(onChanged: (value) {}),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.city,
                  child: DropDownEditor<String>(
                    items: cities.map((e) {
                      return DropdownMenuItem(
                        value: e.id,
                        child: Text(
                          e.name,
                        ),
                      );
                    }).toList(),
                    onChanged: (value) => _branch.cityId = value!,
                    title: context.appLocalization.choose,
                    value: _branch.cityId.isEmpty ? null : _branch.cityId,
                  ),
                ),
              ),
              Text(
                context.appLocalization.workingHours,
                style: context.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 7),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.startsFrom,
                      child: DayTimeEditor(
                        initialValue: _branch.startWorkingHour,
                        onChanged: (value) => _branch.startWorkingHour = value,
                      ),
                    ),
                  ),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.endsIn,
                      child: DayTimeEditor(
                        initialValue: _branch.endWorkingHour,
                        onChanged: (value) => _branch.endWorkingHour = value,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.location,
                  padding: EdgeInsetsGeometry.only(bottom: 10),
                  child: Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: CustomTextField.double(
                          initialValue: _branch.geoLocation!.latitude == 0
                              ? null
                              : _branch.geoLocation!.latitude,
                          onChanged: (value) => _branch.geoLocation!.latitude = value!,
                          labelText: context.appLocalization.latitude,
                        ),
                      ),
                      Expanded(
                        child: CustomTextField.double(
                          initialValue: _branch.geoLocation!.latitude == 0
                              ? null
                              : _branch.geoLocation!.latitude,
                          onChanged: (value) => _branch.geoLocation!.latitude = value!,
                          labelText: context.appLocalization.longitude,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // const SizedBox(height: 15),
              // Text(
              //   context.appLocalization.determineLocationOnMap,
              //   style: context.textTheme.titleMedium!.copyWith(
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
