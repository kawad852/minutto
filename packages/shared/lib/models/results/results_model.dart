import 'package:shared/shared.dart';

import '../facet/facet_model.dart';

part 'results_model.freezed.dart';
part 'results_model.g.dart';

@unfreezed
class MultiResultsModel with _$MultiResultsModel {
  factory MultiResultsModel({@Default([]) List<ResultsModel> results}) = _MultiResultsModel;

  factory MultiResultsModel.fromJson(Map<String, dynamic> json) =>
      _$MultiResultsModelFromJson(json);
}

@unfreezed
class ResultsModel with _$ResultsModel {
  factory ResultsModel({
    @Default(0) int found,
    @Default(0) int nbHits,
    @JsonKey(name: "facet_counts") @Default([]) List<FacetModel> facetCounts,
    @Default([]) List<ResultsHit> hits,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default([])
    List<UnifiedFacet> unifiedFacets,
    @Default(0) int outOf,
    @Default(1) int page,
    RequestParams? requestParams,
    SearchRequestModel? searchRequest,
    @Default(false) bool searchCutoff,
    @Default(0) int searchTimeMs,
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) => _$ResultsModelFromJson(json);

  ResultsModel._();

  factory ResultsModel.mock() {
    return ResultsModel(
      hits: [
        ResultsHit(
          document: {
            "facet_counts": [],
            "found": 1,
            "out_of": 1,
            "page": 1,
            "request_params": {"collection_name": "companies", "per_page": 10, "q": "stark"},
            "search_time_ms": 1,
            "hits": [
              {
                "highlights": [
                  {
                    "field": "company_name",
                    "snippet": "<mark>Stark</mark> Industries",
                    "matched_tokens": ["Stark"],
                  },
                ],
                "document": {
                  "id": "124",
                  "q": "xxx",
                  "count": 0,
                  "company_name": "Stark Industries",
                  "num_employees": 5215,
                  "country": "USA",
                },
                "text_match": 130916,
              },
            ],
          },
        ),
      ],
    );
  }
}

@unfreezed
class ResultsHit with _$ResultsHit {
  factory ResultsHit({
    @Default({}) Map<String, dynamic> document,
    Map<String, Highlight>? highlight,
    // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
    @Default([]) List<HighlightItem> highlights,
    int? textMatch,
    TextMatchInfo? textMatchInfo,
  }) = _ResultsHit;

  factory ResultsHit.fromJson(Map<String, dynamic> json) => _$ResultsHitFromJson(json);
}

@unfreezed
class ResultsDocument with _$ResultsDocument {
  factory ResultsDocument({@Default(0) int count, String? id, @Default('') String q}) =
      _ResultsDocument;

  factory ResultsDocument.fromJson(Map<String, dynamic> json) => _$ResultsDocumentFromJson(json);
}

@unfreezed
class Highlight with _$Highlight {
  factory Highlight({@Default([]) List<String> matchedTokens, @Default('') String snippet}) =
      _Highlight;

  factory Highlight.fromJson(Map<String, dynamic> json) => _$HighlightFromJson(json);
}

@unfreezed
class HighlightItem with _$HighlightItem {
  factory HighlightItem({
    String? field,
    @Default([]) List<String> matchedTokens,
    @Default('') String snippet,
  }) = _HighlightItem;

  factory HighlightItem.fromJson(Map<String, dynamic> json) => _$HighlightItemFromJson(json);
}

@unfreezed
class TextMatchInfo with _$TextMatchInfo {
  factory TextMatchInfo({
    int? bestFieldScore,
    int? bestFieldWeight,
    int? fieldsMatched,
    int? numTokensDropped,
    int? score,
    int? tokensMatched,
    int? typoPrefixScore,
  }) = _TextMatchInfo;

  factory TextMatchInfo.fromJson(Map<String, dynamic> json) => _$TextMatchInfoFromJson(json);
}

@unfreezed
class RequestParams with _$RequestParams {
  factory RequestParams({String? collectionName, String? firstQ, int? perPage, String? q}) =
      _RequestParams;

  factory RequestParams.fromJson(Map<String, dynamic> json) => _$RequestParamsFromJson(json);
}

@unfreezed
class HighLightSuggestion with _$HighLightSuggestion {
  factory HighLightSuggestion({Highlight? q}) = _HighLightSuggestion;

  factory HighLightSuggestion.fromJson(Map<String, dynamic> json) =>
      _$HighLightSuggestionFromJson(json);
}
