import 'package:shared/shared.dart';

class ReportTile extends StatelessWidget {
  final String title, value, unit;
  final Color? color;
  const ReportTile({
    super.key,
    required this.title,
    required this.value,
    required this.unit,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.colorPalette.black,
              fontSize: 16,
            ),
          ),
          Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: color ?? context.colorPalette.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            unit,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: context.colorPalette.grey8F8,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
