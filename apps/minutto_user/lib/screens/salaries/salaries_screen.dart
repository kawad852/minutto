import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class SalariesScreen extends StatefulWidget {
  const SalariesScreen({super.key});

  @override
  State<SalariesScreen> createState() => _SalariesScreenState();
}

class _SalariesScreenState extends State<SalariesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.salaries)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Text(
            "${context.appLocalization.salariesYear} 2023",
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: 5,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 10),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SalaryCard();
            },
          ),
        ],
      ),
    );
  }
}
