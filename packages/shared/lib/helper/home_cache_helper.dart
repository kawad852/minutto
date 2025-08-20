import '../shared.dart';
import '../shared_2.dart';

class HomeCachedHelper {
  static List<dynamic>? get getCache {
    return (MyStorage.homeQueries?.categories.isNotEmpty ?? false)
        ? [
            MyStorage.homeQueries?.categories,
            MyStorage.homeQueries?.promoCode,
            MyStorage.homeQueries?.foodStoresResponse,
            MyStorage.homeQueries?.productsResponse,
          ]
        : null;
  }

  final List<CategoryModel> categories;
  final PromoCodeModel? promoCode;
  final SearchResponse foodStoresResponse;
  final SearchResponse productsResponse;

  HomeCachedHelper({
    required this.categories,
    required this.promoCode,
    required this.foodStoresResponse,
    required this.productsResponse,
  });

  Map<String, dynamic> toJson() => {
    'categories': categories.map((e) => e.copyWith(createdAt: null).toJson()).toList(),
    'promoCode': promoCode?.copyWith(createdAt: null, expiryDate: null).toJson(),
    'foodStoresResponse': foodStoresResponse.raw,
    'productsResponse': productsResponse.raw,
  };

  factory HomeCachedHelper.fromJson(Map<String, dynamic> json) {
    return HomeCachedHelper(
      categories: (json['categories'] as List).map((e) => CategoryModel.fromJson(e)).toList(),
      foodStoresResponse: SearchResponse(json['foodStoresResponse']),
      promoCode: PromoCodeModel.fromJson(
        json['promoCode'],
      ).copyWith(createdAt: null, expiryDate: null),
      productsResponse: SearchResponse(json['productsResponse']),
    );
  }
}
