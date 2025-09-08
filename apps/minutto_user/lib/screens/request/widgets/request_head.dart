import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RequestHead extends StatelessWidget {
  const RequestHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.blue091,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.appLocalization.totalVacations,
            style: TextStyle(
              color: context.colorPalette.white80,
              fontSize: 16,
            ),
          ),
          Row(
            spacing: 10,
            children: [
              InfoBubble(
                title: context.appLocalization.available,
                value: "14 ${context.appLocalization.day}",
              ),
              InfoBubble(
                title: context.appLocalization.obtained,
                value: "6 ${context.appLocalization.day}",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
