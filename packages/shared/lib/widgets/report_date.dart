import 'package:shared/shared.dart';

class ReportDate extends StatefulWidget {
  final ValueChanged<DateTime> onChanged;

  const ReportDate({
    super.key,
    required this.onChanged,
  });

  @override
  State<ReportDate> createState() => _ReportDateState();
}

class _ReportDateState extends State<ReportDate> {
  late DateTime _selectedDate;
  final now = DateTime.now();

  DateTime get _getDate {
    return _selectedDate.copyWith(
      microsecond: 0,
      millisecond: 0,
      second: 0,
      minute: 0,
      hour: 0,
      day: 1,
    );
  }

  void _onChanged() => widget.onChanged(_selectedDate);

  @override
  void initState() {
    super.initState();
    _selectedDate = now;
    _selectedDate = _getDate;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 230,
          height: 45,
          decoration: BoxDecoration(
            color: context.colorPalette.blue26,
            borderRadius: BorderRadius.circular(kRadiusSecondary),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: !(_selectedDate.year == now.year && _selectedDate.month == now.month)
                    ? () {
                        setState(() {
                          _selectedDate = _getDate.copyWith(month: _getDate.month + 1);
                        });
                        _onChanged();
                      }
                    : null,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
              Expanded(
                child: Text(
                  _selectedDate.mmmD,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedDate = _getDate.copyWith(month: _getDate.month - 1);
                  });
                  _onChanged();
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
