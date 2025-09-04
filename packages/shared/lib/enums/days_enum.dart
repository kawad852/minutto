import 'package:shared/shared.dart';

import '../exports/algolia_exports.dart';

enum WeekDayEnum {
  monday(1),
  tuesday(2),
  wednesday(3),
  thursday(4),
  friday(5),
  saturday(6),
  sunday(7);

  final int value;
  const WeekDayEnum(this.value);

  String label() {
    final date = DateTime.utc(2025, 1, value); // fixed week
    return DateFormat('EEEE', MySharedPreferences.language).format(date);
  }
}
