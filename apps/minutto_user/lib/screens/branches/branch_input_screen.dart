import 'package:shared/shared.dart';

class BranchInputScreen extends StatefulWidget {
  const BranchInputScreen({super.key});

  @override
  State<BranchInputScreen> createState() => _BranchInputScreenState();
}

class _BranchInputScreenState extends State<BranchInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.addBranch),
      ),
      bottomNavigationBar: BottomButton(
        onPressed: () {},
        backgroundColor: context.colorPalette.blue091,
        textColor: context.colorPalette.white,
        title: context.appLocalization.add,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          WidgetTitle(
            title: context.appLocalization.branchName,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
              title: context.appLocalization.phoneNum,
              child: CustomTextField.phone(
                context,
                code: null,
                onChanged: (value) {},
                onCodeSelected: (value) {},
              ),
            ),
          ),
          WidgetTitle(
            title: context.appLocalization.responsibleManager,
            child: CustomTextField.text(onChanged: (value) {}),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: WidgetTitle(
              title: context.appLocalization.city,
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
          Text(
            context.appLocalization.workingHours,
            style: context.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 7),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.startsFrom,
                  child: DateEditor(
                    onChanged: (value) {},
                    suffixIcon: CustomSvg(MyIcons.clock),
                    value: DateTime.now(),
                  ),
                ),
              ),
              Expanded(
                child: WidgetTitle(
                  title: context.appLocalization.endsIn,
                  child: DateEditor(
                    onChanged: (value) {},
                    suffixIcon: CustomSvg(MyIcons.clock),
                    value: DateTime.now(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            context.appLocalization.determineLocationOnMap,
            style: context.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
