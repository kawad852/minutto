import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceDetalisScreen extends StatefulWidget {
  const AttendanceDetalisScreen({super.key});

  @override
  State<AttendanceDetalisScreen> createState() => _AttendanceDetalisScreenState();
}

class _AttendanceDetalisScreenState extends State<AttendanceDetalisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.clarificationAndExplanations),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Text(
            context.appLocalization.sendExplanSuccessfully,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const AttendanceInfo(),
          OrderDetailsCard(
            request: RequestModel(createdAt: DateTime.now()),
          ),
        ],
      ),
    );
  }
}
