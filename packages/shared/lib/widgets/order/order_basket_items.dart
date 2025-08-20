import 'package:shared/shared.dart';

class OrderBasketItems extends StatelessWidget {
  final List<BasketModel> basket;
  final bool enableEdit;

  const OrderBasketItems({super.key, required this.basket, required this.enableEdit});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: basket.length,
      separatorBuilder: (context, index) => const Divider(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final element = basket[index];
        return BasketCard(basket: element, enableEdit: enableEdit);
      },
    );
  }
}
