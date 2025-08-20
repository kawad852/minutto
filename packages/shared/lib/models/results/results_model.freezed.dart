// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MultiResultsModel _$MultiResultsModelFromJson(Map<String, dynamic> json) {
  return _MultiResultsModel.fromJson(json);
}

/// @nodoc
mixin _$MultiResultsModel {
  List<ResultsModel> get results => throw _privateConstructorUsedError;
  set results(List<ResultsModel> value) => throw _privateConstructorUsedError;

  /// Serializes this MultiResultsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MultiResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiResultsModelCopyWith<MultiResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiResultsModelCopyWith<$Res> {
  factory $MultiResultsModelCopyWith(
    MultiResultsModel value,
    $Res Function(MultiResultsModel) then,
  ) = _$MultiResultsModelCopyWithImpl<$Res, MultiResultsModel>;
  @useResult
  $Res call({List<ResultsModel> results});
}

/// @nodoc
class _$MultiResultsModelCopyWithImpl<$Res, $Val extends MultiResultsModel>
    implements $MultiResultsModelCopyWith<$Res> {
  _$MultiResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _value.copyWith(
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<ResultsModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MultiResultsModelImplCopyWith<$Res>
    implements $MultiResultsModelCopyWith<$Res> {
  factory _$$MultiResultsModelImplCopyWith(
    _$MultiResultsModelImpl value,
    $Res Function(_$MultiResultsModelImpl) then,
  ) = __$$MultiResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultsModel> results});
}

