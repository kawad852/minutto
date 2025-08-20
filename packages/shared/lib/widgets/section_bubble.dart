import 'package:shared/shared.dart';

class SectionBubble extends StatelessWidget {
  final Widget child;
  final double? width;
  final EdgeInsetsGeometry? margin;

  const SectionBubble({super.key, required this.child, this.width, this.margin});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kRadiusSecondary),
      child: Container(
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadiusSecondary),
          color: context.colorScheme.surface,
        ),
        child: child,
      ),
    );
  }
}
