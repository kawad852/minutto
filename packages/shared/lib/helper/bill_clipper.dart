import '../shared.dart';

class ReceiptClipper extends CustomClipper<Path> {
  final double zigzagHeight = 5;
  final double zigzagWidth = 10;

  @override
  Path getClip(Size size) {
    final path = Path();

    // Top zigzag
    path.moveTo(0, 0);
    for (double x = 0; x < size.width; x += zigzagWidth) {
      path.lineTo(x + zigzagWidth / 2, zigzagHeight);
      path.lineTo(x + zigzagWidth, 0);
    }

    // Right side
    path.lineTo(size.width, size.height - zigzagHeight);

    // Bottom zigzag
    for (double x = size.width; x > 0; x -= zigzagWidth) {
      path.lineTo(x - zigzagWidth / 2, size.height);
      path.lineTo(x - zigzagWidth, size.height - zigzagHeight);
    }

    // Left side
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
