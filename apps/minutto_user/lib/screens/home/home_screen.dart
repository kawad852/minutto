import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeHeader(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  spacing: 10,
                  children: [
                    RequestBubble(
                      title: context.appLocalization.leaving,
                      value: "1/4 ",
                    ),
                    RequestBubble(
                      title: context.appLocalization.leaveAbsence,
                      value: "0/2 ",
                    ),
                  ],
                ),
                HomeBubble(
                  onTap: () {},
                  icon: MyIcons.fingerprintIcon,
                  title: context.appLocalization.attendanceAndDepartureReport,
                ),
                Row(
                  children: [
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.vacations,
                            ),
                          );
                        },
                        icon: MyIcons.umbrella,
                        title: context.appLocalization.vacations,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.leaves,
                            ),
                          );
                        },
                        icon: MyIcons.clockIcon,
                        title: context.appLocalization.departures,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate((context) => const SalariesScreen());
                        },
                        icon: MyIcons.money,
                        title: context.appLocalization.salaries,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: "",
                            ),
                          );
                        },
                        icon: MyIcons.danger,
                        title: context.appLocalization.alarms,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.salaryAdvances,
                            ),
                          );
                        },
                        icon: MyIcons.advance,
                        title: context.appLocalization.advances,
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.incentives,
                            ),
                          );
                        },
                        icon: MyIcons.favorite,
                        title: context.appLocalization.incentivesRequests,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.overtimes,
                            ),
                          );
                        },
                        icon: MyIcons.money,
                        title: context.appLocalization.overtime,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate(
                            (context) => RequestsScreen(
                              collection: MyCollections.breaks,
                            ),
                          );
                        },
                        icon: MyIcons.danger,
                        title: context.appLocalization.workBreak,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