/// @nodoc
class __$$MultiResultsModelImplCopyWithImpl<$Res>
    extends _$MultiResultsModelCopyWithImpl<$Res, _$MultiResultsModelImpl>
    implements _$$MultiResultsModelImplCopyWith<$Res> {
  __$$MultiResultsModelImplCopyWithImpl(
    _$MultiResultsModelImpl _value,
    $Res Function(_$MultiResultsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MultiResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? results = null}) {
    return _then(
      _$MultiResultsModelImpl(
        results: null == results
            ? _value.results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<ResultsModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiResultsModelImpl implements _MultiResultsModel {
  _$MultiResultsModelImpl({this.results = const []});

  factory _$MultiResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiResultsModelImplFromJson(json);

  @override
  @JsonKey()
  List<ResultsModel> results;

  @override
  String toString() {
    return 'MultiResultsModel(results: $results)';
  }

  /// Create a copy of MultiResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiResultsModelImplCopyWith<_$MultiResultsModelImpl> get copyWith =>
      __$$MultiResultsModelImplCopyWithImpl<_$MultiResultsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiResultsModelImplToJson(this);
  }
}

abstract class _MultiResultsModel implements MultiResultsModel {
  factory _MultiResultsModel({List<ResultsModel> results}) =
      _$MultiResultsModelImpl;

  factory _MultiResultsModel.fromJson(Map<String, dynamic> json) =
      _$MultiResultsModelImpl.fromJson;

  @override
  List<ResultsModel> get results;
  set results(List<ResultsModel> value);

  /// Create a copy of MultiResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiResultsModelImplCopyWith<_$MultiResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  int get found => throw _privateConstructorUsedError;
  set found(int value) => throw _privateConstructorUsedError;
  int get nbHits => throw _privateConstructorUsedError;
  set nbHits(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "facet_counts")
  List<FacetModel> get facetCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "facet_counts")
  set facetCounts(List<FacetModel> value) => throw _privateConstructorUsedError;
  List<ResultsHit> get hits => throw _privateConstructorUsedError;
  set hits(List<ResultsHit> value) => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<UnifiedFacet> get unifiedFacets => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set unifiedFacets(List<UnifiedFacet> value) =>
      throw _privateConstructorUsedError;
  int get outOf => throw _privateConstructorUsedError;
  set outOf(int value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  RequestParams? get requestParams => throw _privateConstructorUsedError;
  set requestParams(RequestParams? value) => throw _privateConstructorUsedError;
  SearchRequestModel? get searchRequest => throw _privateConstructorUsedError;
  set searchRequest(SearchRequestModel? value) =>
      throw _privateConstructorUsedError;
  bool get searchCutoff => throw _privateConstructorUsedError;
  set searchCutoff(bool value) => throw _privateConstructorUsedError;
  int get searchTimeMs => throw _privateConstructorUsedError;
  set searchTimeMs(int value) => throw _privateConstructorUsedError;

  /// Serializes this ResultsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
    ResultsModel value,
    $Res Function(ResultsModel) then,
  ) = _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call({
    int found,
    int nbHits,
    @JsonKey(name: "facet_counts") List<FacetModel> facetCounts,
    List<ResultsHit> hits,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<UnifiedFacet> unifiedFacets,
    int outOf,
    int page,
    RequestParams? requestParams,
    SearchRequestModel? searchRequest,
    bool searchCutoff,
    int searchTimeMs,
  });

  $RequestParamsCopyWith<$Res>? get requestParams;
  $SearchRequestModelCopyWith<$Res>? get searchRequest;
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? found = null,
    Object? nbHits = null,
    Object? facetCounts = null,
    Object? hits = null,
    Object? unifiedFacets = null,
    Object? outOf = null,
    Object? page = null,
    Object? requestParams = freezed,
    Object? searchRequest = freezed,
    Object? searchCutoff = null,
    Object? searchTimeMs = null,
  }) {
    return _then(
      _value.copyWith(
            found: null == found
                ? _value.found
                : found // ignore: cast_nullable_to_non_nullable
                      as int,
            nbHits: null == nbHits
                ? _value.nbHits
                : nbHits // ignore: cast_nullable_to_non_nullable
                      as int,
            facetCounts: null == facetCounts
                ? _value.facetCounts
                : facetCounts // ignore: cast_nullable_to_non_nullable
                      as List<FacetModel>,
            hits: null == hits
                ? _value.hits
                : hits // ignore: cast_nullable_to_non_nullable
                      as List<ResultsHit>,
            unifiedFacets: null == unifiedFacets
                ? _value.unifiedFacets
                : unifiedFacets // ignore: cast_nullable_to_non_nullable
                      as List<UnifiedFacet>,
            outOf: null == outOf
                ? _value.outOf
                : outOf // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            requestParams: freezed == requestParams
                ? _value.requestParams
                : requestParams // ignore: cast_nullable_to_non_nullable
                      as RequestParams?,
            searchRequest: freezed == searchRequest
                ? _value.searchRequest
                : searchRequest // ignore: cast_nullable_to_non_nullable
                      as SearchRequestModel?,
            searchCutoff: null == searchCutoff
                ? _value.searchCutoff
                : searchCutoff // ignore: cast_nullable_to_non_nullable
                      as bool,
            searchTimeMs: null == searchTimeMs
                ? _value.searchTimeMs
                : searchTimeMs // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestParamsCopyWith<$Res>? get requestParams {
    if (_value.requestParams == null) {
      return null;
    }

    return $RequestParamsCopyWith<$Res>(_value.requestParams!, (value) {
      return _then(_value.copyWith(requestParams: value) as $Val);
    });
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRequestModelCopyWith<$Res>? get searchRequest {
    if (_value.searchRequest == null) {
      return null;
    }

    return $SearchRequestModelCopyWith<$Res>(_value.searchRequest!, (value) {
      return _then(_value.copyWith(searchRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsModelImplCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$ResultsModelImplCopyWith(
    _$ResultsModelImpl value,
    $Res Function(_$ResultsModelImpl) then,
  ) = __$$ResultsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int found,
    int nbHits,
    @JsonKey(name: "facet_counts") List<FacetModel> facetCounts,
    List<ResultsHit> hits,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<UnifiedFacet> unifiedFacets,
    int outOf,
    int page,
    RequestParams? requestParams,
    SearchRequestModel? searchRequest,
    bool searchCutoff,
    int searchTimeMs,
  });

  @override
  $RequestParamsCopyWith<$Res>? get requestParams;
  @override
  $SearchRequestModelCopyWith<$Res>? get searchRequest;
}

/// @nodoc
class __$$ResultsModelImplCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$ResultsModelImpl>
    implements _$$ResultsModelImplCopyWith<$Res> {
  __$$ResultsModelImplCopyWithImpl(
    _$ResultsModelImpl _value,
    $Res Function(_$ResultsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? found = null,
    Object? nbHits = null,
    Object? facetCounts = null,
    Object? hits = null,
    Object? unifiedFacets = null,
    Object? outOf = null,
    Object? page = null,
    Object? requestParams = freezed,
    Object? searchRequest = freezed,
    Object? searchCutoff = null,
    Object? searchTimeMs = null,
  }) {
    return _then(
      _$ResultsModelImpl(
        found: null == found
            ? _value.found
            : found // ignore: cast_nullable_to_non_nullable
                  as int,
        nbHits: null == nbHits
            ? _value.nbHits
            : nbHits // ignore: cast_nullable_to_non_nullable
                  as int,
        facetCounts: null == facetCounts
            ? _value.facetCounts
            : facetCounts // ignore: cast_nullable_to_non_nullable
                  as List<FacetModel>,
        hits: null == hits
            ? _value.hits
            : hits // ignore: cast_nullable_to_non_nullable
                  as List<ResultsHit>,
        unifiedFacets: null == unifiedFacets
            ? _value.unifiedFacets
            : unifiedFacets // ignore: cast_nullable_to_non_nullable
                  as List<UnifiedFacet>,
        outOf: null == outOf
            ? _value.outOf
            : outOf // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        requestParams: freezed == requestParams
            ? _value.requestParams
            : requestParams // ignore: cast_nullable_to_non_nullable
                  as RequestParams?,
        searchRequest: freezed == searchRequest
            ? _value.searchRequest
            : searchRequest // ignore: cast_nullable_to_non_nullable
                  as SearchRequestModel?,
        searchCutoff: null == searchCutoff
            ? _value.searchCutoff
            : searchCutoff // ignore: cast_nullable_to_non_nullable
                  as bool,
        searchTimeMs: null == searchTimeMs
            ? _value.searchTimeMs
            : searchTimeMs // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsModelImpl extends _ResultsModel {
  _$ResultsModelImpl({
    this.found = 0,
    this.nbHits = 0,
    @JsonKey(name: "facet_counts") this.facetCounts = const [],
    this.hits = const [],
    @JsonKey(includeToJson: false, includeFromJson: false)
    this.unifiedFacets = const [],
    this.outOf = 0,
    this.page = 1,
    this.requestParams,
    this.searchRequest,
    this.searchCutoff = false,
    this.searchTimeMs = 0,
  }) : super._();

  factory _$ResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsModelImplFromJson(json);

  @override
  @JsonKey()
  int found;
  @override
  @JsonKey()
  int nbHits;
  @override
  @JsonKey(name: "facet_counts")
  List<FacetModel> facetCounts;
  @override
  @JsonKey()
  List<ResultsHit> hits;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<UnifiedFacet> unifiedFacets;
  @override
  @JsonKey()
  int outOf;
  @override
  @JsonKey()
  int page;
  @override
  RequestParams? requestParams;
  @override
  SearchRequestModel? searchRequest;
  @override
  @JsonKey()
  bool searchCutoff;
  @override
  @JsonKey()
  int searchTimeMs;

  @override
  String toString() {
    return 'ResultsModel(found: $found, nbHits: $nbHits, facetCounts: $facetCounts, hits: $hits, unifiedFacets: $unifiedFacets, outOf: $outOf, page: $page, requestParams: $requestParams, searchRequest: $searchRequest, searchCutoff: $searchCutoff, searchTimeMs: $searchTimeMs)';
  }

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      __$$ResultsModelImplCopyWithImpl<_$ResultsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsModelImplToJson(this);
  }
}

abstract class _ResultsModel extends ResultsModel {
  factory _ResultsModel({
    int found,
    int nbHits,
    @JsonKey(name: "facet_counts") List<FacetModel> facetCounts,
    List<ResultsHit> hits,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<UnifiedFacet> unifiedFacets,
    int outOf,
    int page,
    RequestParams? requestParams,
    SearchRequestModel? searchRequest,
    bool searchCutoff,
    int searchTimeMs,
  }) = _$ResultsModelImpl;
  _ResultsModel._() : super._();

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsModelImpl.fromJson;

  @override
  int get found;
  set found(int value);
  @override
  int get nbHits;
  set nbHits(int value);
  @override
  @JsonKey(name: "facet_counts")
  List<FacetModel> get facetCounts;
  @JsonKey(name: "facet_counts")
  set facetCounts(List<FacetModel> value);
  @override
  List<ResultsHit> get hits;
  set hits(List<ResultsHit> value);
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<UnifiedFacet> get unifiedFacets;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set unifiedFacets(List<UnifiedFacet> value);
  @override
  int get outOf;
  set outOf(int value);
  @override
  int get page;
  set page(int value);
  @override
  RequestParams? get requestParams;
  set requestParams(RequestParams? value);
  @override
  SearchRequestModel? get searchRequest;
  set searchRequest(SearchRequestModel? value);
  @override
  bool get searchCutoff;
  set searchCutoff(bool value);
  @override
  int get searchTimeMs;
  set searchTimeMs(int value);

  /// Create a copy of ResultsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsModelImplCopyWith<_$ResultsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsHit _$ResultsHitFromJson(Map<String, dynamic> json) {
  return _ResultsHit.fromJson(json);
}

/// @nodoc
mixin _$ResultsHit {
  Map<String, dynamic> get document => throw _privateConstructorUsedError;
  set document(Map<String, dynamic> value) =>
      throw _privateConstructorUsedError;
  Map<String, Highlight>? get highlight => throw _privateConstructorUsedError;
  set highlight(Map<String, Highlight>? value) =>
      throw _privateConstructorUsedError; // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
  List<HighlightItem> get highlights =>
      throw _privateConstructorUsedError; // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
  set highlights(List<HighlightItem> value) =>
      throw _privateConstructorUsedError;
  int? get textMatch => throw _privateConstructorUsedError;
  set textMatch(int? value) => throw _privateConstructorUsedError;
  TextMatchInfo? get textMatchInfo => throw _privateConstructorUsedError;
  set textMatchInfo(TextMatchInfo? value) => throw _privateConstructorUsedError;

  /// Serializes this ResultsHit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsHitCopyWith<ResultsHit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsHitCopyWith<$Res> {
  factory $ResultsHitCopyWith(
    ResultsHit value,
    $Res Function(ResultsHit) then,
  ) = _$ResultsHitCopyWithImpl<$Res, ResultsHit>;
  @useResult
  $Res call({
    Map<String, dynamic> document,
    Map<String, Highlight>? highlight,
    List<HighlightItem> highlights,
    int? textMatch,
    TextMatchInfo? textMatchInfo,
  });

  $TextMatchInfoCopyWith<$Res>? get textMatchInfo;
}

/// @nodoc
class _$ResultsHitCopyWithImpl<$Res, $Val extends ResultsHit>
    implements $ResultsHitCopyWith<$Res> {
  _$ResultsHitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? highlight = freezed,
    Object? highlights = null,
    Object? textMatch = freezed,
    Object? textMatchInfo = freezed,
  }) {
    return _then(
      _value.copyWith(
            document: null == document
                ? _value.document
                : document // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
            highlight: freezed == highlight
                ? _value.highlight
                : highlight // ignore: cast_nullable_to_non_nullable
                      as Map<String, Highlight>?,
            highlights: null == highlights
                ? _value.highlights
                : highlights // ignore: cast_nullable_to_non_nullable
                      as List<HighlightItem>,
            textMatch: freezed == textMatch
                ? _value.textMatch
                : textMatch // ignore: cast_nullable_to_non_nullable
                      as int?,
            textMatchInfo: freezed == textMatchInfo
                ? _value.textMatchInfo
                : textMatchInfo // ignore: cast_nullable_to_non_nullable
                      as TextMatchInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextMatchInfoCopyWith<$Res>? get textMatchInfo {
    if (_value.textMatchInfo == null) {
      return null;
    }

    return $TextMatchInfoCopyWith<$Res>(_value.textMatchInfo!, (value) {
      return _then(_value.copyWith(textMatchInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsHitImplCopyWith<$Res>
    implements $ResultsHitCopyWith<$Res> {
  factory _$$ResultsHitImplCopyWith(
    _$ResultsHitImpl value,
    $Res Function(_$ResultsHitImpl) then,
  ) = __$$ResultsHitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Map<String, dynamic> document,
    Map<String, Highlight>? highlight,
    List<HighlightItem> highlights,
    int? textMatch,
    TextMatchInfo? textMatchInfo,
  });

  @override
  $TextMatchInfoCopyWith<$Res>? get textMatchInfo;
}

/// @nodoc
class __$$ResultsHitImplCopyWithImpl<$Res>
    extends _$ResultsHitCopyWithImpl<$Res, _$ResultsHitImpl>
    implements _$$ResultsHitImplCopyWith<$Res> {
  __$$ResultsHitImplCopyWithImpl(
    _$ResultsHitImpl _value,
    $Res Function(_$ResultsHitImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? highlight = freezed,
    Object? highlights = null,
    Object? textMatch = freezed,
    Object? textMatchInfo = freezed,
  }) {
    return _then(
      _$ResultsHitImpl(
        document: null == document
            ? _value.document
            : document // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        highlight: freezed == highlight
            ? _value.highlight
            : highlight // ignore: cast_nullable_to_non_nullable
                  as Map<String, Highlight>?,
        highlights: null == highlights
            ? _value.highlights
            : highlights // ignore: cast_nullable_to_non_nullable
                  as List<HighlightItem>,
        textMatch: freezed == textMatch
            ? _value.textMatch
            : textMatch // ignore: cast_nullable_to_non_nullable
                  as int?,
        textMatchInfo: freezed == textMatchInfo
            ? _value.textMatchInfo
            : textMatchInfo // ignore: cast_nullable_to_non_nullable
                  as TextMatchInfo?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsHitImpl implements _ResultsHit {
  _$ResultsHitImpl({
    this.document = const {},
    this.highlight,
    this.highlights = const [],
    this.textMatch,
    this.textMatchInfo,
  });

  factory _$ResultsHitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsHitImplFromJson(json);

  @override
  @JsonKey()
  Map<String, dynamic> document;
  @override
  Map<String, Highlight>? highlight;
  // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
  @override
  @JsonKey()
  List<HighlightItem> highlights;
  @override
  int? textMatch;
  @override
  TextMatchInfo? textMatchInfo;

  @override
  String toString() {
    return 'ResultsHit(document: $document, highlight: $highlight, highlights: $highlights, textMatch: $textMatch, textMatchInfo: $textMatchInfo)';
  }

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsHitImplCopyWith<_$ResultsHitImpl> get copyWith =>
      __$$ResultsHitImplCopyWithImpl<_$ResultsHitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsHitImplToJson(this);
  }
}

abstract class _ResultsHit implements ResultsHit {
  factory _ResultsHit({
    Map<String, dynamic> document,
    Map<String, Highlight>? highlight,
    List<HighlightItem> highlights,
    int? textMatch,
    TextMatchInfo? textMatchInfo,
  }) = _$ResultsHitImpl;

  factory _ResultsHit.fromJson(Map<String, dynamic> json) =
      _$ResultsHitImpl.fromJson;

  @override
  Map<String, dynamic> get document;
  set document(Map<String, dynamic> value);
  @override
  Map<String, Highlight>? get highlight;
  set highlight(
    Map<String, Highlight>? value,
  ); // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
  @override
  List<HighlightItem> get highlights; // @JsonKey(name: "highlight") HighLightSuggestion? highlightSuggestion,
  set highlights(List<HighlightItem> value);
  @override
  int? get textMatch;
  set textMatch(int? value);
  @override
  TextMatchInfo? get textMatchInfo;
  set textMatchInfo(TextMatchInfo? value);

  /// Create a copy of ResultsHit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsHitImplCopyWith<_$ResultsHitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsDocument _$ResultsDocumentFromJson(Map<String, dynamic> json) {
  return _ResultsDocument.fromJson(json);
}

/// @nodoc
mixin _$ResultsDocument {
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;
  set q(String value) => throw _privateConstructorUsedError;

  /// Serializes this ResultsDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultsDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsDocumentCopyWith<ResultsDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsDocumentCopyWith<$Res> {
  factory $ResultsDocumentCopyWith(
    ResultsDocument value,
    $Res Function(ResultsDocument) then,
  ) = _$ResultsDocumentCopyWithImpl<$Res, ResultsDocument>;
  @useResult
  $Res call({int count, String? id, String q});
}

/// @nodoc
class _$ResultsDocumentCopyWithImpl<$Res, $Val extends ResultsDocument>
    implements $ResultsDocumentCopyWith<$Res> {
  _$ResultsDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultsDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null, Object? id = freezed, Object? q = null}) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            q: null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResultsDocumentImplCopyWith<$Res>
    implements $ResultsDocumentCopyWith<$Res> {
  factory _$$ResultsDocumentImplCopyWith(
    _$ResultsDocumentImpl value,
    $Res Function(_$ResultsDocumentImpl) then,
  ) = __$$ResultsDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? id, String q});
}

/// @nodoc
class __$$ResultsDocumentImplCopyWithImpl<$Res>
    extends _$ResultsDocumentCopyWithImpl<$Res, _$ResultsDocumentImpl>
    implements _$$ResultsDocumentImplCopyWith<$Res> {
  __$$ResultsDocumentImplCopyWithImpl(
    _$ResultsDocumentImpl _value,
    $Res Function(_$ResultsDocumentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResultsDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null, Object? id = freezed, Object? q = null}) {
    return _then(
      _$ResultsDocumentImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        q: null == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsDocumentImpl implements _ResultsDocument {
  _$ResultsDocumentImpl({this.count = 0, this.id, this.q = ''});

  factory _$ResultsDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsDocumentImplFromJson(json);

  @override
  @JsonKey()
  int count;
  @override
  String? id;
  @override
  @JsonKey()
  String q;

  @override
  String toString() {
    return 'ResultsDocument(count: $count, id: $id, q: $q)';
  }

  /// Create a copy of ResultsDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsDocumentImplCopyWith<_$ResultsDocumentImpl> get copyWith =>
      __$$ResultsDocumentImplCopyWithImpl<_$ResultsDocumentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsDocumentImplToJson(this);
  }
}

abstract class _ResultsDocument implements ResultsDocument {
  factory _ResultsDocument({int count, String? id, String q}) =
      _$ResultsDocumentImpl;

  factory _ResultsDocument.fromJson(Map<String, dynamic> json) =
      _$ResultsDocumentImpl.fromJson;

  @override
  int get count;
  set count(int value);
  @override
  String? get id;
  set id(String? value);
  @override
  String get q;
  set q(String value);

  /// Create a copy of ResultsDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsDocumentImplCopyWith<_$ResultsDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Highlight _$HighlightFromJson(Map<String, dynamic> json) {
  return _Highlight.fromJson(json);
}

/// @nodoc
mixin _$Highlight {
  List<String> get matchedTokens => throw _privateConstructorUsedError;
  set matchedTokens(List<String> value) => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  set snippet(String value) => throw _privateConstructorUsedError;

  /// Serializes this Highlight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Highlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighlightCopyWith<Highlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightCopyWith<$Res> {
  factory $HighlightCopyWith(Highlight value, $Res Function(Highlight) then) =
      _$HighlightCopyWithImpl<$Res, Highlight>;
  @useResult
  $Res call({List<String> matchedTokens, String snippet});
}

/// @nodoc
class _$HighlightCopyWithImpl<$Res, $Val extends Highlight>
    implements $HighlightCopyWith<$Res> {
  _$HighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Highlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? matchedTokens = null, Object? snippet = null}) {
    return _then(
      _value.copyWith(
            matchedTokens: null == matchedTokens
                ? _value.matchedTokens
                : matchedTokens // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            snippet: null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HighlightImplCopyWith<$Res>
    implements $HighlightCopyWith<$Res> {
  factory _$$HighlightImplCopyWith(
    _$HighlightImpl value,
    $Res Function(_$HighlightImpl) then,
  ) = __$$HighlightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> matchedTokens, String snippet});
}

/// @nodoc
class __$$HighlightImplCopyWithImpl<$Res>
    extends _$HighlightCopyWithImpl<$Res, _$HighlightImpl>
    implements _$$HighlightImplCopyWith<$Res> {
  __$$HighlightImplCopyWithImpl(
    _$HighlightImpl _value,
    $Res Function(_$HighlightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Highlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? matchedTokens = null, Object? snippet = null}) {
    return _then(
      _$HighlightImpl(
        matchedTokens: null == matchedTokens
            ? _value.matchedTokens
            : matchedTokens // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        snippet: null == snippet
            ? _value.snippet
            : snippet // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightImpl implements _Highlight {
  _$HighlightImpl({this.matchedTokens = const [], this.snippet = ''});

  factory _$HighlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightImplFromJson(json);

  @override
  @JsonKey()
  List<String> matchedTokens;
  @override
  @JsonKey()
  String snippet;

  @override
  String toString() {
    return 'Highlight(matchedTokens: $matchedTokens, snippet: $snippet)';
  }

  /// Create a copy of Highlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      __$$HighlightImplCopyWithImpl<_$HighlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightImplToJson(this);
  }
}

abstract class _Highlight implements Highlight {
  factory _Highlight({List<String> matchedTokens, String snippet}) =
      _$HighlightImpl;

  factory _Highlight.fromJson(Map<String, dynamic> json) =
      _$HighlightImpl.fromJson;

  @override
  List<String> get matchedTokens;
  set matchedTokens(List<String> value);
  @override
  String get snippet;
  set snippet(String value);

  /// Create a copy of Highlight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighlightImplCopyWith<_$HighlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HighlightItem _$HighlightItemFromJson(Map<String, dynamic> json) {
  return _HighlightItem.fromJson(json);
}

/// @nodoc
mixin _$HighlightItem {
  String? get field => throw _privateConstructorUsedError;
  set field(String? value) => throw _privateConstructorUsedError;
  List<String> get matchedTokens => throw _privateConstructorUsedError;
  set matchedTokens(List<String> value) => throw _privateConstructorUsedError;
  String get snippet => throw _privateConstructorUsedError;
  set snippet(String value) => throw _privateConstructorUsedError;

  /// Serializes this HighlightItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HighlightItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighlightItemCopyWith<HighlightItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightItemCopyWith<$Res> {
  factory $HighlightItemCopyWith(
    HighlightItem value,
    $Res Function(HighlightItem) then,
  ) = _$HighlightItemCopyWithImpl<$Res, HighlightItem>;
  @useResult
  $Res call({String? field, List<String> matchedTokens, String snippet});
}

/// @nodoc
class _$HighlightItemCopyWithImpl<$Res, $Val extends HighlightItem>
    implements $HighlightItemCopyWith<$Res> {
  _$HighlightItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlightItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? matchedTokens = null,
    Object? snippet = null,
  }) {
    return _then(
      _value.copyWith(
            field: freezed == field
                ? _value.field
                : field // ignore: cast_nullable_to_non_nullable
                      as String?,
            matchedTokens: null == matchedTokens
                ? _value.matchedTokens
                : matchedTokens // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            snippet: null == snippet
                ? _value.snippet
                : snippet // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HighlightItemImplCopyWith<$Res>
    implements $HighlightItemCopyWith<$Res> {
  factory _$$HighlightItemImplCopyWith(
    _$HighlightItemImpl value,
    $Res Function(_$HighlightItemImpl) then,
  ) = __$$HighlightItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? field, List<String> matchedTokens, String snippet});
}

/// @nodoc
class __$$HighlightItemImplCopyWithImpl<$Res>
    extends _$HighlightItemCopyWithImpl<$Res, _$HighlightItemImpl>
    implements _$$HighlightItemImplCopyWith<$Res> {
  __$$HighlightItemImplCopyWithImpl(
    _$HighlightItemImpl _value,
    $Res Function(_$HighlightItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HighlightItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = freezed,
    Object? matchedTokens = null,
    Object? snippet = null,
  }) {
    return _then(
      _$HighlightItemImpl(
        field: freezed == field
            ? _value.field
            : field // ignore: cast_nullable_to_non_nullable
                  as String?,
        matchedTokens: null == matchedTokens
            ? _value.matchedTokens
            : matchedTokens // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        snippet: null == snippet
            ? _value.snippet
            : snippet // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HighlightItemImpl implements _HighlightItem {
  _$HighlightItemImpl({
    this.field,
    this.matchedTokens = const [],
    this.snippet = '',
  });

  factory _$HighlightItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightItemImplFromJson(json);

  @override
  String? field;
  @override
  @JsonKey()
  List<String> matchedTokens;
  @override
  @JsonKey()
  String snippet;

  @override
  String toString() {
    return 'HighlightItem(field: $field, matchedTokens: $matchedTokens, snippet: $snippet)';
  }

  /// Create a copy of HighlightItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightItemImplCopyWith<_$HighlightItemImpl> get copyWith =>
      __$$HighlightItemImplCopyWithImpl<_$HighlightItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightItemImplToJson(this);
  }
}

abstract class _HighlightItem implements HighlightItem {
  factory _HighlightItem({
    String? field,
    List<String> matchedTokens,
    String snippet,
  }) = _$HighlightItemImpl;

  factory _HighlightItem.fromJson(Map<String, dynamic> json) =
      _$HighlightItemImpl.fromJson;

  @override
  String? get field;
  set field(String? value);
  @override
  List<String> get matchedTokens;
  set matchedTokens(List<String> value);
  @override
  String get snippet;
  set snippet(String value);

  /// Create a copy of HighlightItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighlightItemImplCopyWith<_$HighlightItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextMatchInfo _$TextMatchInfoFromJson(Map<String, dynamic> json) {
  return _TextMatchInfo.fromJson(json);
}

/// @nodoc
mixin _$TextMatchInfo {
  int? get bestFieldScore => throw _privateConstructorUsedError;
  set bestFieldScore(int? value) => throw _privateConstructorUsedError;
  int? get bestFieldWeight => throw _privateConstructorUsedError;
  set bestFieldWeight(int? value) => throw _privateConstructorUsedError;
  int? get fieldsMatched => throw _privateConstructorUsedError;
  set fieldsMatched(int? value) => throw _privateConstructorUsedError;
  int? get numTokensDropped => throw _privateConstructorUsedError;
  set numTokensDropped(int? value) => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  set score(int? value) => throw _privateConstructorUsedError;
  int? get tokensMatched => throw _privateConstructorUsedError;
  set tokensMatched(int? value) => throw _privateConstructorUsedError;
  int? get typoPrefixScore => throw _privateConstructorUsedError;
  set typoPrefixScore(int? value) => throw _privateConstructorUsedError;

  /// Serializes this TextMatchInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextMatchInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextMatchInfoCopyWith<TextMatchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextMatchInfoCopyWith<$Res> {
  factory $TextMatchInfoCopyWith(
    TextMatchInfo value,
    $Res Function(TextMatchInfo) then,
  ) = _$TextMatchInfoCopyWithImpl<$Res, TextMatchInfo>;
  @useResult
  $Res call({
    int? bestFieldScore,
    int? bestFieldWeight,
    int? fieldsMatched,
    int? numTokensDropped,
    int? score,
    int? tokensMatched,
    int? typoPrefixScore,
  });
}

/// @nodoc
class _$TextMatchInfoCopyWithImpl<$Res, $Val extends TextMatchInfo>
    implements $TextMatchInfoCopyWith<$Res> {
  _$TextMatchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextMatchInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestFieldScore = freezed,
    Object? bestFieldWeight = freezed,
    Object? fieldsMatched = freezed,
    Object? numTokensDropped = freezed,
    Object? score = freezed,
    Object? tokensMatched = freezed,
    Object? typoPrefixScore = freezed,
  }) {
    return _then(
      _value.copyWith(
            bestFieldScore: freezed == bestFieldScore
                ? _value.bestFieldScore
                : bestFieldScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            bestFieldWeight: freezed == bestFieldWeight
                ? _value.bestFieldWeight
                : bestFieldWeight // ignore: cast_nullable_to_non_nullable
                      as int?,
            fieldsMatched: freezed == fieldsMatched
                ? _value.fieldsMatched
                : fieldsMatched // ignore: cast_nullable_to_non_nullable
                      as int?,
            numTokensDropped: freezed == numTokensDropped
                ? _value.numTokensDropped
                : numTokensDropped // ignore: cast_nullable_to_non_nullable
                      as int?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            tokensMatched: freezed == tokensMatched
                ? _value.tokensMatched
                : tokensMatched // ignore: cast_nullable_to_non_nullable
                      as int?,
            typoPrefixScore: freezed == typoPrefixScore
                ? _value.typoPrefixScore
                : typoPrefixScore // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TextMatchInfoImplCopyWith<$Res>
    implements $TextMatchInfoCopyWith<$Res> {
  factory _$$TextMatchInfoImplCopyWith(
    _$TextMatchInfoImpl value,
    $Res Function(_$TextMatchInfoImpl) then,
  ) = __$$TextMatchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? bestFieldScore,
    int? bestFieldWeight,
    int? fieldsMatched,
    int? numTokensDropped,
    int? score,
    int? tokensMatched,
    int? typoPrefixScore,
  });
}

/// @nodoc
class __$$TextMatchInfoImplCopyWithImpl<$Res>
    extends _$TextMatchInfoCopyWithImpl<$Res, _$TextMatchInfoImpl>
    implements _$$TextMatchInfoImplCopyWith<$Res> {
  __$$TextMatchInfoImplCopyWithImpl(
    _$TextMatchInfoImpl _value,
    $Res Function(_$TextMatchInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextMatchInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestFieldScore = freezed,
    Object? bestFieldWeight = freezed,
    Object? fieldsMatched = freezed,
    Object? numTokensDropped = freezed,
    Object? score = freezed,
    Object? tokensMatched = freezed,
    Object? typoPrefixScore = freezed,
  }) {
    return _then(
      _$TextMatchInfoImpl(
        bestFieldScore: freezed == bestFieldScore
            ? _value.bestFieldScore
            : bestFieldScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        bestFieldWeight: freezed == bestFieldWeight
            ? _value.bestFieldWeight
            : bestFieldWeight // ignore: cast_nullable_to_non_nullable
                  as int?,
        fieldsMatched: freezed == fieldsMatched
            ? _value.fieldsMatched
            : fieldsMatched // ignore: cast_nullable_to_non_nullable
                  as int?,
        numTokensDropped: freezed == numTokensDropped
            ? _value.numTokensDropped
            : numTokensDropped // ignore: cast_nullable_to_non_nullable
                  as int?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        tokensMatched: freezed == tokensMatched
            ? _value.tokensMatched
            : tokensMatched // ignore: cast_nullable_to_non_nullable
                  as int?,
        typoPrefixScore: freezed == typoPrefixScore
            ? _value.typoPrefixScore
            : typoPrefixScore // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TextMatchInfoImpl implements _TextMatchInfo {
  _$TextMatchInfoImpl({
    this.bestFieldScore,
    this.bestFieldWeight,
    this.fieldsMatched,
    this.numTokensDropped,
    this.score,
    this.tokensMatched,
    this.typoPrefixScore,
  });

  factory _$TextMatchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextMatchInfoImplFromJson(json);

  @override
  int? bestFieldScore;
  @override
  int? bestFieldWeight;
  @override
  int? fieldsMatched;
  @override
  int? numTokensDropped;
  @override
  int? score;
  @override
  int? tokensMatched;
  @override
  int? typoPrefixScore;

  @override
  String toString() {
    return 'TextMatchInfo(bestFieldScore: $bestFieldScore, bestFieldWeight: $bestFieldWeight, fieldsMatched: $fieldsMatched, numTokensDropped: $numTokensDropped, score: $score, tokensMatched: $tokensMatched, typoPrefixScore: $typoPrefixScore)';
  }

  /// Create a copy of TextMatchInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextMatchInfoImplCopyWith<_$TextMatchInfoImpl> get copyWith =>
      __$$TextMatchInfoImplCopyWithImpl<_$TextMatchInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextMatchInfoImplToJson(this);
  }
}

abstract class _TextMatchInfo implements TextMatchInfo {
  factory _TextMatchInfo({
    int? bestFieldScore,
    int? bestFieldWeight,
    int? fieldsMatched,
    int? numTokensDropped,
    int? score,
    int? tokensMatched,
    int? typoPrefixScore,
  }) = _$TextMatchInfoImpl;

  factory _TextMatchInfo.fromJson(Map<String, dynamic> json) =
      _$TextMatchInfoImpl.fromJson;

  @override
  int? get bestFieldScore;
  set bestFieldScore(int? value);
  @override
  int? get bestFieldWeight;
  set bestFieldWeight(int? value);
  @override
  int? get fieldsMatched;
  set fieldsMatched(int? value);
  @override
  int? get numTokensDropped;
  set numTokensDropped(int? value);
  @override
  int? get score;
  set score(int? value);
  @override
  int? get tokensMatched;
  set tokensMatched(int? value);
  @override
  int? get typoPrefixScore;
  set typoPrefixScore(int? value);

  /// Create a copy of TextMatchInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextMatchInfoImplCopyWith<_$TextMatchInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestParams _$RequestParamsFromJson(Map<String, dynamic> json) {
  return _RequestParams.fromJson(json);
}

/// @nodoc
mixin _$RequestParams {
  String? get collectionName => throw _privateConstructorUsedError;
  set collectionName(String? value) => throw _privateConstructorUsedError;
  String? get firstQ => throw _privateConstructorUsedError;
  set firstQ(String? value) => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  set perPage(int? value) => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;
  set q(String? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestParamsCopyWith<RequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestParamsCopyWith<$Res> {
  factory $RequestParamsCopyWith(
    RequestParams value,
    $Res Function(RequestParams) then,
  ) = _$RequestParamsCopyWithImpl<$Res, RequestParams>;
  @useResult
  $Res call({String? collectionName, String? firstQ, int? perPage, String? q});
}

/// @nodoc
class _$RequestParamsCopyWithImpl<$Res, $Val extends RequestParams>
    implements $RequestParamsCopyWith<$Res> {
  _$RequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = freezed,
    Object? firstQ = freezed,
    Object? perPage = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _value.copyWith(
            collectionName: freezed == collectionName
                ? _value.collectionName
                : collectionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstQ: freezed == firstQ
                ? _value.firstQ
                : firstQ // ignore: cast_nullable_to_non_nullable
                      as String?,
            perPage: freezed == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            q: freezed == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RequestParamsImplCopyWith<$Res>
    implements $RequestParamsCopyWith<$Res> {
  factory _$$RequestParamsImplCopyWith(
    _$RequestParamsImpl value,
    $Res Function(_$RequestParamsImpl) then,
  ) = __$$RequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? collectionName, String? firstQ, int? perPage, String? q});
}

/// @nodoc
class __$$RequestParamsImplCopyWithImpl<$Res>
    extends _$RequestParamsCopyWithImpl<$Res, _$RequestParamsImpl>
    implements _$$RequestParamsImplCopyWith<$Res> {
  __$$RequestParamsImplCopyWithImpl(
    _$RequestParamsImpl _value,
    $Res Function(_$RequestParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionName = freezed,
    Object? firstQ = freezed,
    Object? perPage = freezed,
    Object? q = freezed,
  }) {
    return _then(
      _$RequestParamsImpl(
        collectionName: freezed == collectionName
            ? _value.collectionName
            : collectionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstQ: freezed == firstQ
            ? _value.firstQ
            : firstQ // ignore: cast_nullable_to_non_nullable
                  as String?,
        perPage: freezed == perPage
            ? _value.perPage
            : perPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        q: freezed == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestParamsImpl implements _RequestParams {
  _$RequestParamsImpl({this.collectionName, this.firstQ, this.perPage, this.q});

  factory _$RequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestParamsImplFromJson(json);

  @override
  String? collectionName;
  @override
  String? firstQ;
  @override
  int? perPage;
  @override
  String? q;

  @override
  String toString() {
    return 'RequestParams(collectionName: $collectionName, firstQ: $firstQ, perPage: $perPage, q: $q)';
  }

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestParamsImplCopyWith<_$RequestParamsImpl> get copyWith =>
      __$$RequestParamsImplCopyWithImpl<_$RequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestParamsImplToJson(this);
  }
}

abstract class _RequestParams implements RequestParams {
  factory _RequestParams({
    String? collectionName,
    String? firstQ,
    int? perPage,
    String? q,
  }) = _$RequestParamsImpl;

  factory _RequestParams.fromJson(Map<String, dynamic> json) =
      _$RequestParamsImpl.fromJson;

  @override
  String? get collectionName;
  set collectionName(String? value);
  @override
  String? get firstQ;
  set firstQ(String? value);
  @override
  int? get perPage;
  set perPage(int? value);
  @override
  String? get q;
  set q(String? value);

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestParamsImplCopyWith<_$RequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HighLightSuggestion _$HighLightSuggestionFromJson(Map<String, dynamic> json) {
  return _HighLightSuggestion.fromJson(json);
}

/// @nodoc
mixin _$HighLightSuggestion {
  Highlight? get q => throw _privateConstructorUsedError;
  set q(Highlight? value) => throw _privateConstructorUsedError;

  /// Serializes this HighLightSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HighLightSuggestionCopyWith<HighLightSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighLightSuggestionCopyWith<$Res> {
  factory $HighLightSuggestionCopyWith(
    HighLightSuggestion value,
    $Res Function(HighLightSuggestion) then,
  ) = _$HighLightSuggestionCopyWithImpl<$Res, HighLightSuggestion>;
  @useResult
  $Res call({Highlight? q});

  $HighlightCopyWith<$Res>? get q;
}

/// @nodoc
class _$HighLightSuggestionCopyWithImpl<$Res, $Val extends HighLightSuggestion>
    implements $HighLightSuggestionCopyWith<$Res> {
  _$HighLightSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = freezed}) {
    return _then(
      _value.copyWith(
            q: freezed == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                      as Highlight?,
          )
          as $Val,
    );
  }

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HighlightCopyWith<$Res>? get q {
    if (_value.q == null) {
      return null;
    }

    return $HighlightCopyWith<$Res>(_value.q!, (value) {
      return _then(_value.copyWith(q: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HighLightSuggestionImplCopyWith<$Res>
    implements $HighLightSuggestionCopyWith<$Res> {
  factory _$$HighLightSuggestionImplCopyWith(
    _$HighLightSuggestionImpl value,
    $Res Function(_$HighLightSuggestionImpl) then,
  ) = __$$HighLightSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Highlight? q});

  @override
  $HighlightCopyWith<$Res>? get q;
}

/// @nodoc
class __$$HighLightSuggestionImplCopyWithImpl<$Res>
    extends _$HighLightSuggestionCopyWithImpl<$Res, _$HighLightSuggestionImpl>
    implements _$$HighLightSuggestionImplCopyWith<$Res> {
  __$$HighLightSuggestionImplCopyWithImpl(
    _$HighLightSuggestionImpl _value,
    $Res Function(_$HighLightSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = freezed}) {
    return _then(
      _$HighLightSuggestionImpl(
        q: freezed == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as Highlight?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HighLightSuggestionImpl implements _HighLightSuggestion {
  _$HighLightSuggestionImpl({this.q});

  factory _$HighLightSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighLightSuggestionImplFromJson(json);

  @override
  Highlight? q;

  @override
  String toString() {
    return 'HighLightSuggestion(q: $q)';
  }

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HighLightSuggestionImplCopyWith<_$HighLightSuggestionImpl> get copyWith =>
      __$$HighLightSuggestionImplCopyWithImpl<_$HighLightSuggestionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HighLightSuggestionImplToJson(this);
  }
}

abstract class _HighLightSuggestion implements HighLightSuggestion {
  factory _HighLightSuggestion({Highlight? q}) = _$HighLightSuggestionImpl;

  factory _HighLightSuggestion.fromJson(Map<String, dynamic> json) =
      _$HighLightSuggestionImpl.fromJson;

  @override
  Highlight? get q;
  set q(Highlight? value);

  /// Create a copy of HighLightSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HighLightSuggestionImplCopyWith<_$HighLightSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
