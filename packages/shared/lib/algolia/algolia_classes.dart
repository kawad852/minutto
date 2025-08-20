import 'package:algolia_helper_flutter/algolia_helper_flutter.dart';

class SearchMetadata {
  final int nbHits;

  const SearchMetadata(this.nbHits);

  factory SearchMetadata.fromResponse(SearchResponse response) =>
      SearchMetadata(response.nbHits);
}

class Product {
  final String name;
  final String image;
  final String brand;

  Product(this.name, this.image, this.brand);

  static Product fromJson(Map<String, dynamic> json) {
    return Product(json['name'], json['image_urls'][0], json['brand']);
  }
}

class HitsPage {
  const HitsPage(this.items, this.pageKey, this.nextPageKey, this.isLastPage);

  final List<Product> items;
  final int pageKey;
  final int? nextPageKey;
  final bool isLastPage;

  factory HitsPage.fromResponse(SearchResponse response) {
    final items = response.hits.map(Product.fromJson).toList();
    final isLastPage = response.page + 1 >= response.nbPages;
    final nextPageKey = isLastPage ? null : response.page + 1;
    return HitsPage(items, response.page, nextPageKey, isLastPage);
  }
}
