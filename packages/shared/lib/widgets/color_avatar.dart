import 'package:shared/shared.dart';

class ColorAvatar extends StatelessWidget {
  final Widget? child;
  final String hex;
  final double? radius;

  const ColorAvatar({super.key, this.child, required this.hex, this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: HexColor(hex),
      foregroundColor: context.colorScheme.surface,
      child: child,
    );
  }
}
