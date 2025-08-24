import 'dart:math';

import 'package:shared/shared.dart';

class CustomLine extends StatelessWidget {
  final bool isEnd;
  final bool isVertical;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomLine({
    super.key,
    this.isEnd = false,
    this.isVertical = false,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsetsDirectional.only(start: 35, top: 5, bottom: 5),
      child: isVertical
          ? Column(
              children: [
                Transform.rotate(
                  angle: -pi / 4,
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: color ?? context.colorPalette.greyE1D,
                    ),
                  ),
                ),
                Expanded(
                  child: VerticalDivider(
                    color: color ?? context.colorPalette.greyE1D,
                  ),
                ),
                if (isEnd)
                  Transform.rotate(
                    angle: -pi / 4,
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: color ?? context.colorPalette.greyE1D,
                      ),
                    ),
                  ),
              ],
            )
          : Row(
              children: [
                Transform.rotate(
                  angle: -pi / 4,
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: color ?? context.colorPalette.greyE1D,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(color: color ?? context.colorPalette.greyE1D),
                ),
                if (isEnd)
                  Transform.rotate(
                    angle: -pi / 4,
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: color ?? context.colorPalette.greyE1D,
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
