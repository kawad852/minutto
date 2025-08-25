// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      nameAr: json['nameAr'] as String? ?? '',
      descriptionEn: json['descriptionEn'] as String? ?? '',
      descriptionAr: json['descriptionAr'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      storeId: json['storeId'] as String?,
      note: json['note'] as String?,
      selectedColorId: json['selectedColorId'] as String?,
      selectedSizeId: json['selectedSizeId'] as String?,
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      basketQuantity: (json['basketQuantity'] as num?)?.toInt() ?? 1,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
      purchasesCount: (json['purchasesCount'] as num?)?.toInt() ?? 0,
      basePrice: (json['basePrice'] as num?)?.toDouble() ?? 0.0,
      finalPrice: (json['finalPrice'] as num?)?.toDouble() ?? 0.0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => MealOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      colors:
          (json['colors'] as List<dynamic>?)
              ?.map((e) => ColorOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sizes:
          (json['sizes'] as List<dynamic>?)
              ?.map((e) => SizeOption.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      categoryIds:
          (json['categoryIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      inStock: json['inStock'] as bool? ?? false,
      published: json['published'] as bool? ?? false,
      isOnSale: json['isOnSale'] as bool? ?? false,
      bestSeller: json['bestSeller'] as bool? ?? false,
      trending: json['trending'] as bool? ?? false,
      discountPercent: (json['discountPercent'] as num?)?.toDouble() ?? 0.0,
      viewsCount: (json['viewsCount'] as num?)?.toInt() ?? 0,
      trendingScore: (json['trendingScore'] as num?)?.toInt() ?? 0,
      gender: json['gender'] as String?,
      tags:
          (json['_tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      embedding:
          (json['embedding'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : DimensionModel.fromJson(json['dimensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'descriptionEn': instance.descriptionEn,
      'descriptionAr': instance.descriptionAr,
      'thumbnail': instance.thumbnail,
      'storeId': instance.storeId,
      'note': instance.note,
      'selectedColorId': instance.selectedColorId,
      'selectedSizeId': instance.selectedSizeId,
      'discountPrice': instance.discountPrice,
      'basketQuantity': instance.basketQuantity,
      'stockQuantity': instance.stockQuantity,
      'purchasesCount': instance.purchasesCount,
      'basePrice': instance.basePrice,
      'finalPrice': instance.finalPrice,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'colors': instance.colors.map((e) => e.toJson()).toList(),
      'sizes': instance.sizes.map((e) => e.toJson()).toList(),
      'images': instance.images,
      'categoryIds': instance.categoryIds,
      'inStock': instance.inStock,
      'published': instance.published,
      'isOnSale': instance.isOnSale,
      'bestSeller': instance.bestSeller,
      'trending': instance.trending,
      'discountPercent': instance.discountPercent,
      'viewsCount': instance.viewsCount,
      'trendingScore': instance.trendingScore,
      'gender': instance.gender,
      '_tags': instance.tags,
      'embedding': instance.embedding,
      'brand': instance.brand?.toJson(),
      'rating': instance.rating?.toJson(),
      'dimensions': instance.dimensions?.toJson(),
    };

_$MealOptionModelImpl _$$MealOptionModelImplFromJson(
  Map<String, dynamic> json,
) => _$MealOptionModelImpl(
  id: json['id'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameAr: json['nameAr'] as String? ?? '',
  type: json['type'] as String? ?? '',
  selectedId: json['selectedId'] as String?,
  selectedIds:
      (json['selectedIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OptionItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$MealOptionModelImplToJson(
  _$MealOptionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nameEn': instance.nameEn,
  'nameAr': instance.nameAr,
  'type': instance.type,
  'selectedId': instance.selectedId,
  'selectedIds': instance.selectedIds,
  'items': instance.items,
};

_$OptionItemModelImpl _$$OptionItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$OptionItemModelImpl(
  id: json['id'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  nameAr: json['nameAr'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$$OptionItemModelImplToJson(
  _$OptionItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'nameEn': instance.nameEn,
  'nameAr': instance.nameAr,
  'price': instance.price,
};

_$ColorOptionImpl _$$ColorOptionImplFromJson(
  Map<String, dynamic> json,
) => _$ColorOptionImpl(
  id: json['id'] as String? ?? '',
  hex: json['hex'] as String? ?? '',
  name: json['name'] as String? ?? '',
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  discountPrice: (json['discountPrice'] as num?)?.toDouble() ?? 0.0,
  stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
  active: json['active'] as bool? ?? true,
  sizeIds:
      (json['sizeIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hex': instance.hex,
      'name': instance.name,
      'images': instance.images,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'stockQuantity': instance.stockQuantity,
      'active': instance.active,
      'sizeIds': instance.sizeIds,
    };

_$SizeOptionImpl _$$SizeOptionImplFromJson(Map<String, dynamic> json) =>
    _$SizeOptionImpl(
      id: json['id'] as String? ?? '',
      size: json['size'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      discountPrice: (json['discountPrice'] as num?)?.toDouble() ?? 0.0,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$SizeOptionImplToJson(_$SizeOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'stockQuantity': instance.stockQuantity,
      'active': instance.active,
    };

_$DimensionModelImpl _$$DimensionModelImplFromJson(Map<String, dynamic> json) =>
    _$DimensionModelImpl(
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
      depth: (json['depth'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$DimensionModelImplToJson(
  _$DimensionModelImpl instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'depth': instance.depth,
};

_$BrandModelImpl _$$BrandModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandModelImpl(
      id: json['id'] as String? ?? "",
      logo: json['logo'] as String? ?? "",
      nameEn: json['nameEn'] as String? ?? "",
      nameAr: json['nameAr'] as String? ?? "",
    );

Map<String, dynamic> _$$BrandModelImplToJson(_$BrandModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
    };
