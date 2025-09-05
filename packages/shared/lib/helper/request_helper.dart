import '../shared.dart';

class RequestHelper {
  RequestHelper._();
  static final RequestHelper instance = RequestHelper._();

  Query<RequestModel> fetchQuery({
    required String status,
    required bool showActions,
    required String collectionPath,
  }) {
    final user = MySharedPreferences.user!;
    final statusFilter = Filter(MyFields.status, isEqualTo: status);

    final Filter userFilter = showActions
        ? Filter(MyFields.companyId, isEqualTo: user.companyId)
        : Filter(MyFields.userId, isEqualTo: user.id);

    final filter = Filter.and(userFilter, statusFilter);

    return FirebaseFirestore.instance
        .collection(collectionPath)
        .requestConvertor
        .where(filter)
        .orderByCreatedAtDesc;
  }
}
