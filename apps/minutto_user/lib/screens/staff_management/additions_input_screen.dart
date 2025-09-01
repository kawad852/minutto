import 'package:shared/shared.dart';

class AdditionsInputScreen extends StatefulWidget {
  final AdditionsType additionsType;
  const AdditionsInputScreen({super.key, required this.additionsType});

  @override
  State<AdditionsInputScreen> createState() => _AdditionsInputScreenState();
}

class _AdditionsInputScreenState extends State<AdditionsInputScreen> {
  (String, String, String) _getInfo(BuildContext context) {
    switch (widget.additionsType) {
      case AdditionsType.alarm:
        return (
          context.appLocalization.addAlarm,
          context.appLocalization.alarmType,
          context.appLocalization.alarmPenalty,
        );
      case AdditionsType.discount:
        return (
          context.appLocalization.addDiscount,
          context.appLocalization.discountType,
          context.appLocalization.discountValue,
        );
      case AdditionsType.incentive:
        return (
          context.appLocalization.addIncentive,
          context.appLocalization.typeIncentive,
          context.appLocalization.incentiveValue,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = _getInfo(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(data.$1),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WidgetTitle(
              title: context.appLocalization.employeeName,
              miniTitle: "(${context.appLocalization.morePersonCanSelected})",
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
            WidgetTitle(
              title: data.$2,
              child: DropDownEditor<String>(
                items: [
                  DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                  DropdownMenuItem(value: 'الاردن', child: Text('الاردن')),
                ],
                onChanged: (value) {},
                title: context.appLocalization.choose,
                value: null,
              ),
            ),
            WidgetTitle(
              title: data.$3,
              child: CustomTextField.double(onChanged: (value) {}),
            ),
            if (widget.additionsType != AdditionsType.alarm)
              Column(
                spacing: 15,
                children: [
                  WidgetTitle(
                    title: context.appLocalization.branchEmployeeBelongs,
                    child: DropDownEditor<String>(
                      items: [
                        DropdownMenuItem(value: 'سوريا', child: Text('سوريا')),
                        DropdownMenuItem(
                          value: 'الاردن',
                          child: Text('الاردن'),
                        ),
                      ],
                      onChanged: (value) {},
                      title: context.appLocalization.choose,
                      value: null,
                    ),
                  ),
                  WidgetTitle(
                    title: context.appLocalization.date,
                    child: DateEditor(
                      value: DateTime.now(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            WidgetTitle(
              title: context.appLocalization.note,
              child: CustomTextField.text(
                onChanged: (value) {},
                hintText: context.appLocalization.writeNote,
                maxLines: 4,
              ),
            ),
            WidgetTitle(
              title: context.appLocalization.attachDocument,
              miniTitle: " (${context.appLocalization.attachDoucOrPdf})",
              child: AttachCard(),
            ),
          ],
        ),
      ),
    );
  }
}
