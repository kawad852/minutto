import 'package:shared/shared.dart';

class OrderHeader extends StatelessWidget {
  final Widget child;
  final String icon;
  final double headerHeight;
  final double containerHeight;
  const OrderHeader({super.key, required this.child, required this.icon, required this.headerHeight, required this.containerHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: headerHeight,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SharedContainer(
              height: containerHeight,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: child,
            ),
          ),
          Positioned(top: 0, child: CustomSvg(icon, width: 65)),
        ],
      ),
    );
  }
}
