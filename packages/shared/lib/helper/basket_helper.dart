import 'package:shared/shared.dart';

class BasketHelper {
  static (double basePrice, double? discountPrice) calculatePrice({
    required double basePrice,
    required double? discountPrice,
    required List<MealOptionModel> items,
  }) {
    var extraPrice = 0.0;
    for (var element in items) {
      final requiredItems = element.items.where((e) => e.id == element.selectedId).toList();
      for (var item in requiredItems) {
        extraPrice = extraPrice + item.price;
      }
      final optionalItems = element.items.where((e) => element.selectedIds.contains(e.id)).toList();
      for (var item in optionalItems) {
        extraPrice = extraPrice + item.price;
      }
    }
    return (
      basePrice + extraPrice,
      discountPrice != kOfferPrice ? ((discountPrice ?? 0) + extraPrice) : null,
    );
  }

  static bool canProceed(BuildContext context, BasketModel issuingCard) {
    if (issuingCard.globalKey != null) {
      final key = issuingCard.globalKey! as GlobalKey;
      key.currentContext!.scroll();
      context.showSnackBar(context.appLocalization.fixBasketIssueMsg, floating: false);
      return false;
    }
    return true;
  }
}
