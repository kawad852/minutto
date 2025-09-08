import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class SalariesEmployeeScreen extends StatefulWidget {
  const SalariesEmployeeScreen({super.key});

  @override
  State<SalariesEmployeeScreen> createState() => _SalariesEmployeeScreenState();
}

class _SalariesEmployeeScreenState extends State<SalariesEmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text("صهيب البكار"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 15,
          children: [
            DateRangeCard(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return EmployeeSalaryCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
