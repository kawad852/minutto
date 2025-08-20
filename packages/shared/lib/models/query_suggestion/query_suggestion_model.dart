import '../../shared.dart';

part 'query_suggestion_model.freezed.dart';
part 'query_suggestion_model.g.dart';

@freezed
class QuerySuggestionModel with _$QuerySuggestionModel {
  const factory QuerySuggestionModel({
    required String objectID,
    required String query,
    required int count,
    @JsonKey(name: '_highlightResult') required HighlightResult highlightResult,
  }) = _QuerySuggestionModel;

  factory QuerySuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuerySuggestionModelFromJson(json);
}

@freezed
class HighlightResult with _$HighlightResult {
  const factory HighlightResult({required HighlightQuery query}) = _HighlightResult;

  factory HighlightResult.fromJson(Map<String, dynamic> json) => _$HighlightResultFromJson(json);
}

@freezed
class HighlightQuery with _$HighlightQuery {
  const factory HighlightQuery({
    required String value,
    required String matchLevel,
    required List<String> matchedWords,
  }) = _HighlightQuery;

  factory HighlightQuery.fromJson(Map<String, dynamic> json) => _$HighlightQueryFromJson(json);
}
