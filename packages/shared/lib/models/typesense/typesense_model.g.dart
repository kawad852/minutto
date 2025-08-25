// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typesense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRequestModelImpl _$$SearchRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$SearchRequestModelImpl(
  q: json['q'] as String? ?? "*",
  collection: json['collection'] as String,
  queryBy: json['query_by'] as String?,
  facetBy: json['facet_by'] as String?,
  filters:
      (json['filter_by'] as List<dynamic>?)
          ?.map((e) => FilterByModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  vectorQuery: json['vector_query'] as String?,
);

Map<String, dynamic> _$$SearchRequestModelImplToJson(
  _$SearchRequestModelImpl instance,
) => <String, dynamic>{
  'q': instance.q,
  'collection': instance.collection,
  'query_by': instance.queryBy,
  'facet_by': instance.facetBy,
  'filter_by': instance.filters.map((e) => e.toJson()).toList(),
  'vector_query': instance.vectorQuery,
};

_$FilterByModelImpl _$$FilterByModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterByModelImpl(
      value: json['value'] as String? ?? "",
      nameEn: json['nameEn'] as String? ?? "",
      nameAr: json['nameAr'] as String? ?? "",
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$FilterByModelImplToJson(_$FilterByModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nameEn': instance.nameEn,
      'nameAr': instance.nameAr,
      'selected': instance.selected,
    };
