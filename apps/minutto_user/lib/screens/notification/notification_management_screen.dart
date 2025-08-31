import 'package:shared/shared.dart';

class NotificationManagementScreen extends StatefulWidget {
  const NotificationManagementScreen({super.key});

  @override
  State<NotificationManagementScreen> createState() => _NotificationManagementScreenState();
}

class _NotificationManagementScreenState extends State<NotificationManagementScreen> {
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
          WidgetTitle(
            title: context.appLocalization.branch,
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
              title: context.appLocalization.department,
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
          ),
          WidgetTitle(
            title: context.appLocalization.employees,
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
              title: context.appLocalization.sendingDate,
              child: DateEditor(
                value: DateTime.now(),
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
