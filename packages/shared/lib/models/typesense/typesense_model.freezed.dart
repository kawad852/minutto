// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typesense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchRequestModel _$SearchRequestModelFromJson(Map<String, dynamic> json) {
  return _SearchRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRequestModel {
  String get q => throw _privateConstructorUsedError;
  set q(String value) => throw _privateConstructorUsedError;
  String get collection => throw _privateConstructorUsedError;
  set collection(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "query_by")
  String? get queryBy => throw _privateConstructorUsedError;
  @JsonKey(name: "query_by")
  set queryBy(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "facet_by")
  String? get facetBy => throw _privateConstructorUsedError;
  @JsonKey(name: "facet_by")
  set facetBy(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_by")
  List<FilterByModel> get filters => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_by")
  set filters(List<FilterByModel> value) => throw _privateConstructorUsedError;
  @JsonKey(name: "vector_query")
  String? get vectorQuery => throw _privateConstructorUsedError;
  @JsonKey(name: "vector_query")
  set vectorQuery(String? value) => throw _privateConstructorUsedError;

  /// Serializes this SearchRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchRequestModelCopyWith<SearchRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRequestModelCopyWith<$Res> {
  factory $SearchRequestModelCopyWith(
    SearchRequestModel value,
    $Res Function(SearchRequestModel) then,
  ) = _$SearchRequestModelCopyWithImpl<$Res, SearchRequestModel>;
  @useResult
  $Res call({
    String q,
    String collection,
    @JsonKey(name: "query_by") String? queryBy,
    @JsonKey(name: "facet_by") String? facetBy,
    @JsonKey(name: "filter_by") List<FilterByModel> filters,
    @JsonKey(name: "vector_query") String? vectorQuery,
  });
}

/// @nodoc
class _$SearchRequestModelCopyWithImpl<$Res, $Val extends SearchRequestModel>
    implements $SearchRequestModelCopyWith<$Res> {
  _$SearchRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? collection = null,
    Object? queryBy = freezed,
    Object? facetBy = freezed,
    Object? filters = null,
    Object? vectorQuery = freezed,
  }) {
    return _then(
      _value.copyWith(
            q: null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                      as String,
            collection: null == collection
                ? _value.collection
                : collection // ignore: cast_nullable_to_non_nullable
                      as String,
            queryBy: freezed == queryBy
                ? _value.queryBy
                : queryBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            facetBy: freezed == facetBy
                ? _value.facetBy
                : facetBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            filters: null == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as List<FilterByModel>,
            vectorQuery: freezed == vectorQuery
                ? _value.vectorQuery
                : vectorQuery // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchRequestModelImplCopyWith<$Res>
    implements $SearchRequestModelCopyWith<$Res> {
  factory _$$SearchRequestModelImplCopyWith(
    _$SearchRequestModelImpl value,
    $Res Function(_$SearchRequestModelImpl) then,
  ) = __$$SearchRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String q,
    String collection,
    @JsonKey(name: "query_by") String? queryBy,
    @JsonKey(name: "facet_by") String? facetBy,
    @JsonKey(name: "filter_by") List<FilterByModel> filters,
    @JsonKey(name: "vector_query") String? vectorQuery,
  });
}

/// @nodoc
class __$$SearchRequestModelImplCopyWithImpl<$Res>
    extends _$SearchRequestModelCopyWithImpl<$Res, _$SearchRequestModelImpl>
    implements _$$SearchRequestModelImplCopyWith<$Res> {
  __$$SearchRequestModelImplCopyWithImpl(
    _$SearchRequestModelImpl _value,
    $Res Function(_$SearchRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = null,
    Object? collection = null,
    Object? queryBy = freezed,
    Object? facetBy = freezed,
    Object? filters = null,
    Object? vectorQuery = freezed,
  }) {
    return _then(
      _$SearchRequestModelImpl(
        q: null == q
            ? _value.q
            : q // ignore: cast_nullable_to_non_nullable
                  as String,
        collection: null == collection
            ? _value.collection
            : collection // ignore: cast_nullable_to_non_nullable
                  as String,
        queryBy: freezed == queryBy
            ? _value.queryBy
            : queryBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        facetBy: freezed == facetBy
            ? _value.facetBy
            : facetBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as List<FilterByModel>,
        vectorQuery: freezed == vectorQuery
            ? _value.vectorQuery
            : vectorQuery // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRequestModelImpl implements _SearchRequestModel {
  _$SearchRequestModelImpl({
    this.q = "*",
    required this.collection,
    @JsonKey(name: "query_by") this.queryBy,
    @JsonKey(name: "facet_by") this.facetBy,
    @JsonKey(name: "filter_by") this.filters = const [],
    @JsonKey(name: "vector_query") this.vectorQuery,
  });

  factory _$SearchRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRequestModelImplFromJson(json);

  @override
  @JsonKey()
  String q;
  @override
  String collection;
  @override
  @JsonKey(name: "query_by")
  String? queryBy;
  @override
  @JsonKey(name: "facet_by")
  String? facetBy;
  @override
  @JsonKey(name: "filter_by")
  List<FilterByModel> filters;
  @override
  @JsonKey(name: "vector_query")
  String? vectorQuery;

  @override
  String toString() {
    return 'SearchRequestModel(q: $q, collection: $collection, queryBy: $queryBy, facetBy: $facetBy, filters: $filters, vectorQuery: $vectorQuery)';
  }

  /// Create a copy of SearchRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRequestModelImplCopyWith<_$SearchRequestModelImpl> get copyWith =>
      __$$SearchRequestModelImplCopyWithImpl<_$SearchRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRequestModelImplToJson(this);
  }
}

abstract class _SearchRequestModel implements SearchRequestModel {
  factory _SearchRequestModel({
    String q,
    required String collection,
    @JsonKey(name: "query_by") String? queryBy,
    @JsonKey(name: "facet_by") String? facetBy,
    @JsonKey(name: "filter_by") List<FilterByModel> filters,
    @JsonKey(name: "vector_query") String? vectorQuery,
  }) = _$SearchRequestModelImpl;

  factory _SearchRequestModel.fromJson(Map<String, dynamic> json) =
      _$SearchRequestModelImpl.fromJson;

  @override
  String get q;
  set q(String value);
  @override
  String get collection;
  set collection(String value);
  @override
  @JsonKey(name: "query_by")
  String? get queryBy;
  @JsonKey(name: "query_by")
  set queryBy(String? value);
  @override
  @JsonKey(name: "facet_by")
  String? get facetBy;
  @JsonKey(name: "facet_by")
  set facetBy(String? value);
  @override
  @JsonKey(name: "filter_by")
  List<FilterByModel> get filters;
  @JsonKey(name: "filter_by")
  set filters(List<FilterByModel> value);
  @override
  @JsonKey(name: "vector_query")
  String? get vectorQuery;
  @JsonKey(name: "vector_query")
  set vectorQuery(String? value);

  /// Create a copy of SearchRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRequestModelImplCopyWith<_$SearchRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterByModel _$FilterByModelFromJson(Map<String, dynamic> json) {
  return _FilterByModel.fromJson(json);
}

/// @nodoc
mixin _$FilterByModel {
  String get value => throw _privateConstructorUsedError;
  set value(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  set selected(bool value) => throw _privateConstructorUsedError;

  /// Serializes this FilterByModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterByModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterByModelCopyWith<FilterByModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterByModelCopyWith<$Res> {
  factory $FilterByModelCopyWith(
    FilterByModel value,
    $Res Function(FilterByModel) then,
  ) = _$FilterByModelCopyWithImpl<$Res, FilterByModel>;
  @useResult
  $Res call({String value, String nameEn, String nameAr, bool selected});
}

/// @nodoc
class _$FilterByModelCopyWithImpl<$Res, $Val extends FilterByModel>
    implements $FilterByModelCopyWith<$Res> {
  _$FilterByModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterByModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selected = null,
  }) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            selected: null == selected
                ? _value.selected
                : selected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FilterByModelImplCopyWith<$Res>
    implements $FilterByModelCopyWith<$Res> {
  factory _$$FilterByModelImplCopyWith(
    _$FilterByModelImpl value,
    $Res Function(_$FilterByModelImpl) then,
  ) = __$$FilterByModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String nameEn, String nameAr, bool selected});
}

/// @nodoc
class __$$FilterByModelImplCopyWithImpl<$Res>
    extends _$FilterByModelCopyWithImpl<$Res, _$FilterByModelImpl>
    implements _$$FilterByModelImplCopyWith<$Res> {
  __$$FilterByModelImplCopyWithImpl(
    _$FilterByModelImpl _value,
    $Res Function(_$FilterByModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FilterByModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selected = null,
  }) {
    return _then(
      _$FilterByModelImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        selected: null == selected
            ? _value.selected
            : selected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterByModelImpl implements _FilterByModel {
  _$FilterByModelImpl({
    this.value = "",
    this.nameEn = "",
    this.nameAr = "",
    this.selected = false,
  });

  factory _$FilterByModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterByModelImplFromJson(json);

  @override
  @JsonKey()
  String value;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  bool selected;

  @override
  String toString() {
    return 'FilterByModel(value: $value, nameEn: $nameEn, nameAr: $nameAr, selected: $selected)';
  }

  /// Create a copy of FilterByModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByModelImplCopyWith<_$FilterByModelImpl> get copyWith =>
      __$$FilterByModelImplCopyWithImpl<_$FilterByModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterByModelImplToJson(this);
  }
}

abstract class _FilterByModel implements FilterByModel {
  factory _FilterByModel({
    String value,
    String nameEn,
    String nameAr,
    bool selected,
  }) = _$FilterByModelImpl;

  factory _FilterByModel.fromJson(Map<String, dynamic> json) =
      _$FilterByModelImpl.fromJson;

  @override
  String get value;
  set value(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  bool get selected;
  set selected(bool value);

  /// Create a copy of FilterByModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByModelImplCopyWith<_$FilterByModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
