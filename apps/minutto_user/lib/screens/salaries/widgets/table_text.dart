import 'package:shared/shared.dart';

class TableText extends StatelessWidget {
  final String data;
  final bool isValue;
  final bool isEnd;
  final Color? color;
  const TableText(
    this.data, {
    super.key,
    this.isValue = false,
    this.isEnd = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: color ?? context.colorPalette.grey4B4,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (!isEnd)
          CustomLine(
            padding: isValue
                ? EdgeInsets.zero
                : const EdgeInsetsDirectional.only(start: 10),
            isStart: !isValue,
          ),
      ],
    );
  }
}
