import 'package:shared/shared.dart';

class WorkData extends StatelessWidget {
  const WorkData({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.appLocalization.workData,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          WidgetTitle(
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
          WidgetTitle(
            title: context.appLocalization.jobTitle,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          WidgetTitle(
            title: context.appLocalization.basicSalary,
            child: CustomTextField.double(onChanged: (value) {}),
          ),
          WidgetTitle(
            title: context.appLocalization.contractDuration,
            child: CustomTextField.double(onChanged: (value) {}),
          ),
          WidgetTitle(
            title: context.appLocalization.dateStartWork,
            child: DateEditor(
              value: DateTime.now(),
              onChanged: (value) {},
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.expirationDateContract,
            child: DateEditor(
              value: DateTime.now(),
              onChanged: (value) {},
            ),
          ),
          WidgetTitle(
            title: "ID",
            child: CustomTextField.text(onChanged: (value) {}),
          ),
        ],
      ),
    );
  }
}
