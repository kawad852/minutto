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
                  children: [
                    RequestCard(
                      title: context.appLocalization.leaving,
                      value: "1/4 ",
                    ),
                    const SizedBox(width: 10),
                    RequestCard(
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
                          context.navigate((context) => const OrderScreen(orderTypeEnum: OrderTypeEnum.vacation));
                        },
                        icon: MyIcons.umbrella,
                        title: context.appLocalization.vacations,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate((context) => const OrderScreen(orderTypeEnum: OrderTypeEnum.leave));
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
                          context.navigate((context) => const FeedbackScreen(feedBackType: FeedBackType.alarm));
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
                          context.navigate((context) => const DebtScreen());
                        },
                        icon: MyIcons.advance,
                        title: context.appLocalization.advances,
                        backgroundColor: context.colorPalette.yellowFDF,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate((context) => const FeedbackScreen(feedBackType: FeedBackType.rewards));
                        },
                        icon: MyIcons.favorite,
                        title: context.appLocalization.incentivesRequests,
                        backgroundColor: context.colorPalette.greenB2D,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: HomeBubble(
                        onTap: () {
                          context.navigate((context) => const OrderScreen(orderTypeEnum: OrderTypeEnum.overtime));
                        },
                        icon: MyIcons.money,
                        title: context.appLocalization.overtime,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: HomeBubble(
                        onTap: () {},
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
