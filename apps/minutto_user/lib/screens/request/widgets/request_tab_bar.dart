import 'package:shared/shared.dart';

class RequestTabBar extends StatefulWidget {
  const RequestTabBar({super.key});

  @override
  State<RequestTabBar> createState() => _RequestTabBarState();
}

class _RequestTabBarState extends State<RequestTabBar> with SingleTickerProviderStateMixin{
  late TabController _controller;
  int _currentIndex = 0;
  List<String> tabBarTitle() {
    return [
      context.appLocalization.waiting,
      context.appLocalization.accepted,
      context.appLocalization.rejected,
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF7F,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TabBar(
        controller: _controller,
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: context.colorPalette.blue344,
        labelColor: context.colorPalette.white,
        indicator: BoxDecoration(
          color: context.colorPalette.blue091,
          borderRadius: BorderRadius.circular(100),
        ),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        tabs: tabBarTitle().map((element) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 6,
            children: [
              Text(
                element,
              ),
              Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _currentIndex == tabBarTitle().indexOf(element)
                      ? context.colorPalette.redF95
                      : context.colorPalette.greyD0D,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "2",
                  style: TextStyle(
                    color: context.colorPalette.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
