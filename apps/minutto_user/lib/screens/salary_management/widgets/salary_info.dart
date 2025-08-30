import 'package:shared/shared.dart';

class SalaryInfo extends StatelessWidget {
  final String title, value;
  final Color? titleColor, valueColor;
  const SalaryInfo({
    super.key,
    required this.title,
    required this.value,
    this.titleColor,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: titleColor ?? context.colorPalette.blue475,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: valueColor ?? context.colorPalette.blue475,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
