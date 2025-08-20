// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodStoreModelImpl _$$FoodStoreModelImplFromJson(
  Map<String, dynamic> json,
) => _$FoodStoreModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  id: json['id'] as String? ?? "",
  email: json['email'] as String? ?? "",
  nameEn: json['nameEn'] as String? ?? "",
  nameAr: json['nameAr'] as String? ?? "",
  descriptionEn: json['descriptionEn'] as String? ?? "",
  descriptionAr: json['descriptionAr'] as String? ?? "",
  stateId: json['stateId'] as String? ?? "",
  cityId: json['cityId'] as String? ?? "",
  address: json['address'] as String? ?? "",
  status: json['status'] as String? ?? "PENDING",
  type: json['type'] as String? ?? "",
  thumbnail: json['thumbnail'] as String? ?? "",
  addressEn: json['addressEn'] as String? ?? "",
  addressAr: json['addressAr'] as String? ?? "",
  startWorkingHour: json['startWorkingHour'] as String? ?? "",
  closeWorkingHour: json['closeWorkingHour'] as String? ?? "",
  deliveryAreasVersion: json['deliveryAreasVersion'] as String? ?? "",
  phoneNumber: json['phoneNumber'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  menuCategories:
      (json['menuCategories'] as List<dynamic>?)
          ?.map((e) => MenuCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categoryIds:
      (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  phoneCountryCode: json['phoneCountryCode'] as String? ?? kFallBackCountryCode,
  minOrderValue: (json['minOrderValue'] as num?)?.toDouble() ?? 0.0,
  maxDeliveryDistance: (json['maxDeliveryDistance'] as num?)?.toDouble() ?? 0.0,
  freeDelivery: json['freeDelivery'] as bool? ?? false,
  canOrderAnyTime: json['canOrderAnyTime'] as bool? ?? false,
  isOpened: json['isOpened'] as bool? ?? false,
  deliveryFees: (json['deliveryFees'] as List<dynamic>?)
      ?.map((e) => DeliveryFeeModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  rating: json['rating'] == null
      ? null
      : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
  geoLoc: GeoLocModel.fromJson(json['_geoloc'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$FoodStoreModelImplToJson(
  _$FoodStoreModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'id': instance.id,
  'email': instance.email,
  'nameEn': instance.nameEn,
  'nameAr': instance.nameAr,
  'descriptionEn': instance.descriptionEn,
  'descriptionAr': instance.descriptionAr,
  'stateId': instance.stateId,
  'cityId': instance.cityId,
  'address': instance.address,
  'status': instance.status,
  'type': instance.type,
  'thumbnail': instance.thumbnail,
  'addressEn': instance.addressEn,
  'addressAr': instance.addressAr,
  'startWorkingHour': instance.startWorkingHour,
  'closeWorkingHour': instance.closeWorkingHour,
  'deliveryAreasVersion': instance.deliveryAreasVersion,
  'phoneNumber': instance.phoneNumber,
  'images': instance.images,
  'menuCategories': instance.menuCategories.map((e) => e.toJson()).toList(),
  'categoryIds': instance.categoryIds,
  'phoneCountryCode': instance.phoneCountryCode,
  'minOrderValue': instance.minOrderValue,
  'maxDeliveryDistance': instance.maxDeliveryDistance,
  'freeDelivery': instance.freeDelivery,
  'canOrderAnyTime': instance.canOrderAnyTime,
  'isOpened': instance.isOpened,
  'deliveryFees': instance.deliveryFees?.map((e) => e.toJson()).toList(),
  'rating': instance.rating?.toJson(),
  '_geoloc': instance.geoLoc.toJson(),
};

_$MenuCategoryModelImpl _$$MenuCategoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$MenuCategoryModelImpl(
  id: json['id'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameAr: json['nameAr'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$MenuCategoryModelImplToJson(
  _$MenuCategoryModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nameEn': instance.nameEn,
  'nameAr': instance.nameAr,
  'order': instance.order,
};

_$GeoLocModelImpl _$$GeoLocModelImplFromJson(Map<String, dynamic> json) =>
    _$GeoLocModelImpl(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$GeoLocModelImplToJson(_$GeoLocModelImpl instance) =>
    <String, dynamic>{'lat': instance.lat, 'lng': instance.lng};
