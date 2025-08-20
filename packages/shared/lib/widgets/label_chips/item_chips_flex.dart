import 'package:shared/shared.dart';

class ItemChipsFlex extends StatelessWidget {
  final bool trending, bestSelling;
  final Axis direction;

  const ItemChipsFlex({
    super.key,
    required this.trending,
    required this.bestSelling,
    this.direction = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !trending && !bestSelling,
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        direction: direction,
        children: [if (trending) TrendingChip(), if (bestSelling) BestSellerChip()],
      ),
    );
  }
}
