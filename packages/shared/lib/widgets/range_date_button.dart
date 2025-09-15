import 'package:shared/shared.dart';

class RangeDateButton extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;

  final Function(DateTime start, DateTime end) onChanged;

  const RangeDateButton({
    super.key,
    required this.onChanged,
    required this.startDate,
    required this.endDate,
  });

  Future<DateTimeRange?> _selectDate(BuildContext context) async {
    DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: kNowDate.subtract(const Duration(days: 9999)),
      lastDate: kNowDate,
      initialDateRange: DateTimeRange(start: startDate, end: endDate),
      saveText: context.appLocalization.save,
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        _selectDate(context).then((value) {
          if (value != null) {
            onChanged(value.start, value.end);
          }
        });
      },
      label: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: CustomSvg(
          MyIcons.calander,
          color: context.colorPalette.blue091,
        ),
      ),
      icon: Text(
        "${startDate.defaultFormat} - ${endDate.defaultFormat}",
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(300, 50),
        foregroundColor: context.colorPalette.blue091,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
