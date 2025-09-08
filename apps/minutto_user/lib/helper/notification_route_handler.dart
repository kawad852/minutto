import 'package:shared/shared.dart';

import '../minutto_user.dart';

class NotificationRouteHandler {
  static void toggle(
    BuildContext context, {
    Map<dynamic, dynamic>? extra,
  }) {
    final id = extra?['id'];
    final type = extra?['type'];
    if (type == MyCollections.salaryAdvances) {
      context.navigate((context) {
        return RequestDetailsScreen(
          collection: type,
          id: id,
        );
      });
    } else if (type == MyCollections.vacations) {}
  }
}
