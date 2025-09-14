import '../shared.dart';
import '../shared_2.dart';

class AttendanceHelper {
  AttendanceHelper._internal();
  static final AttendanceHelper instance = AttendanceHelper._internal();

  final FirebaseFirestore _firebaseFirestore = getIt<FirebaseFirestore>();

  /// Usage:
  /// await AttendanceHelper.instance.check(
  ///   context: context,
  ///   type: AttendanceEnum.checkIn.value,
  /// );
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

        // 3) Early check-in rule:
        //    Allow only if within 15 minutes before shift start.
        //    If allowed, normalize recorded check-in to the shift start (no “negative late”).
        final nowDate = DateTime.now();
        DateTime effectiveCheckIn = nowDate;
        if (type == AttendanceEnum.checkIn.value) {
          final window = _activeShiftWindow(nowDate, shift);
          final shiftStart = window.start;

          if (nowDate.isBefore(shiftStart)) {
            final minutesUntilStart = shiftStart.difference(nowDate).inMinutes;
            if (minutesUntilStart > 15) {
              context.showSnackBar(context.appLocalization.tooEarlyCheckInMsg);
              return; // block early verification beyond 15 minutes
            }
            effectiveCheckIn = shiftStart; // within 15 min → treat as on-time
          }
        }

        // 4) Save attendance and compute deduction (for check-in only)
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
          createdAt: nowDate, // real action timestamp
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

  /// Safer time parsing that accepts "08:00 AM", "8:00 AM", and "18:00".
  DateTime _combineDateWithTime(DateTime date, String timeString) {
    final formats = [
      DateFormat('hh:mm a', 'en_US'),
      DateFormat('h:mm a', 'en_US'),
      DateFormat('HH:mm', 'en_US'),
    ];
    DateTime? parsed;
    for (final f in formats) {
      try {
        parsed = f.parseLoose(timeString);
        break;
      } catch (_) {}
    }
    if (parsed == null) {
      throw FormatException('Invalid time string: $timeString');
    }
    return DateTime(date.year, date.month, date.day, parsed.hour, parsed.minute);
  }

  /// Start/end if the shift *starts* on [onDate]'s calendar day.
  /// Handles end < start by rolling to next day (overnight).
  ({DateTime start, DateTime end}) _shiftStartEnd(DateTime onDate, ShiftModel shift) {
    final start = _combineDateWithTime(onDate, shift.startHour);
    var end = _combineDateWithTime(onDate, shift.endHour);
    if (end.isBefore(start)) {
      end = end.add(const Duration(days: 1)); // overnight shift
    }
    return (start: start, end: end);
  }

  /// Returns the *active* shift window relevant to [now], correctly handling overnight shifts.
  ({DateTime start, DateTime end}) _activeShiftWindow(DateTime now, ShiftModel shift) {
    final today = _shiftStartEnd(now, shift);
    if (now.isAfter(today.start)) {
      // Normal case: today's window is active (even if already after end).
      return today;
    }
    // If now < today's start, we might be in a "yesterday" overnight window.
    final yesterday = _shiftStartEnd(now.subtract(const Duration(days: 1)), shift);
    if (now.isAfter(yesterday.start) && now.isBefore(yesterday.end)) {
      return yesterday;
    }
    return today;
  }

  double _shiftDurationHours(ShiftModel shift, DateTime anchorDate) {
    final se = _shiftStartEnd(anchorDate, shift);
    final durMin = se.end.difference(se.start).inMinutes;
    return durMin / 60.0;
  }

  double _hourlyRate({
    required double basicSalary,
    required double shiftHours,
  }) {
    if (shiftHours <= 0) return 0;
    final daySalary = basicSalary / 30.0; // adjust if org uses 26 working days, etc.
    return daySalary / shiftHours;
  }

  /// CALC RULES (per your spec):
  /// 1) Allow verify 15 min before start (normalized to start).
  /// 2) If late:
  ///    - find matching band in policy.lateDeductionRules (hours-based value).
  ///    - if no band matches and exceeded max band → deduct full shift hours.
  /// 3) If on-time or within grace period (when enabled) → no deduction.
  LateDeductionResult _calculateLateDeduction({
    required DateTime checkIn,
    required ShiftModel shift,
    required AttendancePolicyModel policy,
    required double basicSalary,
  }) {
    final window = _activeShiftWindow(checkIn, shift);
    final shiftStart = window.start;

    // On-time or early (already normalized when within 15 min) => no late
    if (!checkIn.isAfter(shiftStart)) {
      return const LateDeductionResult(
        deductionHours: 0,
        deductionAmount: 0.0,
        minutesLate: 0,
        exceededMaxBand: false,
      );
    }

    final minutesLateRaw = checkIn.difference(shiftStart).inMinutes;

    // Grace handling
    final applyGrace = (policy.lateAfterGrace ?? false) == true;
    final grace = (policy.shiftGraceMinutes ?? 0).clamp(0, 1 << 30);
    final int effectiveLate = applyGrace
        ? (minutesLateRaw - grace).clamp(0, 1 << 30)
        : minutesLateRaw;

    // Within grace → no deduction
    if (effectiveLate <= 0) {
      return LateDeductionResult(
        deductionHours: 0,
        deductionAmount: 0.0,
        minutesLate: minutesLateRaw,
        exceededMaxBand: false,
      );
    }

    // Sort bands and find match (toMinutes == 0 → treat as open upper bound)
    final rules = [...policy.lateDeductionRules]
      ..sort((a, b) => a.fromMinutes.compareTo(b.fromMinutes));

    LateDeductionRuleModel? match;
    int maxUpper = 0;
    for (final r in rules) {
      final upper = r.toMinutes == 0 ? (1 << 30) : r.toMinutes;
      if (upper > maxUpper) maxUpper = upper;
      if (effectiveLate >= r.fromMinutes && effectiveLate <= upper) {
        match = r;
        break;
      }
    }

    final shiftHours = _shiftDurationHours(shift, shiftStart);
    final rate = _hourlyRate(basicSalary: basicSalary, shiftHours: shiftHours);

    if (match != null) {
      // Band value is HOURS to deduct.
      final hoursToDeduct = match.value.toDouble();
      final amount = hoursToDeduct * rate;
      return LateDeductionResult(
        deductionHours: match.value,
        deductionAmount: double.parse(amount.toStringAsFixed(2)),
        minutesLate: minutesLateRaw,
        exceededMaxBand: false,
      );
    }

    // No band matched and exceeded the maximum band → deduct a full shift
    final fullDayAmount = shiftHours * rate;
    return LateDeductionResult(
      deductionHours: shiftHours.round(),
      deductionAmount: double.parse(fullDayAmount.toStringAsFixed(2)),
      minutesLate: minutesLateRaw,
      exceededMaxBand: true,
    );
  }
}

// ===== Calculation output holder =====
class LateDeductionResult {
  final int deductionHours; // HOURS to deduct
  final double deductionAmount; // Money to deduct
  final int minutesLate; // raw minutes late (pre-grace)
  final bool exceededMaxBand; // true when full shift deduction applied
  const LateDeductionResult({
    required this.deductionHours,
    required this.deductionAmount,
    required this.minutesLate,
    required this.exceededMaxBand,
  });
}
