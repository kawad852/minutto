import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AdvancesScheduleScreen extends StatefulWidget {
  const AdvancesScheduleScreen({super.key});

  @override
  State<AdvancesScheduleScreen> createState() => _AdvancesScheduleScreenState();
}

class _AdvancesScheduleScreenState extends State<AdvancesScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.advances),
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
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return AdvanceInfoCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
