import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class TabelBubble extends StatelessWidget {
  const TabelBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: context.colorPalette.blue475,
      fontSize: 14,
    );
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 5, end: 5, top: 8),
      child: GestureDetector(
        onTap: () {
          context.navigate(
            (context) => const EmployeeProfileScreen(),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "أحمد علي ",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: style,
              ),
            ),
            Expanded(
              child: Text(
                "30 /12/2025",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: style,
              ),
            ),
            Expanded(
              child: Text(
                "30 ${context.appLocalization.day}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: style,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
