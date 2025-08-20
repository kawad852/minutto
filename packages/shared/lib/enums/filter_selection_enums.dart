enum FilterSelectionType {
  single('SINGLE'),
  multi('MULTI');

  final String value;

  const FilterSelectionType(this.value);
}

class FilterEnum {
  // static const categories = "CATEGORIES";
  static const priceRange = "PRICE-RANGE";
  static const rating = "RATING+4";
  static const offers = "OFFERS";
  static const deviceType = "DEVICE-TYPE";
}
