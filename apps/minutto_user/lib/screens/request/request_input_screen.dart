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
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.vacationRequest),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {
          _onSubmit(context);
        },
        title: context.appLocalization.submitRequest,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 15,
          children: [
            if (_isSalaryAdvances)
              WidgetTitle(
                title: context.appLocalization.debtValue,
                child: CustomTextField.text(onChanged: (value) {}),
              ),
            if (_isOvertimes)
              WidgetTitle(
                title: context.appLocalization.overtimeHistory,
                child: DateEditor(
                  value: DateTime.now(),
                  onChanged: (value) => {},
                ),
              ),
            if (_isVacations)
              WidgetTitle(
                title: context.appLocalization.vacationType,
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
            if (_isLeaves)
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.fromHour,
                      child: DayTimeEditor(
                        initialValue: "2:00",
                        onChanged: (value) => {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: WidgetTitle(
                      title: context.appLocalization.toHour,
                      child: DayTimeEditor(
                        initialValue: "2:00",
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.startDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
                    ),
                  ),
                ),
                Expanded(
                  child: WidgetTitle(
                    title: context.appLocalization.endDate,
                    child: DateEditor(
                      onChanged: (value) {},
                      value: DateTime.now(),
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
    );
  }
}
