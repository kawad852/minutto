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
    AggregateField? aggregateField3,
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
      final user = MySharedPreferences.user;
      final fromFilter = user?.role == RoleEnum.admin.value
          ? Filter(MyFields.companyId, isEqualTo: MySharedPreferences.company!.id)
          : Filter(MyFields.userId, isEqualTo: user!.id);
      final dateFilter = Filter(
        MyFields.createdAt,
        isGreaterThanOrEqualTo: Timestamp.fromDate(nowDate),
      );
      final statusFilter = Filter(MyFields.status, isEqualTo: StatusEnum.accepted.value);
      filter = Filter.and(fromFilter, dateFilter, statusFilter);
    }
    return ApiService.build(
      callBack: () async {
        return _firebaseFirestore
            .collection(collection)
            .requestConvertor
            .where(filter)
            .aggregate(aggregateField1 ?? count(), aggregateField2, aggregateField3)
            .get()
            .then((value) => value);
      },
    );
  }
}
