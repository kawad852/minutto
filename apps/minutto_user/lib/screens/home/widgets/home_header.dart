import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  var _isBreak = false;
  late Stream<QuerySnapshot<AttendanceModel>> _todayAttendancesStream;

  void _initialize() {
    _todayAttendancesStream = FirebaseFirestore.instance.userAttendance.orderByCreatedAtDesc
        .where(DateTime.now().dateFilter())
        .snapshots();
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final user = MySharedPreferences.user!;
    // final dayName = WeekDayEnum.values.firstWhere((e) => e.value == now.weekday).label();
    return BlitzBuilder.stream(
      stream: _todayAttendancesStream,
      onComplete: (context, snapshot) {
        final docs = snapshot.data?.docs;
        return Container(
          height: 355,
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: sv.Svg(MyIcons.homeBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0x30FFFFFF), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        context.appLocalization.goodMorning,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: context.colorPalette.blue091,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.navigate((context) => const NotificationScreen());
                      },
                      icon: CustomSvg(MyIcons.notifaction),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    children: [
                      BaseNetworkImage(
                        user.profileImage,
                        width: 60,
                        height: 60,
                        shape: BoxShape.circle,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              user.jobTitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  context.appLocalization.principleLazy,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colorPalette.blue091,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 117,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: context.colorPalette.blue091,
                    borderRadius: BorderRadius.circular(kRadiusSecondary),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              context.appLocalization.checkInOut,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: context.colorPalette.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3),
                              child: Row(
                                children: [
                                  Text(
                                    "${now.dayName} ",
                                    style: TextStyle(
                                      color: context.colorPalette.blueB2D,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      now.defaultFormat,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: context.colorPalette.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  context.appLocalization.currentTime,
                                  style: TextStyle(
                                    color: context.colorPalette.blueB2D,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: LiveClock(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return CheckDialog(
                                isBreak: ,
                                latestAttendance: (docs?.isNotEmpty ?? false)
                                    ? docs?.first.data()
                                    : null,
                              );
                            },
                          );
                        },
                        child: CustomSvg(MyIcons.fingerprintScanner),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
