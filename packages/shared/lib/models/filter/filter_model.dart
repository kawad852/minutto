import '../../shared.dart' hide Filter;
import '../../shared_2.dart';
import '../facet/facet_model.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@unfreezed
class FilterModel with _$FilterModel {
  @JsonSerializable(explicitToJson: true)
  factory FilterModel({
    @Default('') String id,
    @Default('') String attribute,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default('MULTI') String selectionType,
    @Default(false) bool pinned,
    String? value,
    @Default({}) Map<String, FilterValueModel> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Future<List<SelectableFacet>>? selectableFacetsFuture,
    @JsonKey(includeFromJson: false, includeToJson: false) RangeValues? priceRange,
    @JsonKey(includeFromJson: false, includeToJson: false) FilterGroupID? filterGroupID,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) => _$FilterModelFromJson(json);

  FilterModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

@unfreezed
class FilterValueModel with _$FilterValueModel {
  @JsonSerializable(explicitToJson: true)
  factory FilterValueModel({
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default(false) bool selected,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  }) = _FilterValueModel;

  factory FilterValueModel.fromJson(Map<String, dynamic> json) => _$FilterValueModelFromJson(json);

  FilterValueModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

@unfreezed
class FacetDocumentModel with _$FacetDocumentModel {
  @JsonSerializable(explicitToJson: true)
  factory FacetDocumentModel({@Default("") String id, @Default({}) Map<String, FacetData> facets}) =
      _FacetDocumentModel;

  factory FacetDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$FacetDocumentModelFromJson(json);

  factory FacetDocumentModel.mock() {
    return FacetDocumentModel(
      facets: {
        "1": FacetData(nameEn: "XXXXXXX", nameAr: BoneMock.name, pinned: true),
        "2": FacetData(nameEn: "XXXXXXX", nameAr: BoneMock.name, pinned: true),
        "3": FacetData(nameEn: "XXXXXXX", nameAr: BoneMock.name, pinned: true),
        "4": FacetData(nameEn: "XXXXXXX", nameAr: BoneMock.name, pinned: true),
      },
    );
  }
}

@unfreezed
class FacetData with _$FacetData {
  @JsonSerializable(explicitToJson: true)
  factory FacetData({
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default(false) bool pinned,
    @Default(0) int order,
    @Default({}) Map<String, FacetData> values,
    @JsonKey(includeFromJson: false, includeToJson: false) RangeValues? rangeValues,
  }) = _FacetData;

  factory FacetData.fromJson(Map<String, dynamic> json) => _$FacetDataFromJson(json);

  FacetData._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }
}

///..........
@unfreezed
class UnifiedFacet with _$UnifiedFacet {
  factory UnifiedFacet({
    required String attribute,
    required String name,
    required int order,
    @Default(false) bool pinned,
    @Default([]) List<UnifiedFacetValue> values,
    @JsonKey(includeFromJson: false, includeToJson: false) RangeValues? rangeValues,
    FacetStats? stats,
  }) = _UnifiedFacet;

  factory UnifiedFacet.fromJson(Map<String, dynamic> json) => _$UnifiedFacetFromJson(json);
}

@unfreezed
class UnifiedFacetValue with _$UnifiedFacetValue {
  factory UnifiedFacetValue({required String value, required String name, required int count}) =
      _UnifiedFacetValue;

  factory UnifiedFacetValue.fromJson(Map<String, dynamic> json) =>
      _$UnifiedFacetValueFromJson(json);
}
