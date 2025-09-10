import 'package:shared/shared.dart';

import '../../../minutto_user.dart';

class LeavesRequestBubble extends StatelessWidget {
  const LeavesRequestBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return RequestBubble(
      title: context.appLocalization.leaves,
      value: MySharedPreferences.user!.maxYearlyLeavesDays,
      collection: MyCollections.leaves,
    );
  }
}
