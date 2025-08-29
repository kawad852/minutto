import 'package:shared/exports/algolia_exports.dart' hide Filter;

import '../shared.dart';

extension DateTimeExtension on DateTime {
  // String get defaultFormat => DateFormat().format(this);
  String get yMMMMd => DateFormat.yMMMd('en_US').format(this);
  String get defaultFormat => DateFormat('19.02.2023').format(this);

  String get hourFormat => DateFormat.jm(MySharedPreferences.language).format(this);

  Filter get startFilter =>
      Filter(MyFields.createdAt, isGreaterThanOrEqualTo: Timestamp.fromDate(this));
  Filter get endFilter => Filter(MyFields.createdAt, isLessThan: Timestamp.fromDate(this));
}
