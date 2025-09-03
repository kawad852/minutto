import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class EmploymentContractsScreen extends StatefulWidget {
  const EmploymentContractsScreen({super.key});

  @override
  State<EmploymentContractsScreen> createState() => _EmploymentContractsScreenState();
}

class _EmploymentContractsScreenState extends State<EmploymentContractsScreen> {
  TextStyle get style => TextStyle(
    color: context.colorPalette.blue091,
    fontSize: 14,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.employmentContracts),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: context.colorPalette.greyF9F,
              border: Border.all(color: context.colorPalette.greyEAE),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          context.appLocalization.employeeName,
                          textAlign: TextAlign.start,
                          style: style,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          context.appLocalization.expirationDateContract,
                          textAlign: TextAlign.center,
                          style: style,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          context.appLocalization.numberDaysRemaining,
                          textAlign: TextAlign.end,
                          style: style,
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: context.colorPalette.greyEAE),
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return TabelBubble();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
