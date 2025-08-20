// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_suggestion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

QuerySuggestionModel _$QuerySuggestionModelFromJson(Map<String, dynamic> json) {
  return _QuerySuggestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuerySuggestionModel {
  String get objectID => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: '_highlightResult')
  HighlightResult get highlightResult => throw _privateConstructorUsedError;

  /// Serializes this QuerySuggestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuerySuggestionModelCopyWith<QuerySuggestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuerySuggestionModelCopyWith<$Res> {
  factory $QuerySuggestionModelCopyWith(
    QuerySuggestionModel value,
    $Res Function(QuerySuggestionModel) then,
  ) = _$QuerySuggestionModelCopyWithImpl<$Res, QuerySuggestionModel>;
  @useResult
  $Res call({
    String objectID,
    String query,
    int count,
    @JsonKey(name: '_highlightResult') HighlightResult highlightResult,
  });

  $HighlightResultCopyWith<$Res> get highlightResult;
}

/// @nodoc
class _$QuerySuggestionModelCopyWithImpl<
  $Res,
  $Val extends QuerySuggestionModel
>
    implements $QuerySuggestionModelCopyWith<$Res> {
  _$QuerySuggestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectID = null,
    Object? query = null,
    Object? count = null,
    Object? highlightResult = null,
  }) {
    return _then(
      _value.copyWith(
            objectID: null == objectID
                ? _value.objectID
                : objectID // ignore: cast_nullable_to_non_nullable
                      as String,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            highlightResult: null == highlightResult
                ? _value.highlightResult
                : highlightResult // ignore: cast_nullable_to_non_nullable
                      as HighlightResult,
          )
          as $Val,
    );
  }

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HighlightResultCopyWith<$Res> get highlightResult {
    return $HighlightResultCopyWith<$Res>(_value.highlightResult, (value) {
      return _then(_value.copyWith(highlightResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuerySuggestionModelImplCopyWith<$Res>
    implements $QuerySuggestionModelCopyWith<$Res> {
  factory _$$QuerySuggestionModelImplCopyWith(
    _$QuerySuggestionModelImpl value,
    $Res Function(_$QuerySuggestionModelImpl) then,
  ) = __$$QuerySuggestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String objectID,
    String query,
    int count,
    @JsonKey(name: '_highlightResult') HighlightResult highlightResult,
  });

  @override
  $HighlightResultCopyWith<$Res> get highlightResult;
}

/// @nodoc
class __$$QuerySuggestionModelImplCopyWithImpl<$Res>
    extends _$QuerySuggestionModelCopyWithImpl<$Res, _$QuerySuggestionModelImpl>
    implements _$$QuerySuggestionModelImplCopyWith<$Res> {
  __$$QuerySuggestionModelImplCopyWithImpl(
    _$QuerySuggestionModelImpl _value,
    $Res Function(_$QuerySuggestionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectID = null,
    Object? query = null,
    Object? count = null,
    Object? highlightResult = null,
  }) {
    return _then(
      _$QuerySuggestionModelImpl(
        objectID: null == objectID
            ? _value.objectID
            : objectID // ignore: cast_nullable_to_non_nullable
                  as String,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        highlightResult: null == highlightResult
            ? _value.highlightResult
            : highlightResult // ignore: cast_nullable_to_non_nullable
                  as HighlightResult,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuerySuggestionModelImpl implements _QuerySuggestionModel {
  const _$QuerySuggestionModelImpl({
    required this.objectID,
    required this.query,
    required this.count,
    @JsonKey(name: '_highlightResult') required this.highlightResult,
  });

  factory _$QuerySuggestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuerySuggestionModelImplFromJson(json);

  @override
  final String objectID;
  @override
  final String query;
  @override
  final int count;
  @override
  @JsonKey(name: '_highlightResult')
  final HighlightResult highlightResult;

  @override
  String toString() {
    return 'QuerySuggestionModel(objectID: $objectID, query: $query, count: $count, highlightResult: $highlightResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuerySuggestionModelImpl &&
            (identical(other.objectID, objectID) ||
                other.objectID == objectID) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.highlightResult, highlightResult) ||
                other.highlightResult == highlightResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, objectID, query, count, highlightResult);

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuerySuggestionModelImplCopyWith<_$QuerySuggestionModelImpl>
  get copyWith =>
      __$$QuerySuggestionModelImplCopyWithImpl<_$QuerySuggestionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuerySuggestionModelImplToJson(this);
  }
}

abstract class _QuerySuggestionModel implements QuerySuggestionModel {
  const factory _QuerySuggestionModel({
    required final String objectID,
    required final String query,
    required final int count,
    @JsonKey(name: '_highlightResult')
    required final HighlightResult highlightResult,
  }) = _$QuerySuggestionModelImpl;

  factory _QuerySuggestionModel.fromJson(Map<String, dynamic> json) =
      _$QuerySuggestionModelImpl.fromJson;

  @override
  String get objectID;
  @override
  String get query;
  @override
  int get count;
  @override
  @JsonKey(name: '_highlightResult')
  HighlightResult get highlightResult;

  /// Create a copy of QuerySuggestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuerySuggestionModelImplCopyWith<_$QuerySuggestionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

HighlightResult _$HighlightResultFromJson(Map<String, dynamic> json) {
  return _HighlightResult.fromJson(json);
}

/// @nodoc
mixin _$HighlightResult {
  HighlightQuery get query => throw _privateConstructorUsedError;

  /// Serializes this HighlightResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighlightResultCopyWith<HighlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightResultCopyWith<$Res> {
  factory $HighlightResultCopyWith(
    HighlightResult value,
    $Res Function(HighlightResult) then,
  ) = _$HighlightResultCopyWithImpl<$Res, HighlightResult>;
  @useResult
  $Res call({HighlightQuery query});

  $HighlightQueryCopyWith<$Res> get query;
}

/// @nodoc
class _$HighlightResultCopyWithImpl<$Res, $Val extends HighlightResult>
    implements $HighlightResultCopyWith<$Res> {
  _$HighlightResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _value.copyWith(
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as HighlightQuery,
          )
          as $Val,
    );
  }

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HighlightQueryCopyWith<$Res> get query {
    return $HighlightQueryCopyWith<$Res>(_value.query, (value) {
      return _then(_value.copyWith(query: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighlightResultImplCopyWith<$Res>
    implements $HighlightResultCopyWith<$Res> {
  factory _$$HighlightResultImplCopyWith(
    _$HighlightResultImpl value,
    $Res Function(_$HighlightResultImpl) then,
  ) = __$$HighlightResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HighlightQuery query});

  @override
  $HighlightQueryCopyWith<$Res> get query;
}

/// @nodoc
class __$$HighlightResultImplCopyWithImpl<$Res>
    extends _$HighlightResultCopyWithImpl<$Res, _$HighlightResultImpl>
    implements _$$HighlightResultImplCopyWith<$Res> {
  __$$HighlightResultImplCopyWithImpl(
    _$HighlightResultImpl _value,
    $Res Function(_$HighlightResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$HighlightResultImpl(
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as HighlightQuery,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightResultImpl implements _HighlightResult {
  const _$HighlightResultImpl({required this.query});

  factory _$HighlightResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightResultImplFromJson(json);

  @override
  final HighlightQuery query;

  @override
  String toString() {
    return 'HighlightResult(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightResultImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightResultImplCopyWith<_$HighlightResultImpl> get copyWith =>
      __$$HighlightResultImplCopyWithImpl<_$HighlightResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightResultImplToJson(this);
  }
}

abstract class _HighlightResult implements HighlightResult {
  const factory _HighlightResult({required final HighlightQuery query}) =
      _$HighlightResultImpl;

  factory _HighlightResult.fromJson(Map<String, dynamic> json) =
      _$HighlightResultImpl.fromJson;

  @override
  HighlightQuery get query;

  /// Create a copy of HighlightResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighlightResultImplCopyWith<_$HighlightResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HighlightQuery _$HighlightQueryFromJson(Map<String, dynamic> json) {
  return _HighlightQuery.fromJson(json);
}

/// @nodoc
mixin _$HighlightQuery {
  String get value => throw _privateConstructorUsedError;
  String get matchLevel => throw _privateConstructorUsedError;
  List<String> get matchedWords => throw _privateConstructorUsedError;

  /// Serializes this HighlightQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HighlightQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighlightQueryCopyWith<HighlightQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightQueryCopyWith<$Res> {
  factory $HighlightQueryCopyWith(
    HighlightQuery value,
    $Res Function(HighlightQuery) then,
  ) = _$HighlightQueryCopyWithImpl<$Res, HighlightQuery>;
  @useResult
  $Res call({String value, String matchLevel, List<String> matchedWords});
}

/// @nodoc
class _$HighlightQueryCopyWithImpl<$Res, $Val extends HighlightQuery>
    implements $HighlightQueryCopyWith<$Res> {
  _$HighlightQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlightQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? matchLevel = null,
    Object? matchedWords = null,
  }) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            matchLevel: null == matchLevel
                ? _value.matchLevel
                : matchLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            matchedWords: null == matchedWords
                ? _value.matchedWords
                : matchedWords // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HighlightQueryImplCopyWith<$Res>
    implements $HighlightQueryCopyWith<$Res> {
  factory _$$HighlightQueryImplCopyWith(
    _$HighlightQueryImpl value,
    $Res Function(_$HighlightQueryImpl) then,
  ) = __$$HighlightQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String matchLevel, List<String> matchedWords});
}

/// @nodoc
class __$$HighlightQueryImplCopyWithImpl<$Res>
    extends _$HighlightQueryCopyWithImpl<$Res, _$HighlightQueryImpl>
    implements _$$HighlightQueryImplCopyWith<$Res> {
  __$$HighlightQueryImplCopyWithImpl(
    _$HighlightQueryImpl _value,
    $Res Function(_$HighlightQueryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HighlightQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? matchLevel = null,
    Object? matchedWords = null,
  }) {
    return _then(
      _$HighlightQueryImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        matchLevel: null == matchLevel
            ? _value.matchLevel
            : matchLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        matchedWords: null == matchedWords
            ? _value._matchedWords
            : matchedWords // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightQueryImpl implements _HighlightQuery {
  const _$HighlightQueryImpl({
    required this.value,
    required this.matchLevel,
    required final List<String> matchedWords,
  }) : _matchedWords = matchedWords;

  factory _$HighlightQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightQueryImplFromJson(json);

  @override
  final String value;
  @override
  final String matchLevel;
  final List<String> _matchedWords;
  @override
  List<String> get matchedWords {
    if (_matchedWords is EqualUnmodifiableListView) return _matchedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedWords);
  }

  @override
  String toString() {
    return 'HighlightQuery(value: $value, matchLevel: $matchLevel, matchedWords: $matchedWords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightQueryImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.matchLevel, matchLevel) ||
                other.matchLevel == matchLevel) &&
            const DeepCollectionEquality().equals(
              other._matchedWords,
              _matchedWords,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    value,
    matchLevel,
    const DeepCollectionEquality().hash(_matchedWords),
  );

  /// Create a copy of HighlightQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightQueryImplCopyWith<_$HighlightQueryImpl> get copyWith =>
      __$$HighlightQueryImplCopyWithImpl<_$HighlightQueryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightQueryImplToJson(this);
  }
}

abstract class _HighlightQuery implements HighlightQuery {
  const factory _HighlightQuery({
    required final String value,
    required final String matchLevel,
    required final List<String> matchedWords,
  }) = _$HighlightQueryImpl;

  factory _HighlightQuery.fromJson(Map<String, dynamic> json) =
      _$HighlightQueryImpl.fromJson;

  @override
  String get value;
  @override
  String get matchLevel;
  @override
  List<String> get matchedWords;

  /// Create a copy of HighlightQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighlightQueryImplCopyWith<_$HighlightQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
