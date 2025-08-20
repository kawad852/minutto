// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String value) => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  set parentId(String value) => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  set published(bool value) => throw _privateConstructorUsedError;
  bool get showOnHome => throw _privateConstructorUsedError;
  set showOnHome(bool value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get selected => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set selected(bool value) => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
    CategoryModel value,
    $Res Function(CategoryModel) then,
  ) = _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String thumbnail,
    String parentId,
    bool published,
    bool showOnHome,
    @JsonKey(includeFromJson: false, includeToJson: false) bool selected,
  });
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? thumbnail = null,
    Object? parentId = null,
    Object? published = null,
    Object? showOnHome = null,
    Object? selected = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String,
            published: null == published
                ? _value.published
                : published // ignore: cast_nullable_to_non_nullable
                      as bool,
            showOnHome: null == showOnHome
                ? _value.showOnHome
                : showOnHome // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
    _$CategoryModelImpl value,
    $Res Function(_$CategoryModelImpl) then,
  ) = __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String thumbnail,
    String parentId,
    bool published,
    bool showOnHome,
    @JsonKey(includeFromJson: false, includeToJson: false) bool selected,
  });
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
    _$CategoryModelImpl _value,
    $Res Function(_$CategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? thumbnail = null,
    Object? parentId = null,
    Object? published = null,
    Object? showOnHome = null,
    Object? selected = null,
  }) {
    return _then(
      _$CategoryModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String,
        published: null == published
            ? _value.published
            : published // ignore: cast_nullable_to_non_nullable
                  as bool,
        showOnHome: null == showOnHome
            ? _value.showOnHome
            : showOnHome // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$CategoryModelImpl extends _CategoryModel {
  _$CategoryModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.nameEn = '',
    this.nameAr = '',
    this.thumbnail = '',
    this.parentId = '',
    this.published = true,
    this.showOnHome = false,
    @JsonKey(includeFromJson: false, includeToJson: false)
    this.selected = false,
  }) : super._();

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  String thumbnail;
  @override
  @JsonKey()
  String parentId;
  @override
  @JsonKey()
  bool published;
  @override
  @JsonKey()
  bool showOnHome;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool selected;

  @override
  String toString() {
    return 'CategoryModel(createdAt: $createdAt, id: $id, nameEn: $nameEn, nameAr: $nameAr, thumbnail: $thumbnail, parentId: $parentId, published: $published, showOnHome: $showOnHome, selected: $selected)';
  }

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(this);
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String thumbnail,
    String parentId,
    bool published,
    bool showOnHome,
    @JsonKey(includeFromJson: false, includeToJson: false) bool selected,
  }) = _$CategoryModelImpl;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  String get thumbnail;
  set thumbnail(String value);
  @override
  String get parentId;
  set parentId(String value);
  @override
  bool get published;
  set published(bool value);
  @override
  bool get showOnHome;
  set showOnHome(bool value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool get selected;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set selected(bool value);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
