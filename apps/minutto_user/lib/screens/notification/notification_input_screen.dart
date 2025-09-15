import 'package:shared/shared.dart';

class NotificationInputScreen extends StatefulWidget {
  const NotificationInputScreen({super.key});

  @override
  State<NotificationInputScreen> createState() => _NotificationInputScreenState();
}

class _NotificationInputScreenState extends State<NotificationInputScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedBranchId;
  final _notification = NotificationModel(
    data: NotificationDataModel(
      type: "",
    ),
    notification: NotificationHeaderModel(),
  );

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
      ApiService.fetch(
        context,
        callBack: () async {
          final functions = FirebaseFunctions.instanceFor(region: "europe-west3");
          await functions.httpsCallable('broadcastGeneralNotification').call({
            "companyId": MySharedPreferences.company!.id,
            if (_selectedBranchId != null) "branchId": _selectedBranchId,
            "title": _notification.notification!.title,
            "body": _notification.notification!.body,
          });
          if (context.mounted) {
            context.showSnackBar(context.appLocalization.sentSuccessfully);
            Navigator.pop(context);
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.sendNewNotification),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () => _onSubmit(context),
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
        title: context.appLocalization.send,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              WidgetTitle(
                title: context.appLocalization.notificationTitle,
                child: CustomTextField.text(
                  onChanged: (value) => _notification.notification!.title = value!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.notificationText,
                  child: CustomTextField.text(
                    onChanged: (value) => _notification.notification!.body = value!,
                    maxLines: 5,
                  ),
                ),
              ),
              BranchEditor(
                value: _selectedBranchId,
                onChanged: (value) => _selectedBranchId = value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
