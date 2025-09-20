import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late Future<List<dynamic>> _futures;
  late DateTime _selectedDate;

  UserModel get _user => MySharedPreferences.user!;

  // ---------- Helpers for calendar & shifts ----------
  DateTime _monthStart(DateTime d) => DateTime(d.year, d.month, 1);
  DateTime _monthEnd(DateTime d) => DateTime(d.year, d.month + 1, 0);

  /// Get the assigned shift for a given date from MyStorage.shifts.
  ShiftModel? _shiftForDate(DateTime day) {
    final shifts = MyStorage.shifts; // assume a List<ShiftModel>
    for (final s in shifts) {
      if (s.days.contains(day.weekday)) return s;
    }
    return null;
  }

  /// Compute shift hours for a specific date using that date's shift (supports overnight).
  double _shiftHoursForDate(DateTime day) {
    final shift = _shiftForDate(day);
    if (shift == null) return 0.0;
    DateTime _parse(String hhmm) {
      // Accepts "8:00", "08:00", "08:00 AM" etc. (kept simple here)
      final parts = hhmm.split(' ');
      final time = parts.first;
      final hh = int.parse(time.split(':')[0]);
      final mm = int.parse(time.split(':')[1]);
      return DateTime(day.year, day.month, day.day, hh, mm);
    }

    final start = _parse(shift.startHour);
    var end = _parse(shift.endHour);
    if (end.isBefore(start)) end = end.add(const Duration(days: 1));
    return end.difference(start).inMinutes / 60.0;
  }

  /// Average shift length (in hours) across all working days in the selected month.
  double _avgShiftHoursInMonth(DateTime anyDayInMonth) {
    final start = _monthStart(anyDayInMonth);
    final end = _monthEnd(anyDayInMonth);
    double hoursSum = 0;
    int workDays = 0;

    for (int i = 0; i <= end.difference(start).inDays; i++) {
      final day = DateTime(start.year, start.month, start.day + i);
      final shift = _shiftForDate(day);
      if (shift != null) {
        hoursSum += _shiftHoursForDate(day);
        workDays++;
      }
    }
    return workDays == 0 ? 0.0 : hoursSum / workDays;
  }

  int _workingDaysInMonth(DateTime anyDayInMonth) {
    final start = _monthStart(anyDayInMonth);
    final end = _monthEnd(anyDayInMonth);
    int count = 0;

    // Optional: if current month, don't count future days.
    final today = DateTime.now();

    for (int i = 0; i <= end.difference(start).inDays; i++) {
      final day = DateTime(start.year, start.month, start.day + i);
      if (day.isAfter(today) && day.month == today.month && day.year == today.year) break;
      if (_shiftForDate(day) != null) count++;
    }
    return count;
  }
  // ---------------------------------------------------

  Future<List<dynamic>> _fetch() {
    final userFilter = Filter(MyFields.userId, isEqualTo: _user.id);
    final statusFilter = Filter(MyFields.status, isEqualTo: StatusEnum.accepted.value);
    final dateFilter = _selectedDate.dateFilter(); // your existing helper (month range)
    final filters = Filter.and(userFilter, statusFilter, dateFilter);

    return ApiService.build(
      callBack: () async {
        /// Attendance (check-ins only)
        final checkInFilter = Filter(MyFields.type, isEqualTo: AttendanceEnum.checkIn.value);
        final attendancesFuture = AggregationService.instance.getRequestsCount(
          MyCollections.attendances,
          f: Filter.and(filters, checkInFilter),
          aggregateField1: count(),
          aggregateField2: sum(MyFields.deductionHours),
          aggregateField3: sum(MyFields.deductionAmount),
        );

        /// Vacations (days)
        final vacationsFuture = AggregationService.instance.getRequestsCount(
          MyCollections.vacations,
          f: filters,
        );

        /// Leaves (SUM hours)  --- BUGFIX 1: use the correct collection + field key
        final leavesFuture = AggregationService.instance.getRequestsCount(
          MyCollections.leaves, // was vacations by mistake
          f: filters,
          aggregateField1: sum(MyFields.totalLeaveHours), // was reading wrong key later
        );

        return Future.wait([attendancesFuture, vacationsFuture, leavesFuture]);
      },
    );
  }

  void _initialize() {
    _futures = _fetch();
  }

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.appLocalization.reports)),
      body: Column(
        children: [
          ReportDate(
            onChanged: (value) {
              setState(() {
                _selectedDate = value;
                _initialize();
              });
            },
          ),
          Expanded(
            child: BlitzBuilder.future(
              future: _futures,
              onComplete: (context, snapshot) {
                /// Attendance aggregates
                final attendances = (snapshot.data?[0] as AggregateQuerySnapshot?);
                final attendancesCount = attendances?.count ?? 0;
                final deductionHoursSum = attendances?.getSum(MyFields.deductionHours) ?? 0;
                final deductionAmountSum = attendances?.getSum(MyFields.deductionAmount) ?? 0.0;

                /// Vacations (days)
                final vacations = (snapshot.data?[1] as AggregateQuerySnapshot?);
                final totalVacations = _user.maxYearlyVacationsDays;
                final vacationsCount = vacations?.count ?? 0;

                /// Leaves (hours → day-equivalent)
                final leaves = (snapshot.data?[2] as AggregateQuerySnapshot?);
                // BUGFIX 2: read the correct aggregated field
                final leaveHoursSum = (leaves?.getSum(MyFields.totalLeaveHours) ?? 0).toDouble();

                // ---------- Absence calculation ----------
                final workingDays = _workingDaysInMonth(_selectedDate);
                final avgShiftHrs = _avgShiftHoursInMonth(_selectedDate);
                final leaveDaysEq = (avgShiftHrs > 0) ? (leaveHoursSum / avgShiftHrs) : 0.0;

                double absenceDaysDouble =
                    workingDays - attendancesCount - vacationsCount - leaveDaysEq;
                if (absenceDaysDouble < 0) absenceDaysDouble = 0;

                // Display as whole days with one decimal if needed (e.g., 1.5)
                final absenceDaysDisplay = (absenceDaysDouble % 1 == 0)
                    ? absenceDaysDouble.toInt().toString()
                    : absenceDaysDouble.toStringAsFixed(1);

                // Absence deduction = per-day salary * absence days
                final basicSalary = _user.basicSalary.toDouble() ?? 0.0;
                final perDaySalary = basicSalary / 30.0; // adjust if you use 26 days policy
                final absenceAmount = double.parse(
                  (perDaySalary * absenceDaysDouble).toStringAsFixed(2),
                );
                // ----------------------------------------

                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.appLocalization.attendance,
                            style: TextStyle(
                              color: context.colorPalette.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Attendance card
                    Container(
                      width: double.infinity,
                      height: 171,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: context.colorPalette.greyF7F,
                        borderRadius: BorderRadius.circular(kRadiusSecondary),
                      ),
                      child: Column(
                        spacing: 12,
                        children: [
                          Row(
                            children: [
                              ReportTile(
                                title: context.appLocalization.attendance,
                                value: "$attendancesCount",
                                color: context.colorPalette.green47A,
                                unit: context.appLocalization.day,
                              ),
                              SizedBox(
                                height: 55,
                                child: CustomLine(
                                  isVertical: true,
                                  isEnd: true,
                                  padding: EdgeInsets.zero,
                                  color: context.colorPalette.black,
                                ),
                              ),
                              ReportTile(
                                title: context.appLocalization.delay,
                                value: deductionHoursSum.toInt().toString(),
                                color: context.colorPalette.yellowF69,
                                unit: context.appLocalization.hour,
                              ),
                              SizedBox(
                                height: 55,
                                child: CustomLine(
                                  isVertical: true,
                                  isEnd: true,
                                  padding: EdgeInsets.zero,
                                  color: context.colorPalette.black,
                                ),
                              ),
                              ReportTile(
                                title: context.appLocalization.absence,
                                value: absenceDaysDisplay, // << replaced "2"
                                color: context.colorPalette.redDF0,
                                unit: context.appLocalization.day,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ReportTile(
                                title: context.appLocalization.delayDiscount,
                                value: deductionAmountSum.toStringAsFixed(2),
                                color: context.colorPalette.yellowF69,
                                unit: context.currency,
                              ),
                              SizedBox(
                                height: 55,
                                child: CustomLine(
                                  isVertical: true,
                                  isEnd: true,
                                  padding: EdgeInsets.zero,
                                  color: context.colorPalette.black,
                                ),
                              ),
                              ReportTile(
                                title: context.appLocalization.absenceDiscount,
                                value: absenceAmount.toStringAsFixed(2), // << replaced "20.00"
                                color: context.colorPalette.redDF0,
                                unit: context.currency,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Vacations
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        context.appLocalization.annualLeaves,
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    LeavesCard(total: totalVacations, taken: vacationsCount),

                    // Monthly leaves
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        context.appLocalization.monthlyLeaves,
                        style: TextStyle(
                          color: context.colorPalette.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    LeavesCard(
                      total: _user.maxYearlyLeavesDays,
                      taken: leaveDaysEq, // show day-equivalent if your UI expects days
                      isMonthly: true,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
