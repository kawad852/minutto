// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      startAt: const TimestampSerializer().fromJson(json['startAt']),
      endAt: const TimestampSerializer().fromJson(json['endAt']),
      id: json['id'] as String? ?? '',
      titleEn: json['titleEn'] as String?,
      titleAr: json['titleAr'] as String?,
      subTitleEn: json['subTitleEn'] as String?,
      subTitleAr: json['subTitleAr'] as String?,
      type: json['type'] as String? ?? '',
      audienceTags: (json['audienceTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      indexName: json['indexName'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
      published: json['published'] as bool? ?? false,
      layout: json['layout'] == null
          ? null
          : LayoutModel.fromJson(json['layout'] as Map<String, dynamic>),
      filters: json['filters'] == null
          ? null
          : PostFilterModel.fromJson(json['filters'] as Map<String, dynamic>),
      cta: json['cta'] == null
          ? null
          : CTAModel.fromJson(json['cta'] as Map<String, dynamic>),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => PostItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'startAt': const TimestampSerializer().toJson(instance.startAt),
      'endAt': const TimestampSerializer().toJson(instance.endAt),
      'id': instance.id,
      'titleEn': instance.titleEn,
      'titleAr': instance.titleAr,
      'subTitleEn': instance.subTitleEn,
      'subTitleAr': instance.subTitleAr,
      'type': instance.type,
      'audienceTags': instance.audienceTags,
      'indexName': instance.indexName,
      'order': instance.order,
      'published': instance.published,
      'layout': instance.layout?.toJson(),
      'filters': instance.filters?.toJson(),
      'cta': instance.cta?.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$LayoutModelImpl _$$LayoutModelImplFromJson(Map<String, dynamic> json) =>
    _$LayoutModelImpl(
      style: json['style'] as String? ?? 'default',
      scrollDirection: json['scrollDirection'] as String? ?? 'horizontal',
      crossAxisCount: (json['crossAxisCount'] as num?)?.toInt() ?? 1,
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble() ?? 1.6,
      cornerRadius: (json['cornerRadius'] as num?)?.toDouble() ?? 12,
      spacing: (json['spacing'] as num?)?.toDouble() ?? 8,
      showDiscountBadge: json['showDiscountBadge'] as bool? ?? true,
    );

Map<String, dynamic> _$$LayoutModelImplToJson(_$LayoutModelImpl instance) =>
    <String, dynamic>{
      'style': instance.style,
      'scrollDirection': instance.scrollDirection,
      'crossAxisCount': instance.crossAxisCount,
      'aspectRatio': instance.aspectRatio,
      'cornerRadius': instance.cornerRadius,
      'spacing': instance.spacing,
      'showDiscountBadge': instance.showDiscountBadge,
    };

_$PostFilterModelImpl _$$PostFilterModelImplFromJson(
  Map<String, dynamic> json,
) => _$PostFilterModelImpl(
  facetFilters: (json['facetFilters'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  numericFilters: (json['numericFilters'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  query: json['query'] as String? ?? '',
  hitsPerPage: (json['hitsPerPage'] as num?)?.toInt() ?? 20,
  enablePersonalization: json['enablePersonalization'] as bool? ?? false,
);

Map<String, dynamic> _$$PostFilterModelImplToJson(
  _$PostFilterModelImpl instance,
) => <String, dynamic>{
  'facetFilters': instance.facetFilters,
  'tags': instance.tags,
  'numericFilters': instance.numericFilters,
  'query': instance.query,
  'hitsPerPage': instance.hitsPerPage,
  'enablePersonalization': instance.enablePersonalization,
};

_$CTAModelImpl _$$CTAModelImplFromJson(Map<String, dynamic> json) =>
    _$CTAModelImpl(
      title: json['title'] as String? ?? '',
      target: json['target'] as String? ?? '',
      filters: json['filters'] == null
          ? null
          : FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CTAModelImplToJson(_$CTAModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'target': instance.target,
      'filters': instance.filters?.toJson(),
    };

_$PostItemModelImpl _$$PostItemModelImplFromJson(Map<String, dynamic> json) =>
    _$PostItemModelImpl(
      imageEn: json['imageEn'] as String? ?? '',
      imageAr: json['imageAr'] as String? ?? '',
      filters: json['filters'] == null
          ? null
          : FilterModel.fromJson(json['filters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostItemModelImplToJson(_$PostItemModelImpl instance) =>
    <String, dynamic>{
      'imageEn': instance.imageEn,
      'imageAr': instance.imageAr,
      'filters': instance.filters?.toJson(),
    };
