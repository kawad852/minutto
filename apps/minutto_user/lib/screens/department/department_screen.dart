import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class DepartmentScreen extends StatefulWidget {
  const DepartmentScreen({super.key});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.departments),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 150,
              child: StretchedButton(
                onPressed: () {
                  context.navigate((context) => const DepartmentInputScreen());
                },
                child: Text(
                  context.appLocalization.addDepartment,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return DepartmentCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
