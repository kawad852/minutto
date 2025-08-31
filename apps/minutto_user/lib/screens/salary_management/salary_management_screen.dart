import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class SalaryManagementScreen extends StatefulWidget {
  const SalaryManagementScreen({super.key});

  @override
  State<SalaryManagementScreen> createState() => _SalaryManagementScreenState();
}

class _SalaryManagementScreenState extends State<SalaryManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.salaries),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          children: [
            CustomTextField.text(
              onChanged: (value) {},
              prefixIcon: IconButton(
                onPressed: null,
                icon: const CustomSvg(MyIcons.search),
              ),
              suffixIcon: const CustomSvg(MyIcons.filter),
              hintText: context.appLocalization.searchByEmployeeName,
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
            ReportDate(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return EmployeeCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
