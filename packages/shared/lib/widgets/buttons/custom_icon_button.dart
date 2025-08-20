import 'package:shared/shared.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;

  const CustomIconButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: context.colorScheme.surfaceContainer,
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
