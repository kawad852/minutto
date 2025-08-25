// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiResultsModelImpl _$$MultiResultsModelImplFromJson(
  Map<String, dynamic> json,
) => _$MultiResultsModelImpl(
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$MultiResultsModelImplToJson(
  _$MultiResultsModelImpl instance,
) => <String, dynamic>{
  'results': instance.results.map((e) => e.toJson()).toList(),
};

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      found: (json['found'] as num?)?.toInt() ?? 0,
      nbHits: (json['nbHits'] as num?)?.toInt() ?? 0,
      facetCounts:
          (json['facet_counts'] as List<dynamic>?)
              ?.map((e) => FacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hits:
          (json['hits'] as List<dynamic>?)
              ?.map((e) => ResultsHit.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      outOf: (json['outOf'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      requestParams: json['requestParams'] == null
          ? null
          : RequestParams.fromJson(
              json['requestParams'] as Map<String, dynamic>,
            ),
      searchRequest: json['searchRequest'] == null
          ? null
          : SearchRequestModel.fromJson(
              json['searchRequest'] as Map<String, dynamic>,
            ),
      searchCutoff: json['searchCutoff'] as bool? ?? false,
      searchTimeMs: (json['searchTimeMs'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResultsModelImplToJson(_$ResultsModelImpl instance) =>
    <String, dynamic>{
      'found': instance.found,
      'nbHits': instance.nbHits,
      'facet_counts': instance.facetCounts.map((e) => e.toJson()).toList(),
      'hits': instance.hits.map((e) => e.toJson()).toList(),
      'outOf': instance.outOf,
      'page': instance.page,
      'requestParams': instance.requestParams?.toJson(),
      'searchRequest': instance.searchRequest?.toJson(),
      'searchCutoff': instance.searchCutoff,
      'searchTimeMs': instance.searchTimeMs,
    };

_$ResultsHitImpl _$$ResultsHitImplFromJson(Map<String, dynamic> json) =>
    _$ResultsHitImpl(
      document: json['document'] as Map<String, dynamic>? ?? const {},
      highlight: (json['highlight'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Highlight.fromJson(e as Map<String, dynamic>)),
      ),
      highlights:
          (json['highlights'] as List<dynamic>?)
              ?.map((e) => HighlightItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      textMatch: (json['textMatch'] as num?)?.toInt(),
      textMatchInfo: json['textMatchInfo'] == null
          ? null
          : TextMatchInfo.fromJson(
              json['textMatchInfo'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$ResultsHitImplToJson(_$ResultsHitImpl instance) =>
    <String, dynamic>{
      'document': instance.document,
      'highlight': instance.highlight?.map((k, e) => MapEntry(k, e.toJson())),
      'highlights': instance.highlights.map((e) => e.toJson()).toList(),
      'textMatch': instance.textMatch,
      'textMatchInfo': instance.textMatchInfo?.toJson(),
    };

_$ResultsDocumentImpl _$$ResultsDocumentImplFromJson(
  Map<String, dynamic> json,
) => _$ResultsDocumentImpl(
  count: (json['count'] as num?)?.toInt() ?? 0,
  id: json['id'] as String?,
  q: json['q'] as String? ?? '',
);

Map<String, dynamic> _$$ResultsDocumentImplToJson(
  _$ResultsDocumentImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'id': instance.id,
  'q': instance.q,
};

_$HighlightImpl _$$HighlightImplFromJson(Map<String, dynamic> json) =>
    _$HighlightImpl(
      matchedTokens:
          (json['matchedTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      snippet: json['snippet'] as String? ?? '',
    );

Map<String, dynamic> _$$HighlightImplToJson(_$HighlightImpl instance) =>
    <String, dynamic>{
      'matchedTokens': instance.matchedTokens,
      'snippet': instance.snippet,
    };

_$HighlightItemImpl _$$HighlightItemImplFromJson(Map<String, dynamic> json) =>
    _$HighlightItemImpl(
      field: json['field'] as String?,
      matchedTokens:
          (json['matchedTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      snippet: json['snippet'] as String? ?? '',
    );

Map<String, dynamic> _$$HighlightItemImplToJson(_$HighlightItemImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'matchedTokens': instance.matchedTokens,
      'snippet': instance.snippet,
    };

_$TextMatchInfoImpl _$$TextMatchInfoImplFromJson(Map<String, dynamic> json) =>
    _$TextMatchInfoImpl(
      bestFieldScore: (json['bestFieldScore'] as num?)?.toInt(),
      bestFieldWeight: (json['bestFieldWeight'] as num?)?.toInt(),
      fieldsMatched: (json['fieldsMatched'] as num?)?.toInt(),
      numTokensDropped: (json['numTokensDropped'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toInt(),
      tokensMatched: (json['tokensMatched'] as num?)?.toInt(),
      typoPrefixScore: (json['typoPrefixScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TextMatchInfoImplToJson(_$TextMatchInfoImpl instance) =>
    <String, dynamic>{
      'bestFieldScore': instance.bestFieldScore,
      'bestFieldWeight': instance.bestFieldWeight,
      'fieldsMatched': instance.fieldsMatched,
      'numTokensDropped': instance.numTokensDropped,
      'score': instance.score,
      'tokensMatched': instance.tokensMatched,
      'typoPrefixScore': instance.typoPrefixScore,
    };

_$RequestParamsImpl _$$RequestParamsImplFromJson(Map<String, dynamic> json) =>
    _$RequestParamsImpl(
      collectionName: json['collectionName'] as String?,
      firstQ: json['firstQ'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      q: json['q'] as String?,
    );

Map<String, dynamic> _$$RequestParamsImplToJson(_$RequestParamsImpl instance) =>
    <String, dynamic>{
      'collectionName': instance.collectionName,
      'firstQ': instance.firstQ,
      'perPage': instance.perPage,
      'q': instance.q,
    };

_$HighLightSuggestionImpl _$$HighLightSuggestionImplFromJson(
  Map<String, dynamic> json,
) => _$HighLightSuggestionImpl(
  q: json['q'] == null
      ? null
      : Highlight.fromJson(json['q'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HighLightSuggestionImplToJson(
  _$HighLightSuggestionImpl instance,
) => <String, dynamic>{'q': instance.q?.toJson()};
