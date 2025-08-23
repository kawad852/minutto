import 'package:shared/shared.dart';

class SharedContainer extends StatelessWidget {
  final double? height;
  final EdgeInsetsGeometry? padding;
  final Widget child;
  const SharedContainer({
    super.key,
    this.height,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12,vertical: 15),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF7F,
        border: Border.all(color: context.colorPalette.greyE1D),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: child,
    );
  }
}
