class RewardsService {
  static const double pointsPerCurrencyUnit = 1.0;
  static const double currencyValuePerPoint = 0.025;

  static int calculatePointsForProduct(double productPrice) {
    final rawPoints = productPrice * pointsPerCurrencyUnit;
    return rawPoints.ceil();
  }

  static double calculateDiscountFromPoints(int accumulatedPoints) {
    if (accumulatedPoints < 0) {
      return 0.0;
    }
    final discount = accumulatedPoints * currencyValuePerPoint;
    return double.parse(discount.toStringAsFixed(2));
  }
}
