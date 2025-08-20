import '../../shared.dart';

part 'food_store_model.freezed.dart';
part 'food_store_model.g.dart';

@unfreezed
class FoodStoreModel with _$FoodStoreModel {
  factory FoodStoreModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default("") String id,
    @Default("") String email,
    @Default("") String nameEn,
    @Default("") String nameAr,
    @Default("") String descriptionEn,
    @Default("") String descriptionAr,
    @Default("") String stateId,
    @Default("") String cityId,
    @Default("") String address,
    @Default("PENDING") String status,
    @Default("") String type,
    @Default("") String thumbnail,
    @Default("") String addressEn,
    @Default("") String addressAr,
    @Default("") String startWorkingHour,
    @Default("") String closeWorkingHour,
    @Default("") String deliveryAreasVersion,
    String? phoneNumber,
    @Default([]) List<String> images,
    @Default([]) List<MenuCategoryModel> menuCategories,
    @Default([]) List<String> categoryIds,
    @Default(kFallBackCountryCode) String phoneCountryCode,
    @Default(0.0) double minOrderValue,
    @Default(0.0) double maxDeliveryDistance,
    @Default(false) bool freeDelivery,
    @Default(false) bool canOrderAnyTime,
    @Default(false) bool isOpened,
    List<DeliveryFeeModel>? deliveryFees,
    RatingModel? rating,
    @JsonKey(name: MyFields.geoloc) required GeoLocModel geoLoc,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  }) = _FoodStoreModel;
  factory FoodStoreModel.fromJson(Map<String, dynamic> json) => _$FoodStoreModelFromJson(json);

  FoodStoreModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }

  String get description {
    return UiHelper.translate(textEN: descriptionEn, textAR: descriptionAr);
  }
}

// @unfreezed
// class LightFoodStoreModel with _$LightFoodStoreModel {
//   factory LightFoodStoreModel({
//     @TimestampSerializer() DateTime? createdAt,
//     @Default("") String id,
//     @Default("") String nameEn,
//     @Default("") String nameAr,
//     @Default("") String thumbnail,
//   }) = _LightFoodStoreModel;
//   factory LightFoodStoreModel.fromJson(Map<String, dynamic> json) =>
//       _$LightFoodStoreModelFromJson(json);
//
//   LightFoodStoreModel._();
//
//   String get name {
//     return UiHelper.translate(textEN: nameEn, textAR: nameAr);
//   }
// }

@unfreezed
class MenuCategoryModel with _$MenuCategoryModel {
  factory MenuCategoryModel({
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default(0) int order,
  }) = _MenuCategoryModel;

  factory MenuCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$MenuCategoryModelFromJson(json);

  MenuCategoryModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

@unfreezed
class GeoLocModel with _$GeoLocModel {
  factory GeoLocModel({@Default(0.0) double lat, @Default(0.0) double lng}) = _GeoLocModel;

  factory GeoLocModel.fromJson(Map<String, dynamic> json) => _$GeoLocModelFromJson(json);
}
