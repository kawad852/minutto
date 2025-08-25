// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacetModelImpl _$$FacetModelImplFromJson(Map<String, dynamic> json) =>
    _$FacetModelImpl(
      counts:
          (json['counts'] as List<dynamic>?)
              ?.map((e) => FacetCount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fieldName: json['field_name'] as String? ?? "",
      sampled: json['sampled'] as bool? ?? false,
      stats: json['stats'] == null
          ? const FacetStats()
          : FacetStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FacetModelImplToJson(_$FacetModelImpl instance) =>
    <String, dynamic>{
      'counts': instance.counts.map((e) => e.toJson()).toList(),
      'field_name': instance.fieldName,
      'sampled': instance.sampled,
      'stats': instance.stats.toJson(),
    };

_$FacetCountImpl _$$FacetCountImplFromJson(Map<String, dynamic> json) =>
    _$FacetCountImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
      highlighted: json['highlighted'] as String? ?? "",
      value: json['value'] as String? ?? "",
    );

Map<String, dynamic> _$$FacetCountImplToJson(_$FacetCountImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'highlighted': instance.highlighted,
      'value': instance.value,
    };

_$FacetStatsImpl _$$FacetStatsImplFromJson(Map<String, dynamic> json) =>
    _$FacetStatsImpl(
      avg: (json['avg'] as num?)?.toDouble() ?? 0.0,
      max: (json['max'] as num?)?.toDouble() ?? 0.0,
      min: (json['min'] as num?)?.toDouble() ?? 0.0,
      sum: (json['sum'] as num?)?.toDouble() ?? 0.0,
      totalValues: (json['total_values'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FacetStatsImplToJson(_$FacetStatsImpl instance) =>
    <String, dynamic>{
      'avg': instance.avg,
      'max': instance.max,
      'min': instance.min,
      'sum': instance.sum,
      'total_values': instance.totalValues,
    };
