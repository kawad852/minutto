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
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            WidgetTitle(
              title: context.appLocalization.shiftName,
              child: CustomTextField.text(
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
            WidgetTitle(
              title: context.appLocalization.chooseMoreBranch,
              child: ListBody(
                children: [
                  MenuAnchor(
                    // childFocusNode: _buttonFocusNode,
                    crossAxisUnconstrained: false,
                    onClose: () {
                      setState(() {});
                    },
                    menuChildren: MyStorage.branches.map((e) {
                      final id = e.id;
                      return CheckboxMenuButton(
                        // closeOnActivate: false,
                        value: _shift.branchIds.contains(id),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              _shift.branchIds.add(id);
                            } else {
                              _shift.branchIds.remove(id);
                            }
                          });
                        },
                        child: Text(e.name),
                      );
                    }).toList(),
                    builder: (BuildContext context, MenuController controller, Widget? child) {
                      return CustomTextField.clickable(
                        labelText: context.appLocalization.choose,
                        onTap: () {
                          controller.open();
                        },
                      );
                    },
                  ),
                  Wrap(
                    spacing: 5,
                    children: _shift.branchIds.map((e) {
                      final name = CacheService.instance.getBranch(e).name;
                      return InputChip(
                        label: Text(name),
                        onDeleted: () {
                          setState(() {
                            _shift.branchIds.remove(e);
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
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
    );
  }
}
