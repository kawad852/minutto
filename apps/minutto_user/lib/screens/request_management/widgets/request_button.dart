import 'package:shared/shared.dart';

class RequestButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final Color backgroundColor;
  const RequestButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 102,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: context.colorPalette.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
