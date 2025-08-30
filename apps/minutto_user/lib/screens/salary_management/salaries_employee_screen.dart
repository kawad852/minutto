import 'package:minutto_user/shared.dart';
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
            Container(
              width: double.infinity,
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: context.colorPalette.grey919),
                borderRadius: BorderRadius.circular(kRadiusSecondary),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "12 مارس 2023 - 12 يوليو 2025",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: context.colorPalette.blue475,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  CustomSvg(
                    MyIcons.calander,
                    color: context.colorPalette.black,
                  ),
                ],
              ),
            ),
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
