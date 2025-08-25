import 'package:shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SizedBox();
            },
          ),
          // ...[],
          // CustomTextField.text(onChanged: (value) {}),
          // CustomTextField.(onCodeSelected: (code) {}, onChanged: (value) {},  ),
        ],
      ),
    );
  }
}
