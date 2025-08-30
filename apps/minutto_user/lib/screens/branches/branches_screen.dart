import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class BranchesScreen extends StatefulWidget {
  const BranchesScreen({super.key});

  @override
  State<BranchesScreen> createState() => _BranchesScreenState();
}

class _BranchesScreenState extends State<BranchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Text(context.appLocalization.branches),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 130,
              child: StretchedButton(
                onPressed: () {
                  context.navigate((context) => const BranchInputScreen());
                },
                child: Text(
                  context.appLocalization.addBranch,
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
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return BranchCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
