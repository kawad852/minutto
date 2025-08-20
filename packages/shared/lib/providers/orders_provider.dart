import '../shared.dart';

class OrdersProvider extends ChangeNotifier {
  late OrderModel order;

  void submitOrder(
    BuildContext context,
    OrderModel order, {
    required UserModel user,
    required List<BasketModel> basket,
    required VoidCallback onSuccess,
  }) async {
    AppOverlayLoader.fakeLoading();
    order.id = await _getOrderId();
    order.basket = basket;
    Future<void> pay() async => await _togglePayment(context, order, basket, onSuccess: onSuccess);
    if (context.mounted) {
      if (order.paymentMethod == PaymentMethodEnum.visa.value) {
        final stripeService = StripeService();
        await stripeService.pay(
          context,
          amount: order.orderTotal,
          id: order.id!,
          onSuccess: () {
            ApiService.fetch(
              context,
              callBack: () async {
                if (context.mounted) {
                  await pay();
                }
              },
            );
          },
        );
      } else {
        await pay();
      }
    }
  }

  Future<void> _togglePayment(
    BuildContext context,
    OrderModel order,
    List<BasketModel> basket, {
    required VoidCallback onSuccess,
  }) async {
    final batch = getIt<FirebaseFirestore>().batch();
    final orderDocRef = kFirebaseInstant.collection(MyCollections.orders).doc('${order.id}');
    final earnedPoints = await loopOverBasketBasket(context, basket);
    order.rewardPoints = earnedPoints;

    batch.set(orderDocRef, {
      ...order.toJson(),
      ...{MyFields.createdAt: FieldValue.serverTimestamp()},
    });

    final newUserPoints = earnedPoints - order.rewardPoints;

    if (context.mounted) {
      final userDocRef = context.userProvider.userDocRef;
      batch.update(userDocRef, {
        MyFields.rewardPoints: newUserPoints,
        if (order.type == OrderType.pickUp.value)
          MyFields.pickupInfo: order.user?.pickupInfo?.toJson(),
      });
    }

    await batch.commit();

    if (context.mounted) {
      onSuccess();
    }
  }

  Future<String> _getOrderId() async {
    var newOrderId = 0;
    final orderIdDocumentRef = kFirebaseInstant
        .collection(MyCollections.settings)
        .doc(kOrderIdDocument);
    await kFirebaseInstant.runTransaction((Transaction transaction) async {
      final snapshot = await transaction.get(orderIdDocumentRef);
      newOrderId = snapshot.data()!['order_id'];
      transaction.update(orderIdDocumentRef, {'order_id': FieldValue.increment(1)});
    });
    return '$newOrderId';
  }

  Future<int> loopOverBasketBasket(BuildContext context, List<BasketModel> basket) async {
    final batch = kFirebaseInstant.batch();
    var totalRewardsPoints = 0;
    for (var element in basket) {
      final documentRef = context.userProvider.userBasketCollectionRef.doc(element.id);
      final pointsValue = RewardsService.calculatePointsForProduct(element.product!.finalPrice);
      print("pointsValue:: $pointsValue");
      totalRewardsPoints = totalRewardsPoints + pointsValue;
      batch.delete(documentRef);
    }
    print("totalRewardsPoints:: $totalRewardsPoints");
    await batch.commit();
    return totalRewardsPoints;
  }
}
