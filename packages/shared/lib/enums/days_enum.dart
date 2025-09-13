import 'package:shared/shared.dart';

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

  String label(BuildContext context) {
    switch (this) {
      case WeekDayEnum.monday:
        return context.appLocalization.monday;
      case WeekDayEnum.tuesday:
        return context.appLocalization.tuesday;
      case WeekDayEnum.wednesday:
        return context.appLocalization.wednesday;
      case WeekDayEnum.thursday:
        return context.appLocalization.thursday;
      case WeekDayEnum.friday:
        return context.appLocalization.friday;
      case WeekDayEnum.saturday:
        return context.appLocalization.saturday;
      case WeekDayEnum.sunday:
        return context.appLocalization.sunday;
    }
  }
}
