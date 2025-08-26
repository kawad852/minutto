import 'package:shared/shared.dart';

extension FireQueryExtension<T> on Query<T> {
  Query<T> get orderByCreatedAtDesc => orderBy(MyFields.createdAt, descending: true);

  Query<T> get whereUserId => where(MyFields.userId, isEqualTo: MySharedPreferences.user!.id);
}
