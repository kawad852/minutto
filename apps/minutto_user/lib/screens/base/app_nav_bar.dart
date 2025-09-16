import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

import '../../helper/notification_route_handler.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _currentIndex = 0;
  late PageController _pageController;
  late CloudMessagingService _cloudMessagingService;

  final info = [
    (const HomeScreen(), MyIcons.home),
    if (MySharedPreferences.user?.role == RoleEnum.admin.value)
      (const FacilityManagementScreen(), MyIcons.facility),
    if (MySharedPreferences.user?.role == RoleEnum.employee.value)
      (const ReportsScreen(), MyIcons.calander),
    (const ProfileScreen(), MyIcons.profile),
  ];

  void _onSelect(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(_currentIndex);
  }

  @override
  void initState() {
    super.initState();
    _cloudMessagingService = CloudMessagingService(rootNavigatorKey.currentContext!);
    _cloudMessagingService.requestPermission(
      context,
      onCall: (BuildContext context, Map<dynamic, dynamic>? extra) {
        NotificationRouteHandler.toggle(context, extra: extra);
      },
    );
    _pageController = PageController(initialPage: _currentIndex);
    CacheService.instance.fetchCompany();
    CacheService.instance.fetchShift();
    CacheService.instance.fetchAssignedShift();
    context.locationProvider.determinePosition(context);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool withNotch = MediaQuery.of(context).viewPadding.bottom > 0.0;
    final user = MySharedPreferences.user;
    final status = user?.status;
    if (user?.role == RoleEnum.employee.value && status == UserStatusEnum.pending.value) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: kScreenMargin),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 60,
                    color: context.colorPalette.yellowF69,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    context.appLocalization.accountUnderReview,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    context.appLocalization.accountUnderReviewDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        height: withNotch ? 75 : 65,
        width: context.mediaQuery.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: context.colorPalette.blue091,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: List.generate(info.length, (index) {
            final element = info[index];
            return NavBarItem(
              onTap: () {
                _onSelect(index);
              },
              isSelected: _currentIndex == index,
              icon: element.$2,
            );
          }),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: info.map((e) => e.$1).toList(),
      ),
    );
  }
}
