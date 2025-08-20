// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get attribute => throw _privateConstructorUsedError;
  set attribute(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  String get selectionType => throw _privateConstructorUsedError;
  set selectionType(String value) => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  set pinned(bool value) => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  set value(String? value) => throw _privateConstructorUsedError;
  Map<String, FilterValueModel> get values =>
      throw _privateConstructorUsedError;
  set values(Map<String, FilterValueModel> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Future<List<SelectableItem<Facet>>>? get selectableFacetsFuture =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set selectableFacetsFuture(Future<List<SelectableItem<Facet>>>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get priceRange => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set priceRange(RangeValues? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  FilterGroupID? get filterGroupID => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filterGroupID(FilterGroupID? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? get filter => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filter(Filter? value) => throw _privateConstructorUsedError;

  /// Serializes this FilterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
    FilterModel value,
    $Res Function(FilterModel) then,
  ) = _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call({
    String id,
    String attribute,
    String nameEn,
    String nameAr,
    String selectionType,
    bool pinned,
    String? value,
    Map<String, FilterValueModel> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Future<List<SelectableItem<Facet>>>? selectableFacetsFuture,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? priceRange,
    @JsonKey(includeFromJson: false, includeToJson: false)
    FilterGroupID? filterGroupID,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  });
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attribute = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selectionType = null,
    Object? pinned = null,
    Object? value = freezed,
    Object? values = null,
    Object? selectableFacetsFuture = freezed,
    Object? priceRange = freezed,
    Object? filterGroupID = freezed,
    Object? filter = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            attribute: null == attribute
                ? _value.attribute
                : attribute // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            selectionType: null == selectionType
                ? _value.selectionType
                : selectionType // ignore: cast_nullable_to_non_nullable
                      as String,
            pinned: null == pinned
                ? _value.pinned
                : pinned // ignore: cast_nullable_to_non_nullable
                      as bool,
            value: freezed == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String?,
            values: null == values
                ? _value.values
                : values // ignore: cast_nullable_to_non_nullable
                      as Map<String, FilterValueModel>,
            selectableFacetsFuture: freezed == selectableFacetsFuture
                ? _value.selectableFacetsFuture
                : selectableFacetsFuture // ignore: cast_nullable_to_non_nullable
                      as Future<List<SelectableItem<Facet>>>?,
            priceRange: freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                      as RangeValues?,
            filterGroupID: freezed == filterGroupID
                ? _value.filterGroupID
                : filterGroupID // ignore: cast_nullable_to_non_nullable
                      as FilterGroupID?,
            filter: freezed == filter
                ? _value.filter
                : filter // ignore: cast_nullable_to_non_nullable
                      as Filter?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
    _$FilterModelImpl value,
    $Res Function(_$FilterModelImpl) then,
  ) = __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String attribute,
    String nameEn,
    String nameAr,
    String selectionType,
    bool pinned,
    String? value,
    Map<String, FilterValueModel> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Future<List<SelectableItem<Facet>>>? selectableFacetsFuture,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? priceRange,
    @JsonKey(includeFromJson: false, includeToJson: false)
    FilterGroupID? filterGroupID,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  });
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
    _$FilterModelImpl _value,
    $Res Function(_$FilterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attribute = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selectionType = null,
    Object? pinned = null,
    Object? value = freezed,
    Object? values = null,
    Object? selectableFacetsFuture = freezed,
    Object? priceRange = freezed,
    Object? filterGroupID = freezed,
    Object? filter = freezed,
  }) {
    return _then(
      _$FilterModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        attribute: null == attribute
            ? _value.attribute
            : attribute // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        selectionType: null == selectionType
            ? _value.selectionType
            : selectionType // ignore: cast_nullable_to_non_nullable
                  as String,
        pinned: null == pinned
            ? _value.pinned
            : pinned // ignore: cast_nullable_to_non_nullable
                  as bool,
        value: freezed == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String?,
        values: null == values
            ? _value.values
            : values // ignore: cast_nullable_to_non_nullable
                  as Map<String, FilterValueModel>,
        selectableFacetsFuture: freezed == selectableFacetsFuture
            ? _value.selectableFacetsFuture
            : selectableFacetsFuture // ignore: cast_nullable_to_non_nullable
                  as Future<List<SelectableItem<Facet>>>?,
        priceRange: freezed == priceRange
            ? _value.priceRange
            : priceRange // ignore: cast_nullable_to_non_nullable
                  as RangeValues?,
        filterGroupID: freezed == filterGroupID
            ? _value.filterGroupID
            : filterGroupID // ignore: cast_nullable_to_non_nullable
                  as FilterGroupID?,
        filter: freezed == filter
            ? _value.filter
            : filter // ignore: cast_nullable_to_non_nullable
                  as Filter?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FilterModelImpl extends _FilterModel {
  _$FilterModelImpl({
    this.id = '',
    this.attribute = '',
    this.nameEn = '',
    this.nameAr = '',
    this.selectionType = 'MULTI',
    this.pinned = false,
    this.value,
    this.values = const {},
    @JsonKey(includeFromJson: false, includeToJson: false)
    this.selectableFacetsFuture,
    @JsonKey(includeFromJson: false, includeToJson: false) this.priceRange,
    @JsonKey(includeFromJson: false, includeToJson: false) this.filterGroupID,
    @JsonKey(includeFromJson: false, includeToJson: false) this.filter,
  }) : super._();

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String attribute;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  String selectionType;
  @override
  @JsonKey()
  bool pinned;
  @override
  String? value;
  @override
  @JsonKey()
  Map<String, FilterValueModel> values;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Future<List<SelectableItem<Facet>>>? selectableFacetsFuture;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? priceRange;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  FilterGroupID? filterGroupID;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? filter;

  @override
  String toString() {
    return 'FilterModel(id: $id, attribute: $attribute, nameEn: $nameEn, nameAr: $nameAr, selectionType: $selectionType, pinned: $pinned, value: $value, values: $values, selectableFacetsFuture: $selectableFacetsFuture, priceRange: $priceRange, filterGroupID: $filterGroupID, filter: $filter)';
  }

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(this);
  }
}

abstract class _FilterModel extends FilterModel {
  factory _FilterModel({
    String id,
    String attribute,
    String nameEn,
    String nameAr,
    String selectionType,
    bool pinned,
    String? value,
    Map<String, FilterValueModel> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    Future<List<SelectableItem<Facet>>>? selectableFacetsFuture,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? priceRange,
    @JsonKey(includeFromJson: false, includeToJson: false)
    FilterGroupID? filterGroupID,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  }) = _$FilterModelImpl;
  _FilterModel._() : super._();

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get attribute;
  set attribute(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  String get selectionType;
  set selectionType(String value);
  @override
  bool get pinned;
  set pinned(bool value);
  @override
  String? get value;
  set value(String? value);
  @override
  Map<String, FilterValueModel> get values;
  set values(Map<String, FilterValueModel> value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Future<List<SelectableItem<Facet>>>? get selectableFacetsFuture;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set selectableFacetsFuture(Future<List<SelectableItem<Facet>>>? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get priceRange;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set priceRange(RangeValues? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  FilterGroupID? get filterGroupID;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filterGroupID(FilterGroupID? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? get filter;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filter(Filter? value);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterValueModel _$FilterValueModelFromJson(Map<String, dynamic> json) {
  return _FilterValueModel.fromJson(json);
}

/// @nodoc
mixin _$FilterValueModel {
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  set selected(bool value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? get filter => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filter(Filter? value) => throw _privateConstructorUsedError;

  /// Serializes this FilterValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterValueModelCopyWith<FilterValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterValueModelCopyWith<$Res> {
  factory $FilterValueModelCopyWith(
    FilterValueModel value,
    $Res Function(FilterValueModel) then,
  ) = _$FilterValueModelCopyWithImpl<$Res, FilterValueModel>;
  @useResult
  $Res call({
    String nameEn,
    String nameAr,
    bool selected,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  });
}

/// @nodoc
class _$FilterValueModelCopyWithImpl<$Res, $Val extends FilterValueModel>
    implements $FilterValueModelCopyWith<$Res> {
  _$FilterValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selected = null,
    Object? filter = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            filter: freezed == filter
                ? _value.filter
                : filter // ignore: cast_nullable_to_non_nullable
                      as Filter?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FilterValueModelImplCopyWith<$Res>
    implements $FilterValueModelCopyWith<$Res> {
  factory _$$FilterValueModelImplCopyWith(
    _$FilterValueModelImpl value,
    $Res Function(_$FilterValueModelImpl) then,
  ) = __$$FilterValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nameEn,
    String nameAr,
    bool selected,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  });
}

/// @nodoc
class __$$FilterValueModelImplCopyWithImpl<$Res>
    extends _$FilterValueModelCopyWithImpl<$Res, _$FilterValueModelImpl>
    implements _$$FilterValueModelImplCopyWith<$Res> {
  __$$FilterValueModelImplCopyWithImpl(
    _$FilterValueModelImpl _value,
    $Res Function(_$FilterValueModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FilterValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = null,
    Object? nameAr = null,
    Object? selected = null,
    Object? filter = freezed,
  }) {
    return _then(
      _$FilterValueModelImpl(
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
        filter: freezed == filter
            ? _value.filter
            : filter // ignore: cast_nullable_to_non_nullable
                  as Filter?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FilterValueModelImpl extends _FilterValueModel {
  _$FilterValueModelImpl({
    this.nameEn = '',
    this.nameAr = '',
    this.selected = false,
    @JsonKey(includeFromJson: false, includeToJson: false) this.filter,
  }) : super._();

  factory _$FilterValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterValueModelImplFromJson(json);

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
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? filter;

  @override
  String toString() {
    return 'FilterValueModel(nameEn: $nameEn, nameAr: $nameAr, selected: $selected, filter: $filter)';
  }

  /// Create a copy of FilterValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterValueModelImplCopyWith<_$FilterValueModelImpl> get copyWith =>
      __$$FilterValueModelImplCopyWithImpl<_$FilterValueModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterValueModelImplToJson(this);
  }
}

abstract class _FilterValueModel extends FilterValueModel {
  factory _FilterValueModel({
    String nameEn,
    String nameAr,
    bool selected,
    @JsonKey(includeFromJson: false, includeToJson: false) Filter? filter,
  }) = _$FilterValueModelImpl;
  _FilterValueModel._() : super._();

  factory _FilterValueModel.fromJson(Map<String, dynamic> json) =
      _$FilterValueModelImpl.fromJson;

  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  bool get selected;
  set selected(bool value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Filter? get filter;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set filter(Filter? value);

  /// Create a copy of FilterValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterValueModelImplCopyWith<_$FilterValueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacetDocumentModel _$FacetDocumentModelFromJson(Map<String, dynamic> json) {
  return _FacetDocumentModel.fromJson(json);
}

/// @nodoc
mixin _$FacetDocumentModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  Map<String, FacetData> get facets => throw _privateConstructorUsedError;
  set facets(Map<String, FacetData> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this FacetDocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacetDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacetDocumentModelCopyWith<FacetDocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetDocumentModelCopyWith<$Res> {
  factory $FacetDocumentModelCopyWith(
    FacetDocumentModel value,
    $Res Function(FacetDocumentModel) then,
  ) = _$FacetDocumentModelCopyWithImpl<$Res, FacetDocumentModel>;
  @useResult
  $Res call({String id, Map<String, FacetData> facets});
}

/// @nodoc
class _$FacetDocumentModelCopyWithImpl<$Res, $Val extends FacetDocumentModel>
    implements $FacetDocumentModelCopyWith<$Res> {
  _$FacetDocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacetDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? facets = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            facets: null == facets
                ? _value.facets
                : facets // ignore: cast_nullable_to_non_nullable
                      as Map<String, FacetData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FacetDocumentModelImplCopyWith<$Res>
    implements $FacetDocumentModelCopyWith<$Res> {
  factory _$$FacetDocumentModelImplCopyWith(
    _$FacetDocumentModelImpl value,
    $Res Function(_$FacetDocumentModelImpl) then,
  ) = __$$FacetDocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Map<String, FacetData> facets});
}

/// @nodoc
class __$$FacetDocumentModelImplCopyWithImpl<$Res>
    extends _$FacetDocumentModelCopyWithImpl<$Res, _$FacetDocumentModelImpl>
    implements _$$FacetDocumentModelImplCopyWith<$Res> {
  __$$FacetDocumentModelImplCopyWithImpl(
    _$FacetDocumentModelImpl _value,
    $Res Function(_$FacetDocumentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacetDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? facets = null}) {
    return _then(
      _$FacetDocumentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        facets: null == facets
            ? _value.facets
            : facets // ignore: cast_nullable_to_non_nullable
                  as Map<String, FacetData>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FacetDocumentModelImpl implements _FacetDocumentModel {
  _$FacetDocumentModelImpl({this.id = "", this.facets = const {}});

  factory _$FacetDocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacetDocumentModelImplFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  Map<String, FacetData> facets;

  @override
  String toString() {
    return 'FacetDocumentModel(id: $id, facets: $facets)';
  }

  /// Create a copy of FacetDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacetDocumentModelImplCopyWith<_$FacetDocumentModelImpl> get copyWith =>
      __$$FacetDocumentModelImplCopyWithImpl<_$FacetDocumentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FacetDocumentModelImplToJson(this);
  }
}

abstract class _FacetDocumentModel implements FacetDocumentModel {
  factory _FacetDocumentModel({String id, Map<String, FacetData> facets}) =
      _$FacetDocumentModelImpl;

  factory _FacetDocumentModel.fromJson(Map<String, dynamic> json) =
      _$FacetDocumentModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  Map<String, FacetData> get facets;
  set facets(Map<String, FacetData> value);

  /// Create a copy of FacetDocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacetDocumentModelImplCopyWith<_$FacetDocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacetData _$FacetDataFromJson(Map<String, dynamic> json) {
  return _FacetData.fromJson(json);
}

/// @nodoc
mixin _$FacetData {
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  set pinned(bool value) => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;
  Map<String, FacetData> get values => throw _privateConstructorUsedError;
  set values(Map<String, FacetData> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get rangeValues => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set rangeValues(RangeValues? value) => throw _privateConstructorUsedError;

  /// Serializes this FacetData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacetDataCopyWith<FacetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetDataCopyWith<$Res> {
  factory $FacetDataCopyWith(FacetData value, $Res Function(FacetData) then) =
      _$FacetDataCopyWithImpl<$Res, FacetData>;
  @useResult
  $Res call({
    String nameEn,
    String nameAr,
    bool pinned,
    int order,
    Map<String, FacetData> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
  });
}

/// @nodoc
class _$FacetDataCopyWithImpl<$Res, $Val extends FacetData>
    implements $FacetDataCopyWith<$Res> {
  _$FacetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = null,
    Object? nameAr = null,
    Object? pinned = null,
    Object? order = null,
    Object? values = null,
    Object? rangeValues = freezed,
  }) {
    return _then(
      _value.copyWith(
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            pinned: null == pinned
                ? _value.pinned
                : pinned // ignore: cast_nullable_to_non_nullable
                      as bool,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            values: null == values
                ? _value.values
                : values // ignore: cast_nullable_to_non_nullable
                      as Map<String, FacetData>,
            rangeValues: freezed == rangeValues
                ? _value.rangeValues
                : rangeValues // ignore: cast_nullable_to_non_nullable
                      as RangeValues?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FacetDataImplCopyWith<$Res>
    implements $FacetDataCopyWith<$Res> {
  factory _$$FacetDataImplCopyWith(
    _$FacetDataImpl value,
    $Res Function(_$FacetDataImpl) then,
  ) = __$$FacetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nameEn,
    String nameAr,
    bool pinned,
    int order,
    Map<String, FacetData> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
  });
}

/// @nodoc
class __$$FacetDataImplCopyWithImpl<$Res>
    extends _$FacetDataCopyWithImpl<$Res, _$FacetDataImpl>
    implements _$$FacetDataImplCopyWith<$Res> {
  __$$FacetDataImplCopyWithImpl(
    _$FacetDataImpl _value,
    $Res Function(_$FacetDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = null,
    Object? nameAr = null,
    Object? pinned = null,
    Object? order = null,
    Object? values = null,
    Object? rangeValues = freezed,
  }) {
    return _then(
      _$FacetDataImpl(
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        pinned: null == pinned
            ? _value.pinned
            : pinned // ignore: cast_nullable_to_non_nullable
                  as bool,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        values: null == values
            ? _value.values
            : values // ignore: cast_nullable_to_non_nullable
                  as Map<String, FacetData>,
        rangeValues: freezed == rangeValues
            ? _value.rangeValues
            : rangeValues // ignore: cast_nullable_to_non_nullable
                  as RangeValues?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FacetDataImpl extends _FacetData {
  _$FacetDataImpl({
    this.nameEn = '',
    this.nameAr = '',
    this.pinned = false,
    this.order = 0,
    this.values = const {},
    @JsonKey(includeFromJson: false, includeToJson: false) this.rangeValues,
  }) : super._();

  factory _$FacetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacetDataImplFromJson(json);

  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  bool pinned;
  @override
  @JsonKey()
  int order;
  @override
  @JsonKey()
  Map<String, FacetData> values;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? rangeValues;

  @override
  String toString() {
    return 'FacetData(nameEn: $nameEn, nameAr: $nameAr, pinned: $pinned, order: $order, values: $values, rangeValues: $rangeValues)';
  }

  /// Create a copy of FacetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacetDataImplCopyWith<_$FacetDataImpl> get copyWith =>
      __$$FacetDataImplCopyWithImpl<_$FacetDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacetDataImplToJson(this);
  }
}

abstract class _FacetData extends FacetData {
  factory _FacetData({
    String nameEn,
    String nameAr,
    bool pinned,
    int order,
    Map<String, FacetData> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
  }) = _$FacetDataImpl;
  _FacetData._() : super._();

  factory _FacetData.fromJson(Map<String, dynamic> json) =
      _$FacetDataImpl.fromJson;

  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  bool get pinned;
  set pinned(bool value);
  @override
  int get order;
  set order(int value);
  @override
  Map<String, FacetData> get values;
  set values(Map<String, FacetData> value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get rangeValues;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set rangeValues(RangeValues? value);

  /// Create a copy of FacetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacetDataImplCopyWith<_$FacetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnifiedFacet _$UnifiedFacetFromJson(Map<String, dynamic> json) {
  return _UnifiedFacet.fromJson(json);
}

/// @nodoc
mixin _$UnifiedFacet {
  String get attribute => throw _privateConstructorUsedError;
  set attribute(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  set pinned(bool value) => throw _privateConstructorUsedError;
  List<UnifiedFacetValue> get values => throw _privateConstructorUsedError;
  set values(List<UnifiedFacetValue> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get rangeValues => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set rangeValues(RangeValues? value) => throw _privateConstructorUsedError;
  FacetStats? get stats => throw _privateConstructorUsedError;
  set stats(FacetStats? value) => throw _privateConstructorUsedError;

  /// Serializes this UnifiedFacet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnifiedFacetCopyWith<UnifiedFacet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnifiedFacetCopyWith<$Res> {
  factory $UnifiedFacetCopyWith(
    UnifiedFacet value,
    $Res Function(UnifiedFacet) then,
  ) = _$UnifiedFacetCopyWithImpl<$Res, UnifiedFacet>;
  @useResult
  $Res call({
    String attribute,
    String name,
    int order,
    bool pinned,
    List<UnifiedFacetValue> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
    FacetStats? stats,
  });

  $FacetStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$UnifiedFacetCopyWithImpl<$Res, $Val extends UnifiedFacet>
    implements $UnifiedFacetCopyWith<$Res> {
  _$UnifiedFacetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attribute = null,
    Object? name = null,
    Object? order = null,
    Object? pinned = null,
    Object? values = null,
    Object? rangeValues = freezed,
    Object? stats = freezed,
  }) {
    return _then(
      _value.copyWith(
            attribute: null == attribute
                ? _value.attribute
                : attribute // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            pinned: null == pinned
                ? _value.pinned
                : pinned // ignore: cast_nullable_to_non_nullable
                      as bool,
            values: null == values
                ? _value.values
                : values // ignore: cast_nullable_to_non_nullable
                      as List<UnifiedFacetValue>,
            rangeValues: freezed == rangeValues
                ? _value.rangeValues
                : rangeValues // ignore: cast_nullable_to_non_nullable
                      as RangeValues?,
            stats: freezed == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as FacetStats?,
          )
          as $Val,
    );
  }

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacetStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $FacetStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnifiedFacetImplCopyWith<$Res>
    implements $UnifiedFacetCopyWith<$Res> {
  factory _$$UnifiedFacetImplCopyWith(
    _$UnifiedFacetImpl value,
    $Res Function(_$UnifiedFacetImpl) then,
  ) = __$$UnifiedFacetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String attribute,
    String name,
    int order,
    bool pinned,
    List<UnifiedFacetValue> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
    FacetStats? stats,
  });

  @override
  $FacetStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$UnifiedFacetImplCopyWithImpl<$Res>
    extends _$UnifiedFacetCopyWithImpl<$Res, _$UnifiedFacetImpl>
    implements _$$UnifiedFacetImplCopyWith<$Res> {
  __$$UnifiedFacetImplCopyWithImpl(
    _$UnifiedFacetImpl _value,
    $Res Function(_$UnifiedFacetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attribute = null,
    Object? name = null,
    Object? order = null,
    Object? pinned = null,
    Object? values = null,
    Object? rangeValues = freezed,
    Object? stats = freezed,
  }) {
    return _then(
      _$UnifiedFacetImpl(
        attribute: null == attribute
            ? _value.attribute
            : attribute // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        pinned: null == pinned
            ? _value.pinned
            : pinned // ignore: cast_nullable_to_non_nullable
                  as bool,
        values: null == values
            ? _value.values
            : values // ignore: cast_nullable_to_non_nullable
                  as List<UnifiedFacetValue>,
        rangeValues: freezed == rangeValues
            ? _value.rangeValues
            : rangeValues // ignore: cast_nullable_to_non_nullable
                  as RangeValues?,
        stats: freezed == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as FacetStats?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnifiedFacetImpl implements _UnifiedFacet {
  _$UnifiedFacetImpl({
    required this.attribute,
    required this.name,
    required this.order,
    this.pinned = false,
    this.values = const [],
    @JsonKey(includeFromJson: false, includeToJson: false) this.rangeValues,
    this.stats,
  });

  factory _$UnifiedFacetImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnifiedFacetImplFromJson(json);

  @override
  String attribute;
  @override
  String name;
  @override
  int order;
  @override
  @JsonKey()
  bool pinned;
  @override
  @JsonKey()
  List<UnifiedFacetValue> values;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? rangeValues;
  @override
  FacetStats? stats;

  @override
  String toString() {
    return 'UnifiedFacet(attribute: $attribute, name: $name, order: $order, pinned: $pinned, values: $values, rangeValues: $rangeValues, stats: $stats)';
  }

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnifiedFacetImplCopyWith<_$UnifiedFacetImpl> get copyWith =>
      __$$UnifiedFacetImplCopyWithImpl<_$UnifiedFacetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnifiedFacetImplToJson(this);
  }
}

abstract class _UnifiedFacet implements UnifiedFacet {
  factory _UnifiedFacet({
    required String attribute,
    required String name,
    required int order,
    bool pinned,
    List<UnifiedFacetValue> values,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RangeValues? rangeValues,
    FacetStats? stats,
  }) = _$UnifiedFacetImpl;

  factory _UnifiedFacet.fromJson(Map<String, dynamic> json) =
      _$UnifiedFacetImpl.fromJson;

  @override
  String get attribute;
  set attribute(String value);
  @override
  String get name;
  set name(String value);
  @override
  int get order;
  set order(int value);
  @override
  bool get pinned;
  set pinned(bool value);
  @override
  List<UnifiedFacetValue> get values;
  set values(List<UnifiedFacetValue> value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  RangeValues? get rangeValues;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set rangeValues(RangeValues? value);
  @override
  FacetStats? get stats;
  set stats(FacetStats? value);

  /// Create a copy of UnifiedFacet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnifiedFacetImplCopyWith<_$UnifiedFacetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnifiedFacetValue _$UnifiedFacetValueFromJson(Map<String, dynamic> json) {
  return _UnifiedFacetValue.fromJson(json);
}

/// @nodoc
mixin _$UnifiedFacetValue {
  String get value => throw _privateConstructorUsedError;
  set value(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  set count(int value) => throw _privateConstructorUsedError;

  /// Serializes this UnifiedFacetValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnifiedFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnifiedFacetValueCopyWith<UnifiedFacetValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnifiedFacetValueCopyWith<$Res> {
  factory $UnifiedFacetValueCopyWith(
    UnifiedFacetValue value,
    $Res Function(UnifiedFacetValue) then,
  ) = _$UnifiedFacetValueCopyWithImpl<$Res, UnifiedFacetValue>;
  @useResult
  $Res call({String value, String name, int count});
}

/// @nodoc
class _$UnifiedFacetValueCopyWithImpl<$Res, $Val extends UnifiedFacetValue>
    implements $UnifiedFacetValueCopyWith<$Res> {
  _$UnifiedFacetValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnifiedFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? name = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnifiedFacetValueImplCopyWith<$Res>
    implements $UnifiedFacetValueCopyWith<$Res> {
  factory _$$UnifiedFacetValueImplCopyWith(
    _$UnifiedFacetValueImpl value,
    $Res Function(_$UnifiedFacetValueImpl) then,
  ) = __$$UnifiedFacetValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String name, int count});
}

/// @nodoc
class __$$UnifiedFacetValueImplCopyWithImpl<$Res>
    extends _$UnifiedFacetValueCopyWithImpl<$Res, _$UnifiedFacetValueImpl>
    implements _$$UnifiedFacetValueImplCopyWith<$Res> {
  __$$UnifiedFacetValueImplCopyWithImpl(
    _$UnifiedFacetValueImpl _value,
    $Res Function(_$UnifiedFacetValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UnifiedFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? name = null, Object? count = null}) {
    return _then(
      _$UnifiedFacetValueImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnifiedFacetValueImpl implements _UnifiedFacetValue {
  _$UnifiedFacetValueImpl({
    required this.value,
    required this.name,
    required this.count,
  });

  factory _$UnifiedFacetValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnifiedFacetValueImplFromJson(json);

  @override
  String value;
  @override
  String name;
  @override
  int count;

  @override
  String toString() {
    return 'UnifiedFacetValue(value: $value, name: $name, count: $count)';
  }

  /// Create a copy of UnifiedFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnifiedFacetValueImplCopyWith<_$UnifiedFacetValueImpl> get copyWith =>
      __$$UnifiedFacetValueImplCopyWithImpl<_$UnifiedFacetValueImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UnifiedFacetValueImplToJson(this);
  }
}

abstract class _UnifiedFacetValue implements UnifiedFacetValue {
  factory _UnifiedFacetValue({
    required String value,
    required String name,
    required int count,
  }) = _$UnifiedFacetValueImpl;

  factory _UnifiedFacetValue.fromJson(Map<String, dynamic> json) =
      _$UnifiedFacetValueImpl.fromJson;

  @override
  String get value;
  set value(String value);
  @override
  String get name;
  set name(String value);
  @override
  int get count;
  set count(int value);

  /// Create a copy of UnifiedFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnifiedFacetValueImplCopyWith<_$UnifiedFacetValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
