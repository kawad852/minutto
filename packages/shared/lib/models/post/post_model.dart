import 'package:shared/enums/post_enums.dart';

import '../../shared.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@unfreezed
class PostModel with _$PostModel {
  factory PostModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? startAt,
    @TimestampSerializer() DateTime? endAt,
    @Default('') String id,
    String? titleEn,
    String? titleAr,
    String? subTitleEn,
    String? subTitleAr,
    @Default('') String type,
    List<String>? audienceTags, // "guest", "loggedIn", "vip", etc.
    @Default('') String indexName,
    @Default(0) int order,
    @Default(false) bool published,
    LayoutModel? layout,
    PostFilterModel? filters, // handles Algolia filters
    CTAModel? cta, // optional tap action
    @Default([]) List<PostItemModel> items,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  PostModel._();

  String get title {
    return UiHelper.translate(textEN: titleEn, textAR: titleAr);
  }

  String get subTitle {
    return UiHelper.translate(textEN: subTitleEn, textAR: subTitleAr);
  }

  PostType get typeEnum => PostType.values.firstWhere((e) => e.value == type);
}

@freezed
class LayoutModel with _$LayoutModel {
  factory LayoutModel({
    @Default('default') String style, // e.g. default, rounded, small, large, twoColumn
    @Default('horizontal') String scrollDirection, // horizontal, vertical
    @Default(1) int crossAxisCount, // for grids
    @Default(1.6) double aspectRatio, // width/height
    @Default(12) double cornerRadius,
    @Default(8) double spacing,
    @Default(true) bool showDiscountBadge,
  }) = _LayoutModel;

  factory LayoutModel.fromJson(Map<String, dynamic> json) => _$LayoutModelFromJson(json);
}

@freezed
class PostFilterModel with _$PostFilterModel {
  const factory PostFilterModel({
    List<String>? facetFilters, // ex: ['tags:summer_sale']
    List<String>? tags, // ex: ['tags:summer_sale']
    List<String>? numericFilters, // ex: ['discountPercent >= 30']
    @Default('') String query, // optional keyword
    @Default(20) int hitsPerPage,
    @Default(false) bool enablePersonalization,
  }) = _PostFilterModel;

  factory PostFilterModel.fromJson(Map<String, dynamic> json) => _$PostFilterModelFromJson(json);
}

@freezed
class CTAModel with _$CTAModel {
  const factory CTAModel({
    @Default('') String title,
    @Default('') String target, // ex: product_list, category_grid, custom_route
    FilterModel? filters,
  }) = _CTAModel;

  factory CTAModel.fromJson(Map<String, dynamic> json) => _$CTAModelFromJson(json);
}

@freezed
class PostItemModel with _$PostItemModel {
  factory PostItemModel({
    @Default('') String imageEn,
    @Default('') String imageAr,
    FilterModel? filters,
  }) = _PostItemModel;

  factory PostItemModel.fromJson(Map<String, dynamic> json) => _$PostItemModelFromJson(json);

  PostItemModel._();

  String get imageURL {
    return UiHelper.translate(textEN: imageEn, textAR: imageAr);
  }
}

// {
// "id": "post_001",
// "type": "carousel", // or "banner", "grid", "list", "slider"
// "title": "🔥 Summer Sale – Up to 40% OFF",
// "subtitle": "Limited Time Offers",
// "layout": {
// "aspectRatio": 2.5,
// "crossAxisCount": 1,
// "itemWidth": "auto", // or fixed e.g. 200
// "height": "adaptive", // or fixed e.g. 180
// "padding": 8,
// "spacing": 10
// },
// "items": [
// {
// "image": "https://cdn.example.com/img/summer-sale.jpg",
// "title": "Big Deals on T-Shirts",
// "subtitle": "Up to 50%",
// "cta": {
// "title": "Shop Now",
// "target": "product_list",
// "filters": {
// "tags": ["tshirt", "summer_sale"]
// }
// },
// "filters": {
// "facetFilters": ["tags:summer_sale"],
// "numericFilters": ["discountPercent >= 30"]
// },
// "imageRatio": 2.2,
// "cornerRadius": 12
// }
// ],
// "cta": {
// "title": "View All",
// "target": "category",
// "filters": {
// "tags": ["summer_sale"]
// }
// },
// "theme": {
// "background": "#ffffff",
// "textColor": "#000000"
// },
// "order": 1,
// "published": true,
// "indexName": "products"
// }
