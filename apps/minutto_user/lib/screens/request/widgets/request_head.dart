import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class RequestHead extends StatelessWidget {
  final String collection;

  const RequestHead({
    super.key,
    required this.collection,
  });

  @override
  Widget build(BuildContext context) {
    final isVacations = collection == MyCollections.vacations;
    final user = MySharedPreferences.user!;
    var maxYearlyVacationsDays = MySharedPreferences.user!.maxYearlyVacationsDays;
    var maxYearlyLeavesDays = MySharedPreferences.user!.maxYearlyLeavesDays;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.blue091,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 10,
        children: [
          InfoBubble(
            title: context.appLocalization.available,
            value:
                "${isVacations ? maxYearlyVacationsDays : maxYearlyLeavesDays} ${context.appLocalization.day}",
          ),
          CountBuilder(
            collection: collection,
            child: (context, c) {
              return InfoBubble(
                title: context.appLocalization.obtained,
                value: "$c ${context.appLocalization.day}",
              );
            },
          ),
        ],
      ),
    );
  }
}
