import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class RequestInputScreen extends StatefulWidget {
  final String collection;

  const RequestInputScreen({
    super.key,
    required this.collection,
  });

  @override
  State<RequestInputScreen> createState() => _RequestInputScreenState();
}

class _RequestInputScreenState extends State<RequestInputScreen> {
  late RequestModel _request;
  var _files = <XFile>[];
  final _formKey = GlobalKey<FormState>();
  final _storageService = StorageService();

  String get _collection => widget.collection;
  bool get _isVacations => _collection == MyCollections.vacations;
  bool get _isLeaves => _collection == MyCollections.leaves;
  bool get _isSalaryAdvances => _collection == MyCollections.salaryAdvances;
  bool get _isOvertimes => _collection == MyCollections.overtimes;

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final user = MySharedPreferences.user!;
          final docRef = _firebaseFireStore.collection(_collection).requestConvertor.doc();
          _request.id = docRef.id;
          _request.companyId = user.companyId!;
          _request.userId = user.id!;
          _request.createdAt = kNowDate;
          _request.attachments = await _storageService.uploadFiles(
            _collection,
            _files,
          );
          await docRef.set(_request);
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
    _request = RequestModel(
      createdAt: kNowDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    final info = _collection.info(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(info.inputTitle),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        title: context.appLocalization.submitRequest,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 15,
            children: [
              if (_isSalaryAdvances)
                WidgetTitle(
                  title: context.appLocalization.debtValue,
                  child: CustomTextField.text(onChanged: (value) {}),
                ),
              if (_isVacations || _isLeaves)
                WidgetTitle(
                  title: _isVacations
                      ? context.appLocalization.vacationType
                      : context.appLocalization.leaveType,
                  child: DropDownEditor<String>(
                    value: _request.reason,
                    onChanged: (value) => _request.reason = value,
                    title: context.appLocalization.choose,
                    items: LeaveReason.values.map((e) {
                      final label = LeaveReason.label(context, e.value);
                      return DropdownMenuItem(
                        value: e.value,
                        child: Text(label),
                      );
                    }).toList(),
                  ),
                ),
              if (_isLeaves || _isOvertimes)
                WidgetTitle(
                  title: _isLeaves
                      ? context.appLocalization.leaveDate
                      : context.appLocalization.overtimeHistory,
                  child: DateEditor(
                    value: _request.date,
                    onChanged: (value) => _request.date = value,
                  ),
                ),
              // if (_isLeaves)
              Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.fromHour,
                      child: DayTimeEditor(
                        initialValue: _request.fromHour,
                        onChanged: (value) => _request.fromHour = value,
                      ),
                    ),
                  ),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.toHour,
                      child: DayTimeEditor(
                        initialValue: _request.toHour,
                        onChanged: (value) => _request.toHour = value,
                      ),
                    ),
                  ),
                ],
              ),
              // if (_isLeaves)
              //   Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              //     spacing: 10,
              //     children: [
              //       Expanded(
              //         child: WidgetTitle(
              //           title: context.appLocalization.fromHour,
              //           child: DayTimeEditor(
              //             initialValue: "2:00",
              //             onChanged: (value) => {},
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: WidgetTitle(
              //           title: context.appLocalization.toHour,
              //           child: DayTimeEditor(
              //             initialValue: "2:00",
              //             onChanged: (value) {},
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              if (_isVacations)
                Row(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.startDate,
                        child: DateEditor(
                          onChanged: (value) => _request.fromDate = value,
                          value: _request.fromDate,
                        ),
                      ),
                    ),
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.endDate,
                        child: DateEditor(
                          onChanged: (value) => _request.toDate = value,
                          value: _request.toDate,
                        ),
                      ),
                    ),
                  ],
                ),
              WidgetTitle(
                title: context.appLocalization.note,
                child: CustomTextField.text(
                  onChanged: (value) => _request.notes = value,
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
      ),
    );
  }
}
