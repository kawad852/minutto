// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      id: json['id'] as String? ?? '',
      attribute: json['attribute'] as String? ?? '',
      nameEn: json['nameEn'] as String? ?? '',
      nameAr: json['nameAr'] as String? ?? '',
      selectionType: json['selectionType'] as String? ?? 'MULTI',
      pinned: json['pinned'] as bool? ?? false,
      value: json['value'] as String?,
      values:
          (json['values'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              FilterValueModel.fromJson(e as Map<String, dynamic>),
            ),
          ) ??
          const {},
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute': instance.attribute,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'selectionType': instance.selectionType,
      'pinned': instance.pinned,
      'value': instance.value,
      'values': instance.values.map((k, e) => MapEntry(k, e.toJson())),
    };

_$FilterValueModelImpl _$$FilterValueModelImplFromJson(
  Map<String, dynamic> json,
) => _$FilterValueModelImpl(
  nameEn: json['nameEn'] as String? ?? '',
  nameAr: json['nameAr'] as String? ?? '',
  selected: json['selected'] as bool? ?? false,
);

Map<String, dynamic> _$$FilterValueModelImplToJson(
  _$FilterValueModelImpl instance,
) => <String, dynamic>{
  'nameEn': instance.nameEn,
  'nameAr': instance.nameAr,
  'selected': instance.selected,
};

_$FacetDocumentModelImpl _$$FacetDocumentModelImplFromJson(
  Map<String, dynamic> json,
) => _$FacetDocumentModelImpl(
  id: json['id'] as String? ?? "",
  facets:
      (json['facets'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, FacetData.fromJson(e as Map<String, dynamic>)),
      ) ??
      const {},
);

Map<String, dynamic> _$$FacetDocumentModelImplToJson(
  _$FacetDocumentModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'facets': instance.facets.map((k, e) => MapEntry(k, e.toJson())),
};

_$FacetDataImpl _$$FacetDataImplFromJson(Map<String, dynamic> json) =>
    _$FacetDataImpl(
      nameEn: json['nameEn'] as String? ?? '',
      nameAr: json['nameAr'] as String? ?? '',
      pinned: json['pinned'] as bool? ?? false,
      order: (json['order'] as num?)?.toInt() ?? 0,
      values:
          (json['values'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, FacetData.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$FacetDataImplToJson(_$FacetDataImpl instance) =>
    <String, dynamic>{
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'pinned': instance.pinned,
      'order': instance.order,
      'values': instance.values.map((k, e) => MapEntry(k, e.toJson())),
    };

_$UnifiedFacetImpl _$$UnifiedFacetImplFromJson(Map<String, dynamic> json) =>
    _$UnifiedFacetImpl(
      attribute: json['attribute'] as String,
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      pinned: json['pinned'] as bool? ?? false,
      values:
          (json['values'] as List<dynamic>?)
              ?.map(
                (e) => UnifiedFacetValue.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      stats: json['stats'] == null
          ? null
          : FacetStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnifiedFacetImplToJson(_$UnifiedFacetImpl instance) =>
    <String, dynamic>{
      'attribute': instance.attribute,
      'name': instance.name,
      'order': instance.order,
      'pinned': instance.pinned,
      'values': instance.values,
      'stats': instance.stats,
    };

_$UnifiedFacetValueImpl _$$UnifiedFacetValueImplFromJson(
  Map<String, dynamic> json,
) => _$UnifiedFacetValueImpl(
  value: json['value'] as String,
  name: json['name'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$UnifiedFacetValueImplToJson(
  _$UnifiedFacetValueImpl instance,
) => <String, dynamic>{
  'value': instance.value,
  'name': instance.name,
  'count': instance.count,
};
