import '../shared.dart';

class SortEnum {
  final String index;

  SortEnum(this.index);

  String get recommended => index;
  String get priceLowToHigh => "${index}_${MyFields.finalPrice}_asc";
  String get priceHighToLow => "${index}_${MyFields.finalPrice}_desc";
  String get rating => "${index}_average_rating_desc";

  List<String> get values => [
    recommended,
    priceLowToHigh,
    priceHighToLow,
    rating,
  ];
}
