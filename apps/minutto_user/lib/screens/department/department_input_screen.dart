import 'package:shared/shared.dart';

class DepartmentInputScreen extends StatefulWidget {
  const DepartmentInputScreen({super.key});

  @override
  State<DepartmentInputScreen> createState() => _DepartmentInputScreenState();
}

class _DepartmentInputScreenState extends State<DepartmentInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addDepartment),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        title: context.appLocalization.add,
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          WidgetTitle(
            title: context.appLocalization.departmentName,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
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
          ),
          WidgetTitle(
            title: context.appLocalization.departmentManager,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Text(
                  context.appLocalization.condition,
                  style: context.textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              CustomSwitch(onChanged: (value) {}),
            ],
          ),
        ],
      ),
    );
  }
}
