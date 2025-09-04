import 'package:minutto_user/screens/request/widgets/count_widget.dart';
import 'package:shared/shared.dart';

class RequestTabBar extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final (Query<RequestModel> pending, Query<RequestModel> accepted, Query<RequestModel> rejected)
  queries;
  final String status;

  const RequestTabBar({
    super.key,
    required this.onChanged,
    required this.queries,
    required this.status,
  });

  @override
  State<RequestTabBar> createState() => _RequestTabBarState();
}

class _RequestTabBarState extends State<RequestTabBar> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _currentIndex = 0;

  (String, Query) _getInfo(int index) {
    switch (index) {
      case 1:
        return (StatusEnum.accepted.value, widget.queries.$2);
      case 2:
        return (StatusEnum.rejected.value, widget.queries.$3);
      default:
        return (StatusEnum.pending.value, widget.queries.$1);
    }
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
    final titles = [
      context.appLocalization.waiting,
      context.appLocalization.accepted,
      context.appLocalization.rejected,
    ];
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
          if (_currentIndex != value) {
            setState(() {
              _currentIndex = value;
            });
            widget.onChanged(_getInfo(value).$1);
          }
        },
        tabs: List.generate(titles.length, (index) {
          final element = titles[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 6,
            children: [
              Text(
                element,
              ),
              CountWidget(
                query: _getInfo(index).$2,
                selected: _currentIndex == index,
              ),
            ],
          );
        }),
      ),
    );
  }
}
