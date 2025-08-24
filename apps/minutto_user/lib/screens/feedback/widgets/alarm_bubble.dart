import 'package:shared/shared.dart';

class AlarmBubble extends StatelessWidget {
  const AlarmBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "${context.appLocalization.alarmType} : اندار نهائي",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "${context.appLocalization.alarmDate} : 03.03.2023",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: context.colorPalette.black, fontSize: 16),
          ),
        ),
        Text(
          "${context.appLocalization.alarmPenalty} : خصم 50.00 JOD",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: context.colorPalette.black, fontSize: 16),
        ),
      ],
    );
  }
}
