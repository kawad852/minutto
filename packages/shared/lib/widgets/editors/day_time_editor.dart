import 'package:intl/intl.dart' as intl;
import 'package:shared/shared.dart';

class DayTimeEditor extends StatefulWidget {
  final String? initialValue;
  final Function(String value) onChanged;

  const DayTimeEditor({super.key, required this.initialValue, required this.onChanged});

  @override
  State<DayTimeEditor> createState() => _DayTimeEditorState();
}

class _DayTimeEditorState extends State<DayTimeEditor> {
  late TextEditingController _controller;
  TimeOfDay? _timeOfDay;

  String? get _initialValue => widget.initialValue;

  Future<void> _showTimePicker(BuildContext context) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: _timeOfDay ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          ),
        );
      },
    );
    if (time != null) {
      setState(() {
        final formattedTime = time.format(context);
        _timeOfDay = time;
        _controller.text = formattedTime;

        final englishTime = _formatTimeInEnglish(time);
        widget.onChanged(englishTime);
      });
    }
  }

  String _formatTimeInEnglish(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return intl.DateFormat.jm('en').format(dateTime); // "2:00 PM"
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_timeOfDay == null) {
      _timeOfDay = _initialValue?.convertStringToTimeOfDay;
      // _timeOfDay = _sToTime(_initialValue);
      _controller = TextEditingController(text: _timeOfDay?.format(context));
    }
    return BaseEditor(
      required: true,
      readOnly: true,
      canRequestFocus: false,
      textAlign: TextAlign.center,
      suffixIcon: const Icon(FontAwesomeIcons.clock),
      mouseCursor: WidgetStateMouseCursor.clickable,
      controller: _controller,
      onTap: () {
        _showTimePicker(context);
      },
      validator: (value) {
        return ValidationHelper.required(context, value);
      },
    );
  }
}
