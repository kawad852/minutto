import 'package:shared/exports/algolia_exports.dart' hide Filter;

import '../shared.dart';

extension DateTimeExtension on DateTime {
  String get defaultFormat => DateFormat('d.MM.yyyy').format(this);
  String get yMMMMd => DateFormat.yMMMd('en_US').format(this);

  String get dayName => DateFormat('EEEE', MySharedPreferences.language).format(this);

  String get hourFormat => DateFormat.jm(MySharedPreferences.language).format(this);

  Filter dateFilter({
    String field = MyFields.createdAt,
  }) {
    final start = Filter(
      field,
      isGreaterThanOrEqualTo: Timestamp.fromDate(DateTime(year, month, day)),
    );
    final end = Filter(
      field,
      isLessThan: Timestamp.fromDate(add(const Duration(days: 1))),
    );
    return Filter.and(start, end);
  }
}

extension DayTimeExtension on String {
  TimeOfDay? get convertStringToTimeOfDay {
    if (isEmpty) {
      return null;
    }
    final arabicPM = contains('م');
    // final arabicAM = contains('ص');
    final isPm = contains('PM') || arabicPM;
    final parts = split(':');
    final hour = int.parse(parts[0].trim());
    final minute = int.parse(parts[1].replaceAll(RegExp(r'[^0-9]'), '').trim());

    int adjustedHour;
    if (hour == 12) {
      adjustedHour = isPm ? 12 : 0;
    } else {
      adjustedHour = isPm ? hour + 12 : hour;
    }

    return TimeOfDay(hour: adjustedHour, minute: minute);
  }
}
