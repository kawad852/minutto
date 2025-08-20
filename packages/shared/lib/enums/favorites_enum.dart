import '../shared.dart';

enum FavoriteType {
  foodStore('FOOD-STORE'),
  product('PRODUCT'),
  ad('AD');

  final String value;

  const FavoriteType(this.value);

  static (String, IconData) info(BuildContext context, FavoriteType value) {
    switch (value) {
      case FavoriteType.foodStore:
        return (context.appLocalization.food, FontAwesomeIcons.lightBowlFood);
      case FavoriteType.product:
        return (context.appLocalization.shop, FontAwesomeIcons.lightBagShopping);
      case FavoriteType.ad:
        return (context.appLocalization.ads, FontAwesomeIcons.lightChartTreeMap);
    }
  }
}
