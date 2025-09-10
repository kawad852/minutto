import '../shared.dart';

class AggregationService {
  AggregationService._internal();
  static final AggregationService instance = AggregationService._internal();

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  Future<int> getRequestsCount(
    String collection, {
    Filter? f,
  }) {
    final nowDate = DateTime.now().copyWith(
      month: 1,
      day: 1,
      minute: 0,
      second: 0,
      millisecond: 0,
      hour: 0,
      microsecond: 0,
    );
    late Filter filter;
    if (f != null) {
      filter = f;
    } else {
      final userIdFilter = Filter(
        MyFields.userId,
        isEqualTo: MySharedPreferences.user!.id,
      );
      final dateFilter = Filter(
        MyFields.createdAt,
        isGreaterThanOrEqualTo: Timestamp.fromDate(nowDate),
      );
      filter = Filter.and(userIdFilter, dateFilter);
    }
    return ApiService.build(
      callBack: () async {
        return _firebaseFirestore
            .collection(collection)
            .requestConvertor
            .where(filter)
            .count()
            .get()
            .then((value) => value.count ?? 0);
      },
    );
  }
}
