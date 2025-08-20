import 'package:shared/shared.dart';

extension FireQueryExtension<T> on Query<T> {
  Query<T> get orderByCreatedAtDesc =>
      orderBy(MyFields.createdAt, descending: true);
}
