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

  Future<List<dynamic>> _fetch() {
    final userFilter = Filter(MyFields.userId, isEqualTo: _user.id);
    final statusFilter = Filter(MyFields.status, isEqualTo: StatusEnum.accepted.value);
    final dateFilter = _selectedDate.dateFilter();
    final filters = Filter.and(userFilter, statusFilter, dateFilter);
    return ApiService.build(
      callBack: () async {
        ///Attendance
        final checkInFilter = Filter(MyFields.type, isEqualTo: AttendanceEnum.checkIn.value);
        final attendancesFuture = AggregationService.instance.getRequestsCount(
          MyCollections.attendances,
          f: Filter.and(filters, checkInFilter),
          aggregateField1: count(),
          aggregateField2: sum(MyFields.deductionHours),
        );

        ///Vacations
        final vacationsFuture = AggregationService.instance.getRequestsCount(
          MyCollections.vacations,
          f: filters,
        );

        ///Leaves
        final leavesFuture = AggregationService.instance.getRequestsCount(
          MyCollections.vacations,
          f: filters,
          aggregateField1: sum(MyFields.totalLeaveHours),
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
      appBar: AppBar(
        title: Text(
          context.appLocalization.reports,
        ),
      ),
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
                /// Attendance
                final attendances = (snapshot.data?[0] as AggregateQuerySnapshot?);
                final attendancesCount = attendances?.count ?? 0;
                final deductionHoursSum = attendances?.getSum(MyFields.deductionHours) ?? 0;

                /// Vacations
                final vacations = (snapshot.data?[1] as AggregateQuerySnapshot?);
                final totalVacations = _user.maxYearlyVacationsDays;
                final vacationsCount = vacations?.count ?? 0;

                /// Leaves
                final leaves = (snapshot.data?[2] as AggregateQuerySnapshot?);
                final totalLeaves = _user.maxYearlyLeavesDays;
                final leaveHoursSum = leaves?.getSum(MyFields.deductionHours) ?? 0.0;

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
                          // InkWell(
                          //   onTap: () {
                          //     context.navigate((context) => const AttendanceScreen());
                          //   },
                          //   child: CustomSvg(MyIcons.arrowLeft),
                          // ),
                        ],
                      ),
                    ),

                    ///Attendance
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
                                value: "2",
                                color: context.colorPalette.redDF0,
                                unit: context.appLocalization.day,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ReportTile(
                                title: context.appLocalization.delayDiscount,
                                value: "15.31",
                                color: context.colorPalette.yellowF69,
                                unit: "دينار",
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
                                value: "20.00",
                                color: context.colorPalette.redDF0,
                                unit: "دينار",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    ///Vacations
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
                    LeavesCard(
                      total: totalVacations,
                      taken: vacationsCount,
                    ),
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
                      total: totalLeaves,
                      taken: leaveHoursSum,
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
