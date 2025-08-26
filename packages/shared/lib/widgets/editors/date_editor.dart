import 'package:intl/intl.dart';
import 'package:shared/shared.dart';

class DateEditor extends StatefulWidget {
  final DateTime? value;
  final Function(DateTime value) onChanged;
  final bool required;
  final DateTime? fistDate;
  final DateTime? lastDate;
  final Widget? suffixIcon;

  const DateEditor({
    super.key,
    required this.value,
    required this.onChanged,
    this.required = true,
    this.fistDate,
    this.lastDate,
    this.suffixIcon,
  });

  @override
  State<DateEditor> createState() => _DateEditorState();
}

class _DateEditorState extends State<DateEditor> {
  DateTime? _value;

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _value,
      firstDate: widget.fistDate ?? DateTime.now(),
      lastDate: widget.lastDate ?? DateTime(2050, 8),
    );
    if (picked != null) {
      setState(() {
        _value = picked;
      });
      widget.onChanged(_value!);
    }
  }

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField.clickable(
      key: ValueKey(_value),
      initialValue: _value != null ? DateFormat("MMM d, yyyy").format(_value!) : null,
      labelText: "",
      suffixIcon: widget.suffixIcon,
      required: widget.required,
      onTap: () {
        _showDatePicker(context);
      },
    );
  }
}
