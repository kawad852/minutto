import '../../shared.dart';

part 'typesense_model.freezed.dart';
part 'typesense_model.g.dart';

@unfreezed
class SearchRequestModel with _$SearchRequestModel {
  factory SearchRequestModel({
    @Default("*") String q,
    required String collection,
    @JsonKey(name: "query_by") String? queryBy,
    @JsonKey(name: "facet_by") String? facetBy,
    @JsonKey(name: "filter_by") @Default([]) List<FilterByModel> filters,
    @JsonKey(name: "vector_query") String? vectorQuery,
  }) = _SearchRequestModel;

  factory SearchRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestModelFromJson(json);
}

@unfreezed
class FilterByModel with _$FilterByModel {
  factory FilterByModel({
    @Default("") String value,
    @Default("") String nameEn,
    @Default("") String nameAr,
    @Default(false) bool selected,
  }) = _FilterByModel;

  factory FilterByModel.fromJson(Map<String, dynamic> json) => _$FilterByModelFromJson(json);
}
