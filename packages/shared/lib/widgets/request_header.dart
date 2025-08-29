import 'package:shared/shared.dart';

class RequestHeader extends StatelessWidget {
  final Widget child;
  final String icon;

  const RequestHeader({
    super.key,
    required this.child,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        SharedContainer(
          padding: EdgeInsetsDirectional.fromSTEB(6, 70, 6, 6),
          child: child,
        ),
        Positioned(
          top: -10,
          child: CustomSvg(
            icon,
            width: 65,
          ),
        ),
      ],
    );
  }
}
