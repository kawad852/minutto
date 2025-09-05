import 'package:shared/shared.dart';

class ShiftInputScreen extends StatefulWidget {
  final ShiftModel? shift;

  const ShiftInputScreen({
    super.key,
    this.shift,
  });

  @override
  State<ShiftInputScreen> createState() => _ShiftInputScreenState();
}

class _ShiftInputScreenState extends State<ShiftInputScreen> {
  late ShiftModel _shift;
  final _formKey = GlobalKey<FormState>();

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();
  bool get _isAdd => widget.shift == null;

  void _onSubmit(BuildContext context) {
    _formKey.onSubmit(
      context,
      isAdd: _isAdd,
      onCall: (user) async {
        final docRef = _firebaseFireStore.shifts.doc(_isAdd ? null : _shift.id);
        if (_isAdd) {
          _shift.id = docRef.id;
          _shift.companyId = user.companyId;
          _shift.createdAt = kNowDate;
        }
        await docRef.set(_shift);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _shift = ShiftModel.fromJson(
      widget.shift?.toJson() ?? ShiftModel().toJson(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addShift),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        title: context.appLocalization.submit,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              WidgetTitle(
                title: context.appLocalization.shiftName,
                child: CustomTextField.text(
                  initialValue: _shift.name,
                  onChanged: (value) => _shift.name = value!,
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.startsFrom,
                      child: DayTimeEditor(
                        initialValue: _shift.startHour,
                        onChanged: (value) => _shift.startHour = value,
                      ),
                    ),
                  ),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.endsIn,
                      child: DayTimeEditor(
                        initialValue: _shift.endHour,
                        onChanged: (value) => _shift.endHour = value,
                      ),
                    ),
                  ),
                ],
              ),
              BranchesEditor(
                branchIds: _shift.branchIds,
                onChanged: (id) {
                  setState(() {
                    if (_shift.branchIds.contains(id)) {
                      _shift.branchIds.remove(id);
                    } else {
                      _shift.branchIds.add(id);
                    }
                  });
                },
                onClosed: () {
                  setState(() {});
                },
              ),
              WidgetTitle(
                title: context.appLocalization.day,
                child: Wrap(
                  spacing: 5,
                  children: WeekDayEnum.values.map((e) {
                    final value = e.value;
                    final label = e.label();
                    return FilterChip(
                      label: Text(label),
                      selected: _shift.days.contains(value),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _shift.days.add(value);
                          } else {
                            _shift.days.remove(value);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
