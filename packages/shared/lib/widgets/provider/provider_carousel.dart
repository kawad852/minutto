import '../../shared.dart';

class ProviderCarousel extends StatelessWidget {
  final List<String> images;
  final double? height;
  final List<int> flexWeights;
  final EdgeInsetsGeometry? padding;

  const ProviderCarousel(
    this.images, {
    super.key,
    this.height,
    this.flexWeights = const [2, 2, 1],
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: height ?? 150,
        child: CarouselView.weighted(
          flexWeights: flexWeights,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusTertiary)),
          children: List<Widget>.generate(images.length, (int index) {
            final image = images[index];
            return BaseNetworkImage(image, radius: kRadiusTertiary);
          }),
        ),
      ),
    );
  }
}
