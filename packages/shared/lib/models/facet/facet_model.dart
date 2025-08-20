import 'package:freezed_annotation/freezed_annotation.dart';

part 'facet_model.freezed.dart';
part 'facet_model.g.dart';

@freezed
class FacetModel with _$FacetModel {
  const factory FacetModel({
    @Default([]) List<FacetCount> counts,
    @JsonKey(name: 'field_name') @Default("") String fieldName,
    @Default(false) bool sampled,
    @Default(FacetStats()) FacetStats stats,
  }) = _FacetModel;

  factory FacetModel.fromJson(Map<String, dynamic> json) => _$FacetModelFromJson(json);
}

@freezed
class FacetCount with _$FacetCount {
  const factory FacetCount({
    @Default(0) int count,
    @Default("") String highlighted,
    @Default("") String value,
  }) = _FacetCount;

  factory FacetCount.fromJson(Map<String, dynamic> json) => _$FacetCountFromJson(json);
}

@freezed
class FacetStats with _$FacetStats {
  const factory FacetStats({
    @Default(0.0) double avg,
    @Default(0.0) double max,
    @Default(0.0) double min,
    @Default(0.0) double sum,
    @JsonKey(name: 'total_values') @Default(0) int totalValues,
  }) = _FacetStats;

  factory FacetStats.fromJson(Map<String, dynamic> json) => _$FacetStatsFromJson(json);
}
