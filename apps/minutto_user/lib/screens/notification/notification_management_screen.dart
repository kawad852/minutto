import 'package:shared/shared.dart';

class NotificationManagementScreen extends StatefulWidget {
  const NotificationManagementScreen({super.key});

  @override
  State<NotificationManagementScreen> createState() => _NotificationManagementScreenState();
}

class _NotificationManagementScreenState extends State<NotificationManagementScreen> {
  final _formKey = GlobalKey<FormState>();

  void _onSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.unFocusKeyboard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.sendNewNotification),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
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
                child: CustomTextField.text(onChanged: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: WidgetTitle(
                  title: context.appLocalization.notificationText,
                  child: CustomTextField.text(
                    onChanged: (value) {},
                    maxLines: 5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
