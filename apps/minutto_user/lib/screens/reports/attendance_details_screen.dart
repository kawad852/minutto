import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceDetailsScreen extends StatefulWidget {
  const AttendanceDetailsScreen({super.key});

  @override
  State<AttendanceDetailsScreen> createState() => _AttendanceDetailsScreenState();
}

class _AttendanceDetailsScreenState extends State<AttendanceDetailsScreen> {
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
          RequestDetailsCard(
            request: RequestModel(createdAt: DateTime.now()),
          ),
        ],
      ),
    );
  }
}
