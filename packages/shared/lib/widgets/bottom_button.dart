import 'package:shared/shared.dart';

class BottomButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  const BottomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: StretchedButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor,
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? context.colorPalette.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
