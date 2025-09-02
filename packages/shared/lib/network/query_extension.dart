import 'package:shared/shared.dart';

extension FireQueryExtension<T> on Query<T> {
  UserModel get _user => MySharedPreferences.user!;

  Query<T> get orderByCreatedAtDesc => orderBy(MyFields.createdAt, descending: true);

  Query<T> get whereUserId => where(MyFields.userId, isEqualTo: _user.id);
  Query<T> get whereCompanyId => where(MyFields.companyId, isEqualTo: _user.companyId);
}
