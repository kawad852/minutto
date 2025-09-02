import 'package:shared/shared.dart';

class AdvanceContainer extends StatelessWidget {
  final Widget child;
  const AdvanceContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: child,
    );
  }
}
