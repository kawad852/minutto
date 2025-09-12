import 'package:shared/shared.dart';

class CustomCalender extends StatefulWidget {
  final bool warpContainer;
  final DateTime date;
  final Function(DateTime date) onChanged;

  const CustomCalender({
    super.key,
    this.warpContainer = false,
    required this.date,
    required this.onChanged,
  });

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  late DateTime _selectedDate;
  late ScrollController _scrollController;

  List<DateTime> get _days {
    final lastDay = DateTime(widget.date.year, widget.date.month + 1, 0); // last day of month

    List<DateTime> days = [];
    for (int i = 0; i < lastDay.day; i++) {
      days.add(DateTime(widget.date.year, widget.date.month, i + 1));
    }

    return days;
  }

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.date;
    _scrollController = ScrollController();
    Future.microtask(() {
      _jumpToToday();
    });
  }

  void _jumpToToday() {
    final i = _selectedDate.day - 1;
    const itemW = 50.0;
    const sepW = 13.0;
    const padL = 0.0;

    final offset = padL + i * (itemW + sepW);

    _scrollController.jumpTo(
      offset.clamp(
        _scrollController.position.minScrollExtent,
        _scrollController.position.maxScrollExtent,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: widget.warpContainer ? context.colorPalette.greyF9F : Colors.transparent,
      ),
      child: ListView.separated(
        controller: _scrollController,
        separatorBuilder: (context, index) => const SizedBox(width: 13),
        itemCount: _days.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final date = _days[index];
          final selected = _selectedDate.day == date.day;
          return GestureDetector(
            // key: _globalKeys[index],
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
              widget.onChanged(_selectedDate);
            },
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                color: !selected
                    ? Colors.transparent
                    : selected && widget.warpContainer
                    ? context.colorPalette.blue091
                    : context.colorPalette.blueB2D,
                border: Border.all(color: context.colorPalette.greyF9F),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date.dayName,
                    style: TextStyle(
                      color: selected && widget.warpContainer
                          ? context.colorPalette.white
                          : context.colorPalette.blue091,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "${date.day}",
                    style: TextStyle(
                      color: selected && widget.warpContainer
                          ? context.colorPalette.white
                          : context.colorPalette.blue091,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
