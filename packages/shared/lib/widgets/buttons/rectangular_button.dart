import 'package:shared/shared.dart';

class RectangularButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double size;

  const RectangularButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: context.colorScheme.secondaryContainer,
        foregroundColor: context.colorScheme.onSecondaryContainer,
        iconAlignment: IconAlignment.start,
        minimumSize: Size(size, size),
        maximumSize: Size(size, size),
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusSecondary)),
      ),
      child: child,
    );
  }
}
