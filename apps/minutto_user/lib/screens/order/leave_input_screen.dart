import 'package:shared/shared.dart';

class LeaveInputScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  const LeaveInputScreen({super.key, required this.orderTypeEnum});

  @override
  State<LeaveInputScreen> createState() => _LeaveInputScreenState();
}

class _LeaveInputScreenState extends State<LeaveInputScreen> {
  late LeaveModel _leave;
  var _files = <XFile>[];
  final _formKey = GlobalKey<FormState>();

  String _getTitle() {
    switch (widget.orderTypeEnum) {
      case OrderTypeEnum.overtime:
        return context.appLocalization.overtime;
      case OrderTypeEnum.leave:
        return context.appLocalization.leaveRequest;
      case OrderTypeEnum.vacation:
        return context.appLocalization.vacationRequest;
    }
  }

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      //
    }
  }

  @override
  void initState() {
    super.initState();
    _leave = LeaveModel(createdAt: kNowDate, fromDate: kNowDate, toDate: kNowDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_getTitle())),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () => _onSubmit(context),
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (widget.orderTypeEnum != OrderTypeEnum.overtime)
                WidgetTitle(
                  title: context.appLocalization.requestType,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: DropDownEditor(
                    items: LeaveType.values.map((e) {
                      return DropdownMenuItem(value: 'مرضية', child: Text('مرضية'));
                    }).toList(),
                    onChanged: (value) => _leave.requestType = value!,
                    value: _leave.requestType.isNotEmpty ? _leave.requestType : null,
                  ),
                ),
              if (widget.orderTypeEnum == OrderTypeEnum.vacation)
                Row(
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.fromDate,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DateEditor(
                          value: _leave.fromDate,
                          onChanged: (value) => _leave.fromDate = value,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.toDate,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DateEditor(
                          value: _leave.toDate,
                          onChanged: (value) => _leave.toDate = value,
                        ),
                      ),
                    ),
                  ],
                ),
              if (widget.orderTypeEnum != OrderTypeEnum.vacation)
                WidgetTitle(
                  title: widget.orderTypeEnum == OrderTypeEnum.overtime
                      ? context.appLocalization.overtimeHistory
                      : context.appLocalization.leaveDate,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              if (widget.orderTypeEnum != OrderTypeEnum.vacation)
                Row(
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.fromHour,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CustomTextField.text(onChanged: (value) {}),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.toHour,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CustomTextField.text(onChanged: (value) {}),
                      ),
                    ),
                  ],
                ),
              RequestForm(
                onNotesChanged: (value) => _leave.notes = value,
                attachments: _leave.attachments,
                onAttachmentChanged: (List<XFile> value) => _files = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
