import 'package:shared/shared.dart';

class DetailsInfo extends StatelessWidget {
  final String title, value;
  final Color? valueColor;
  const DetailsInfo({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.colorPalette.grey667,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: valueColor ?? context.colorPalette.blue091,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
