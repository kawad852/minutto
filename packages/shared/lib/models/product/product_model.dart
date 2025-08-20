import '../../shared.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

//https://www.zalora.com.my/_next/data

// MediaCollection
// "UspTags": {
//             "BestSeller": true,
//             "SellingFast": true,
//             "Trending": true,
//             "PickedByEditor": false,
//             "IsNew": false,
//             "EarthEdit": true
//           },

@unfreezed
class ProductModel with _$ProductModel {
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default('') String descriptionEn,
    @Default('') String descriptionAr,
    @Default('') String thumbnail,
    String? storeId,
    String? note,
    String? selectedColorId,
    String? selectedSizeId,
    double? discountPrice,
    @Default(1) int basketQuantity,
    @Default(0) int stockQuantity,
    @Default(0) int purchasesCount,
    @Default(0.0) double basePrice,
    @Default(0.0) double finalPrice,
    @Default([]) List<MealOptionModel> items,
    @Default([]) List<ColorOption> colors,
    @Default([]) List<SizeOption> sizes,
    @Default([]) List<String> images,
    @Default([]) List<String> categoryIds,
    @Default(false) bool inStock,
    @Default(false) bool published,
    @Default(false) bool isOnSale,
    @Default(false) bool bestSeller,
    @Default(false) bool trending,
    @Default(0.0) double discountPercent, // % discount calculated from basePrice and finalPrice
    @Default(0) int viewsCount, // Optional: track views if needed
    @Default(0) int trendingScore, // For "trending" or "popular" sorting
    String? gender, // "male", "female", "unisex" – for audience targeting
    @JsonKey(name: "_tags") @Default([]) List<String> tags,
    @Default([]) List<double> embedding,
    BrandModel? brand,
    RatingModel? rating,
    DimensionModel? dimensions,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  ProductModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }

  String get description {
    return UiHelper.translate(textEN: descriptionEn, textAR: descriptionAr);
  }

  (double price, double? discountPrice, String thumbnail, List<String> images, int stockQuantity)
  get _defaultDetails {
    if (colors.isNotEmpty) {
      final colorOption = colors.firstWhere(
        (e) => e.id == selectedColorId,
        orElse: () => colors.first,
      );
      return (
        colorOption.price,
        colorOption.discountPrice,
        colorOption.images.first,
        colorOption.images,
        colorOption.stockQuantity,
      );
    } else if (sizes.isNotEmpty) {
      final sizeOption = sizes.firstWhere((e) => e.id == selectedSizeId, orElse: () => sizes.first);
      return (
        sizeOption.price,
        sizeOption.discountPrice,
        thumbnail,
        images,
        sizeOption.stockQuantity,
      );
    } else {
      return (basePrice, discountPrice, thumbnail, images, stockQuantity);
    }
  }

  (double basePrice, double? discountPrice) get price {
    return BasketHelper.calculatePrice(
      basePrice: _defaultDetails.$1,
      discountPrice: _defaultDetails.$2,
      items: items,
    );
  }

  String get thumbnailURL => _defaultDetails.$3;
  List<String> get getImages => _defaultDetails.$4;
  ColorOption get selectedColor => colors.firstWhere((e) => e.id == selectedColorId);
  SizeOption get selectedSize => sizes.firstWhere((e) => e.id == selectedSizeId);
  int get stockCount => _defaultDetails.$5;
  bool get isOutOfStock => storeId == null && _defaultDetails.$5 <= 0;
  bool get stockLessThanQuantity => storeId == null && stockCount < basketQuantity;

  factory ProductModel.mock() {
    return ProductModel(
      nameEn: BoneMock.name,
      nameAr: BoneMock.name,
      descriptionEn: BoneMock.paragraph,
      descriptionAr: BoneMock.paragraph,
      discountPrice: 00,
      finalPrice: 00,
      basePrice: 00,
    );
  }
}

@unfreezed
class MealOptionModel with _$MealOptionModel {
  factory MealOptionModel({
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default('') String type,
    String? selectedId,
    @Default([]) List<String> selectedIds,
    @Default([]) List<OptionItemModel> items,
    @JsonKey(includeToJson: false, includeFromJson: false) Object? globalKey,
  }) = _MealOptionModel;

  factory MealOptionModel.fromJson(Map<String, dynamic> json) => _$MealOptionModelFromJson(json);

  MealOptionModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

@unfreezed
class OptionItemModel with _$OptionItemModel {
  factory OptionItemModel({
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default(0.0) double price,
  }) = _OptionItemModel;

  factory OptionItemModel.fromJson(Map<String, dynamic> json) => _$OptionItemModelFromJson(json);

  OptionItemModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

@freezed
class ColorOption with _$ColorOption {
  factory ColorOption({
    @Default('') String id,
    @Default('') String hex,
    @Default('') String name,
    @Default([]) List<String> images,
    @Default(0.0) double price, // optional override
    @Default(0.0) double discountPrice,
    @Default(0) int stockQuantity,
    @Default(true) bool active,
    @Default([]) List<String> sizeIds, // color-specific sizes if present
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) => _$ColorOptionFromJson(json);
}

@freezed
class SizeOption with _$SizeOption {
  factory SizeOption({
    @Default('') String id,
    @Default('') String size,
    @Default(0.0) double price,
    @Default(0.0) double discountPrice,
    @Default(0) int stockQuantity,
    @Default(true) bool active,
  }) = _SizeOption;

  factory SizeOption.fromJson(Map<String, dynamic> json) => _$SizeOptionFromJson(json);
}

@freezed
class DimensionModel with _$DimensionModel {
  factory DimensionModel({
    @Default(0.0) double width,
    @Default(0.0) double height,
    @Default(0.0) double depth,
  }) = _DimensionModel;

  factory DimensionModel.fromJson(Map<String, dynamic> json) => _$DimensionModelFromJson(json);
}

@freezed
class BrandModel with _$BrandModel {
  factory BrandModel({
    @Default("") String id,
    @Default("") String logo,
    @Default("") String nameEn,
    @Default("") String nameAr,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) => _$BrandModelFromJson(json);

  BrandModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }

  factory BrandModel.mock() {
    return BrandModel(nameEn: BoneMock.name, nameAr: BoneMock.name);
  }
}
