import '../../shared.dart';

class UserAndBasketConsumer extends StatelessWidget {
  final Widget Function(BuildContext, UserModel user, List<BasketModel> basket, double basketTotal)
  builder;

  const UserAndBasketConsumer({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return Consumer2<UserModel, List<BasketModel>>(
      builder: (context, user, basket, _) {
        if (user.id == null) {
          return const SizedBox.shrink();
        }
        final basketTotal = basket.fold(0.0, (s, element) {
          final item = element.product!;
          final price = item.price;
          return s + (price.$2 ?? price.$1) * element.product!.basketQuantity;
        });
        return builder(context, user, basket, basketTotal);
      },
    );
  }
}
