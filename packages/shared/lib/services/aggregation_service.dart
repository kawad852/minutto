import '../shared.dart';

class AggregationService {
  AggregationService._internal();
  static final AggregationService instance = AggregationService._internal();

  FirebaseFirestore get _firebaseFirestore => getIt<FirebaseFirestore>();

  Future<AggregateQuerySnapshot> getRequestsCount(
    String collection, {
    Filter? f,
    AggregateField? aggregateField1,
    AggregateField? aggregateField2,
  }) {
    late Filter filter;
    if (f != null) {
      filter = f;
    } else {
      final nowDate = DateTime.now().copyWith(
        month: 1,
        day: 1,
        minute: 0,
        second: 0,
        millisecond: 0,
        hour: 0,
        microsecond: 0,
      );
      final userIdFilter = Filter(
        MyFields.userId,
        isEqualTo: MySharedPreferences.user!.id,
      );
      final dateFilter = Filter(
        MyFields.createdAt,
        isGreaterThanOrEqualTo: Timestamp.fromDate(nowDate),
      );
      final statusFilter = Filter(MyFields.status, isEqualTo: StatusEnum.accepted.value);
      filter = Filter.and(userIdFilter, dateFilter, statusFilter);
    }
    return ApiService.build(
      callBack: () async {
        return _firebaseFirestore
            .collection(collection)
            .requestConvertor
            .where(filter)
            .aggregate(aggregateField1 ?? count(), aggregateField2)
            .get()
            .then((value) => value);
      },
    );
  }
}
