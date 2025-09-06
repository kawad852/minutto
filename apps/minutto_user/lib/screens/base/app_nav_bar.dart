import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

class AppNavBar extends StatefulWidget {
  const AppNavBar({super.key});

  @override
  State<AppNavBar> createState() => _AppNavBarState();
}

class _AppNavBarState extends State<AppNavBar> {
  int _currentIndex = 0;
  late PageController _pageController;
  late CloudMessagingService _cloudMessagingService;

  final items = [
    MyIcons.home,
    MyIcons.facility,
    MyIcons.calander,
    MyIcons.profile,
  ];

  final screens = [
    const HomeScreen(),
    const FacilityManagementScreen(),
    const ReportsScreen(),
    const ProfileScreen(),
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
    _cloudMessagingService.requestPermission(context);
    _pageController = PageController(initialPage: _currentIndex);
    CacheService.instance.fetchCompany();
    CacheService.instance.fetchShift();
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
          children: screens.map((element) {
            final index = screens.indexOf(element);
            return NavBarItem(
              onTap: () {
                _onSelect(index);
              },
              isSelected: _currentIndex == index,
              icon: items[index],
            );
          }).toList(),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
    );
  }
}
