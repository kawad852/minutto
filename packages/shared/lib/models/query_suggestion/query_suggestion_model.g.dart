// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_suggestion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuerySuggestionModelImpl _$$QuerySuggestionModelImplFromJson(
  Map<String, dynamic> json,
) => _$QuerySuggestionModelImpl(
  objectID: json['objectID'] as String,
  query: json['query'] as String,
  count: (json['count'] as num).toInt(),
  highlightResult: HighlightResult.fromJson(
    json['_highlightResult'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$QuerySuggestionModelImplToJson(
  _$QuerySuggestionModelImpl instance,
) => <String, dynamic>{
  'objectID': instance.objectID,
  'query': instance.query,
  'count': instance.count,
  '_highlightResult': instance.highlightResult,
};

_$HighlightResultImpl _$$HighlightResultImplFromJson(
  Map<String, dynamic> json,
) => _$HighlightResultImpl(
  query: HighlightQuery.fromJson(json['query'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HighlightResultImplToJson(
  _$HighlightResultImpl instance,
) => <String, dynamic>{'query': instance.query};

_$HighlightQueryImpl _$$HighlightQueryImplFromJson(Map<String, dynamic> json) =>
    _$HighlightQueryImpl(
      value: json['value'] as String,
      matchLevel: json['matchLevel'] as String,
      matchedWords: (json['matchedWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HighlightQueryImplToJson(
  _$HighlightQueryImpl instance,
) => <String, dynamic>{
  'value': instance.value,
  'matchLevel': instance.matchLevel,
  'matchedWords': instance.matchedWords,
};
