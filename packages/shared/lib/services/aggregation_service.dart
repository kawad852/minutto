import '../shared.dart';

class AggregationService {
  AggregationService._internal();
  static final AggregationService instance = AggregationService._internal();

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  Future<int> getRequestsCount(String collection) {
    final nowDate = DateTime.now().copyWith(
      month: 1,
      day: 1,
      minute: 0,
      second: 0,
      millisecond: 0,
      hour: 0,
      microsecond: 0,
    );
    final filter = Filter(
      MyFields.createdAt,
      isGreaterThanOrEqualTo: Timestamp.fromDate(nowDate),
    );
    print("filter:: ${filter.toJson()}");
    return _firebaseFirestore
        .collection(collection)
        .requestConvertor
        .where(filter)
        .count()
        .get()
        .then((value) => value.count ?? 0);
  }
}
