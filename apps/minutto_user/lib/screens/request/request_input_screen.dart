import 'package:shared/shared.dart';

class RequestInputScreen extends StatefulWidget {
  final String collection;
  final bool isVacation;

  const RequestInputScreen({
    super.key,
    required this.collection,
    this.isVacation = false,
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
  bool get _isLeave => _collection == MyCollections.leaves;
  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();

  String get _getTitle {
    switch (_collection) {
      case MyCollections.overtimes:
        return context.appLocalization.overtime;
      default:
        if (widget.isVacation) {
          return context.appLocalization.vacationRequest;
        }
        return context.appLocalization.leaveRequest;
    }
  }

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
          if (_collection != MyCollections.overtimes) {
            _request.type = widget.isVacation
                ? LeaveRequestType.vacation.value
                : LeaveRequestType.leave.value;
          }
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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     final auth = await FirebaseAuth.instance.signInWithEmailAndPassword(
      //       email: "khaled@gmail.com",
      //       password: "123456",
      //     );
      //     kFirebaseInstant.users.doc(auth.user!.uid).get().then((value) {
      //       MySharedPreferences.user = value.data()!;
      //     });
      //   },
      // ),
      appBar: AppBar(
        title: Text(
          _getTitle,
        ),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        title: context.appLocalization.send,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (_collection == MyCollections.leaves)
                WidgetTitle(
                  title: context.appLocalization.requestType,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: DropDownEditor(
                    items: LeaveReason.values.map((e) {
                      final label = LeaveReason.label(context, e.value);
                      return DropdownMenuItem(
                        value: e.value,
                        child: Text(label),
                      );
                    }).toList(),
                    onChanged: (value) => _request.reason = value!,
                    value: _request.reason,
                  ),
                ),
              if (_isLeave && widget.isVacation)
                Row(
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.fromDate,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DateEditor(
                          value: _request.fromDate,
                          onChanged: (value) => _request.fromDate = value,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.toDate,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DateEditor(
                          value: _request.toDate,
                          onChanged: (value) => _request.toDate = value,
                        ),
                      ),
                    ),
                  ],
                ),
              if (!_isLeave)
                WidgetTitle(
                  title: _collection == MyCollections.overtimes
                      ? context.appLocalization.overtimeHistory
                      : context.appLocalization.leaveDate,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: DateEditor(
                    value: _request.date,
                    onChanged: (value) => _request.date = value,
                  ),
                ),
              if (_isLeave || _collection == MyCollections.overtimes)
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.fromHour,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DayTimeEditor(
                          initialValue: _request.fromHour,
                          onChanged: (value) => _request.fromHour = value,
                        ),
                      ),
                    ),
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.toHour,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: DayTimeEditor(
                          initialValue: _request.toHour,
                          onChanged: (value) => _request.toHour = value,
                        ),
                      ),
                    ),
                  ],
                ),
              RequestForm(
                onNotesChanged: (value) => _request.notes = value,
                attachments: _request.attachments,
                onAttachmentChanged: (List<XFile> value) => _files = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
