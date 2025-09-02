import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AdvancesManagementScreen extends StatefulWidget {
  const AdvancesManagementScreen({super.key});

  @override
  State<AdvancesManagementScreen> createState() => _AdvancesManagementScreenState();
}

class _AdvancesManagementScreenState extends State<AdvancesManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.advances),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        itemBuilder: (context, index) {
          return AdvanceManageCard();
        },
      ),
    );
  }
}
