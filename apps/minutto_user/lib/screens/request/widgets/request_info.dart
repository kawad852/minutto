import 'package:shared/shared.dart';

class RequestInfo extends StatelessWidget {
  final String title, value;
  final bool ltrOnly;

  const RequestInfo({
    super.key,
    required this.title,
    required this.value,
    this.ltrOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: context.colorPalette.grey667,
            fontSize: 13,
          ),
        ),
        Text(
          value,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: context.colorPalette.blue091,
            fontSize: 16,
          ),
          textDirection: ltrOnly ? TextDirection.ltr : null,
        ),
      ],
    );
  }
}
