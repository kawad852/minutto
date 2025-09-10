import 'package:shared/shared.dart';

import '../../../minutto_user.dart';

class RequestBubblesRow extends StatelessWidget {
  const RequestBubblesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        RequestBubble(
          title: context.appLocalization.vacations,
          value: MySharedPreferences.user!.maxYearlyVacationsDays,
          collection: MyCollections.vacations,
        ),
        RequestBubble(
          title: context.appLocalization.leaves,
          value: MySharedPreferences.user!.maxYearlyLeavesDays,
          collection: MyCollections.leaves,
        ),
      ],
    );
  }
}
