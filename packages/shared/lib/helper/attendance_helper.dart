import '../shared.dart';
import '../shared_2.dart';

class AttendanceHelper {
  AttendanceHelper._internal();
  static final AttendanceHelper instance = AttendanceHelper._internal();

  final FirebaseFirestore _firebaseFirestore = getIt<FirebaseFirestore>();
  final _timeFormat = DateFormat('hh:mm a');

  // === Public API ===
  Future<void> check({
    required BuildContext context,
    required String type,
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

        if (context.mounted) {
          _verify(
            context: context,
            distance: distance,
            type: type,
            shift: shift,
            userBasicSalary: user.basicSalary.toDouble() ?? 0.0,
          );
        }
      },
    );
  }

  // === Private ===
  void _verify({
    required BuildContext context,
    required double distance,
    required String type,
    required ShiftModel shift,
    required double userBasicSalary,
  }) {
    if (distance >= 20) {
      if (context.mounted) {
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
      }
      return;
    }

    // Passed location
    if (context.mounted) {
      context.showSnackBar(context.appLocalization.attendanceSuccessMsg);
    }

    final docRef = _firebaseFirestore.userAttendance().doc();
    final nowDate = DateTime.now();

    int deductionHours = 0;
    double deductionAmount = 0.0;

    if (type == AttendanceEnum.checkIn.value) {
      final policy = MySharedPreferences.company!.attendancePolicy!;
      final result = _calculateLateDeduction(
        checkIn: nowDate,
        shift: shift,
        policy: policy,
        basicSalary: userBasicSalary,
      );
      deductionHours = result.deductionHours;
      deductionAmount = result.deductionAmount;
    }

    final attendance = AttendanceModel(
      id: docRef.id,
      createdAt: nowDate,
      type: type,
      deductionHours: deductionHours,
      deductionAmount: deductionAmount,
    );

    docRef.set(attendance);
  }

  bool _isWorkingDay(ShiftModel shift, DateTime date) {
    if (shift.days.isEmpty) return true;
    return shift.days.contains(date.weekday);
  }

  ({DateTime start, DateTime end}) _shiftStartEnd(DateTime onDate, ShiftModel shift) {
    final start = _combineDateWithTime(onDate, shift.startHour);
    var end = _combineDateWithTime(onDate, shift.endHour);

    if (end.isBefore(start)) {
      end = end.add(const Duration(days: 1));
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
    final daySalary = basicSalary / 30.0;
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
        ? (minutesLateRaw - policy.shiftGraceMinutes)
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
      final amount = (hours * rate);
      return LateDeductionResult(
        deductionHours: hours,
        deductionAmount: double.parse(amount.toStringAsFixed(2)),
        minutesLate: minutesLateRaw,
        exceededMaxBand: false,
      );
    }

    final fullDayHours = shiftHours.round();
    final fullDayAmount = (shiftHours * rate);
    return LateDeductionResult(
      deductionHours: fullDayHours,
      deductionAmount: double.parse(fullDayAmount.toStringAsFixed(2)),
      minutesLate: minutesLateRaw,
      exceededMaxBand: true,
    );
  }
}

// === Result Holder ===
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
