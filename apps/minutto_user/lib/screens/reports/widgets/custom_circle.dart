import 'package:shared/shared.dart';

class CustomCircle extends StatelessWidget {
  final Color color;
  const CustomCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
