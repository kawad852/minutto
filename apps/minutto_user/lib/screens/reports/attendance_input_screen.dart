import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AttendanceInputScreen extends StatefulWidget {
  const AttendanceInputScreen({super.key});

  @override
  State<AttendanceInputScreen> createState() => _AttendanceInputScreenState();
}

class _AttendanceInputScreenState extends State<AttendanceInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appLocalization.clarificationAndExplanations),
      ),
      bottomNavigationBar: BottomAppBar(
        child: StretchedButton(
          onPressed: () {
            context.navigate((context) => const AttendanceDetalisScreen());
          },
          child: Text(
            context.appLocalization.send,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Text(
            context.appLocalization.sendExplanToHrResources,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          AttendanceInfo(),
          RequestForm(
            onNotesChanged: (value) {},
            attachments: [],
            onAttachmentChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
