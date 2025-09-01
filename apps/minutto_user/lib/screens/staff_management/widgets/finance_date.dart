import 'package:shared/shared.dart';

class FinanceDate extends StatelessWidget {
  const FinanceDate({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.appLocalization.financialStatements,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.nameBankSalary,
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
            title: context.appLocalization.accountNumberIBAN,
            child: CustomTextField.double(
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
