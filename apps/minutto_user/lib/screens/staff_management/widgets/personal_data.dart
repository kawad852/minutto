import 'package:shared/shared.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.appLocalization.personalData,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.employeeName,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          WidgetTitle(
            title: context.appLocalization.phoneNum,
            child: CustomTextField.phone(
              context,
              code: null,
              onChanged: (value) {},
              onCodeSelected: (value) {},
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.email,
            child: CustomTextField.email(
              context,
              onChanged: (value) {},
              hintText: "",
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.dateOfBirth,
            child: DateEditor(
              value: DateTime.now(),
              onChanged: (value) {},
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.country,
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
            title: context.appLocalization.gender,
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
            title: context.appLocalization.maritalStatus,
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
        ],
      ),
    );
  }
}
