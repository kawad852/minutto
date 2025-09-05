import 'package:shared/shared.dart';

class HolidayInputScreen extends StatefulWidget {
  final HolidayModel? holiday;

  const HolidayInputScreen({
    super.key,
    this.holiday,
  });

  @override
  State<HolidayInputScreen> createState() => _HolidayInputScreenState();
}

class _HolidayInputScreenState extends State<HolidayInputScreen> {
  late HolidayModel _holiday;
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();
  bool get _isAdd => widget.holiday == null;

  void _onSubmit(BuildContext context) {
    _formKey.onSubmit(
      context,
      isAdd: _isAdd,
      onCall: (user) async {
        final docRef = _firebaseFireStore.holidays.doc(_isAdd ? null : _holiday.id);
        if (_isAdd) {
          _holiday.id = docRef.id;
          _holiday.companyId = user.companyId;
          _holiday.createdAt = kNowDate;
        }
        await docRef.set(_holiday);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _holiday = HolidayModel(
      branchIds: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.vacations),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        title: context.appLocalization.submit,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            children: [
              WidgetTitle(
                title: context.appLocalization.vacationName,
                child: CustomTextField.text(
                  initialValue: _holiday.name,
                  onChanged: (value) => _holiday.name = value!,
                ),
              ),
              Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.startDate,
                      child: DateEditor(
                        onChanged: (value) => _holiday.fromDate = value,
                        value: _holiday.fromDate,
                      ),
                    ),
                  ),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.endDate,
                      child: DateEditor(
                        onChanged: (value) => _holiday.toDate = value,
                        value: _holiday.toDate,
                      ),
                    ),
                  ),
                ],
              ),
              BranchesEditor(
                branchIds: _holiday.branchIds,
                onChanged: (id) {
                  setState(() {
                    if (_holiday.branchIds.contains(id)) {
                      _holiday.branchIds.remove(id);
                    } else {
                      _holiday.branchIds.add(id);
                    }
                  });
                },
                onClosed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
