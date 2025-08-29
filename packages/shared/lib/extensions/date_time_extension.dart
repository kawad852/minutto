import 'package:shared/exports/algolia_exports.dart' hide Filter;

import '../shared.dart';

extension DateTimeExtension on DateTime {
  String get defaultFormat => DateFormat().format(this);
  String get yMMMMd => DateFormat.yMMMd('en_US').format(this);
  String get dotFormat => DateFormat('19.02.2023').format(this);

  String get hour {
    String formattedHour = DateFormat('h a').format(this);
    return formattedHour;
  }

  Filter get startFilter =>
      Filter(MyFields.createdAt, isGreaterThanOrEqualTo: Timestamp.fromDate(this));
  Filter get endFilter => Filter(MyFields.createdAt, isLessThan: Timestamp.fromDate(this));
}
