import 'package:shared/shared.dart';

class RequestInputScreen extends StatefulWidget {
  final OrderTypeEnum orderTypeEnum;
  final String collection;

  const RequestInputScreen({
    super.key,
    required this.orderTypeEnum,
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

  FirebaseFirestore get _firebaseFireStore => getIt<FirebaseFirestore>();

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
      ApiService.fetch(
        context,
        callBack: () async {
          // final user = MySharedPreferences.user!;
          final docRef = _firebaseFireStore.vacations.doc();
          _request.id = docRef.id;
          // _leave.companyId = user.companyId!;
          // _leave.userId = user.id!;
          _request.createdAt = kNowDate;
          _request.attachments = await _storageService.uploadFiles(
            widget.collection,
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
    _request = RequestModel(createdAt: kNowDate, fromDate: kNowDate, toDate: kNowDate);
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
          _getTitle(),
        ),
      ),
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
                      return DropdownMenuItem(value: e.value, child: Text('مرضية'));
                    }).toList(),
                    onChanged: (value) => _request.requestType = value!,
                    value: _request.requestType.isNotEmpty ? _request.requestType : null,
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
                  spacing: 10,
                  children: [
                    Expanded(
                      child: WidgetTitle(
                        title: context.appLocalization.fromHour,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: CustomTextField.text(onChanged: (value) {}),
                      ),
                    ),
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
