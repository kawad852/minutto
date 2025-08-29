import 'package:shared/shared.dart';

class CustomSmoothIndicator extends StatelessWidget {
  final int count, index;

  const CustomSmoothIndicator({super.key, required this.count, required this.index});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: index,
      count: count,
      effect: WormEffect(
        dotWidth: 15,
        dotHeight: 15,
        type: WormType.thin,
        dotColor: context.colorScheme.surfaceContainerHigh,
        activeDotColor: context.colorPalette.black,
      ),
    );
  }
}
