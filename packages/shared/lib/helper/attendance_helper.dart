import '../shared.dart';
import '../shared_2.dart';

class AttendanceHelper {
  AttendanceHelper._internal();
  static final AttendanceHelper instance = AttendanceHelper._internal();

  final FirebaseFirestore _firebaseFirestore = getIt<FirebaseFirestore>();
  final _timeFormat = DateFormat('hh:mm a');

  /// Call like:
  /// `AttendanceHelper.instance.check(context: context, type: AttendanceEnum.checkIn.value);`
  Future<void> check({
    required BuildContext context,
    required String type, // e.g. AttendanceEnum.checkIn.value
  }) async {
    ApiService.fetch(
      context,
      callBack: () async {
        final company = MySharedPreferences.company!;
        final shift = CacheService.instance.todayShift;
        final user = MySharedPreferences.user!;
        final now = DateTime.now();

        // 1) Day-off guard
        if (!_isWorkingDay(shift, now)) {
          if (context.mounted) {
            context.showSnackBar(context.appLocalization.thisIsDayOffMsg);
          }
          return;
        }

        // 2) Location gate
        final companyLocation = company.geoLocation!;
        final userLocation = await context.locationProvider.determinePosition(
          context,
          showSnackBar: true,
        );
        if (userLocation == null) return;

        final distance = Geolocator.distanceBetween(
          companyLocation.latitude,
          companyLocation.longitude,
          userLocation.latitude,
          userLocation.longitude,
        );
        if (!context.mounted) return;

        if (distance >= 20) {
          context.showSnackBar(
            "",
            contentWidget: ListTile(
              titleTextStyle: TextStyle(
                color: context.colorScheme.onPrimary,
                fontFamily: MyTheme.fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              subtitleTextStyle: TextStyle(
                color: context.colorScheme.surface,
                fontFamily: MyTheme.fontFamily,
              ),
              title: Text(context.appLocalization.attendanceFailedTitle),
              subtitle: Text(context.appLocalization.attendanceFailedBody),
            ),
          );
          return;
        }

        // 3) Early check-in rule: block if earlier than 15 minutes before shift start
        final nowDate = DateTime.now();
        DateTime effectiveCheckIn = nowDate;
        if (type == AttendanceEnum.checkIn.value) {
          final se = _shiftStartEnd(nowDate, shift);
          final shiftStart = se.start;

          if (nowDate.isBefore(shiftStart)) {
            final minutesUntilStart = shiftStart.difference(nowDate).inMinutes;
            if (minutesUntilStart > 15) {
              context.showSnackBar(
                context.appLocalization.tooEarlyCheckInMsg,
              );
              return; // do NOT save attendance
            }
            // Within last 15 minutes before start → allow and treat as on-time
            effectiveCheckIn = shiftStart; // avoids negative/“early” math
          }
        }

        // 4) Passed gates → save + compute deductions (for check-in only)
        context.showSnackBar(context.appLocalization.attendanceSuccessMsg);

        final docRef = _firebaseFirestore.userAttendance().doc();

        int deductionHours = 0;
        double deductionAmount = 0.0;

        if (type == AttendanceEnum.checkIn.value) {
          final policy = company.attendancePolicy!;
          final result = _calculateLateDeduction(
            checkIn: effectiveCheckIn,
            shift: shift,
            policy: policy,
            basicSalary: user.basicSalary?.toDouble() ?? 0.0,
          );
          deductionHours = result.deductionHours;
          deductionAmount = result.deductionAmount;
        }

        final attendance = AttendanceModel(
          id: docRef.id,
          createdAt: nowDate, // real action time
          type: type,
          deductionHours: deductionHours,
          deductionAmount: deductionAmount,
        );

        await docRef.set(attendance);
      },
    );
  }

  // ===== Private helpers =====

  bool _isWorkingDay(ShiftModel shift, DateTime date) {
    if (shift.days.isEmpty) return true;
    return shift.days.contains(date.weekday);
  }

  ({DateTime start, DateTime end}) _shiftStartEnd(DateTime onDate, ShiftModel shift) {
    final start = _combineDateWithTime(onDate, shift.startHour);
    var end = _combineDateWithTime(onDate, shift.endHour);
    if (end.isBefore(start)) {
      end = end.add(const Duration(days: 1)); // overnight shift
    }
    return (start: start, end: end);
  }

  DateTime _combineDateWithTime(DateTime date, String timeString) {
    final parsed = _timeFormat.parse(timeString);
    return DateTime(date.year, date.month, date.day, parsed.hour, parsed.minute);
  }

  double _shiftDurationHours(ShiftModel shift, DateTime onDate) {
    final se = _shiftStartEnd(onDate, shift);
    final durMin = se.end.difference(se.start).inMinutes;
    return durMin / 60.0;
  }

  double _hourlyRate({
    required double basicSalary,
    required double shiftHours,
  }) {
    if (shiftHours <= 0) return 0;
    final daySalary = basicSalary / 30.0; // adjust if your org uses 26/working-hours base
    return daySalary / shiftHours;
  }

  LateDeductionResult _calculateLateDeduction({
    required DateTime checkIn,
    required ShiftModel shift,
    required AttendancePolicyModel policy,
    required double basicSalary,
  }) {
    final se = _shiftStartEnd(checkIn, shift);
    final shiftStart = se.start;

    // Early/on-time ⇒ no late
    if (!checkIn.isAfter(shiftStart)) {
      return const LateDeductionResult(
        deductionHours: 0,
        deductionAmount: 0.0,
        minutesLate: 0,
        exceededMaxBand: false,
      );
    }

    final minutesLateRaw = checkIn.difference(shiftStart).inMinutes;
    final effectiveLate = policy.lateAfterGrace
        ? (minutesLateRaw - policy.shiftGraceMinutes).clamp(0, 1 << 30)
        : minutesLateRaw;

    if (effectiveLate <= 0) {
      return LateDeductionResult(
        deductionHours: 0,
        deductionAmount: 0.0,
        minutesLate: minutesLateRaw,
        exceededMaxBand: false,
      );
    }

    final rules = [...policy.lateDeductionRules]
      ..sort((a, b) => a.fromMinutes.compareTo(b.fromMinutes));

    LateDeductionRuleModel? match;
    int? maxUpper;
    for (final r in rules) {
      final to = r.toMinutes == 0 ? 1 << 30 : r.toMinutes;
      maxUpper = (maxUpper == null) ? to : (to > maxUpper! ? to : maxUpper);
      if (effectiveLate >= r.fromMinutes && effectiveLate <= to) {
        match = r;
        break;
      }
    }

    final shiftHours = _shiftDurationHours(shift, checkIn);
    final rate = _hourlyRate(basicSalary: basicSalary, shiftHours: shiftHours);

    if (match != null) {
      final hours = match.value;
      final amount = hours * rate;
      return LateDeductionResult(
        deductionHours: hours,
        deductionAmount: double.parse(amount.toStringAsFixed(2)),
        minutesLate: minutesLateRaw,
        exceededMaxBand: false,
      );
    }

    // Exceeded all bands → deduct full day
    final fullDayHours = shiftHours.round();
    final fullDayAmount = shiftHours * rate;
    return LateDeductionResult(
      deductionHours: fullDayHours,
      deductionAmount: double.parse(fullDayAmount.toStringAsFixed(2)),
      minutesLate: minutesLateRaw,
      exceededMaxBand: true,
    );
  }
}

// Holder for calculation output
class LateDeductionResult {
  final int deductionHours;
  final double deductionAmount;
  final int minutesLate;
  final bool exceededMaxBand;
  const LateDeductionResult({
    required this.deductionHours,
    required this.deductionAmount,
    required this.minutesLate,
    required this.exceededMaxBand,
  });
}
