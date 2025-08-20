// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CancelModel _$CancelModelFromJson(Map<String, dynamic> json) {
  return _CancelModel.fromJson(json);
}

/// @nodoc
mixin _$CancelModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String? get reasonId => throw _privateConstructorUsedError;
  set reasonId(String? value) => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;
  String? get canceledBy => throw _privateConstructorUsedError;
  set canceledBy(String? value) => throw _privateConstructorUsedError;
  String? get roleId => throw _privateConstructorUsedError;
  set roleId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this CancelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CancelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelModelCopyWith<CancelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelModelCopyWith<$Res> {
  factory $CancelModelCopyWith(
    CancelModel value,
    $Res Function(CancelModel) then,
  ) = _$CancelModelCopyWithImpl<$Res, CancelModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? reasonId,
    String? note,
    String? canceledBy,
    String? roleId,
  });
}

/// @nodoc
class _$CancelModelCopyWithImpl<$Res, $Val extends CancelModel>
    implements $CancelModelCopyWith<$Res> {
  _$CancelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? reasonId = freezed,
    Object? note = freezed,
    Object? canceledBy = freezed,
    Object? roleId = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            reasonId: freezed == reasonId
                ? _value.reasonId
                : reasonId // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            canceledBy: freezed == canceledBy
                ? _value.canceledBy
                : canceledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            roleId: freezed == roleId
                ? _value.roleId
                : roleId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CancelModelImplCopyWith<$Res>
    implements $CancelModelCopyWith<$Res> {
  factory _$$CancelModelImplCopyWith(
    _$CancelModelImpl value,
    $Res Function(_$CancelModelImpl) then,
  ) = __$$CancelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? reasonId,
    String? note,
    String? canceledBy,
    String? roleId,
  });
}

/// @nodoc
class __$$CancelModelImplCopyWithImpl<$Res>
    extends _$CancelModelCopyWithImpl<$Res, _$CancelModelImpl>
    implements _$$CancelModelImplCopyWith<$Res> {
  __$$CancelModelImplCopyWithImpl(
    _$CancelModelImpl _value,
    $Res Function(_$CancelModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? reasonId = freezed,
    Object? note = freezed,
    Object? canceledBy = freezed,
    Object? roleId = freezed,
  }) {
    return _then(
      _$CancelModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        reasonId: freezed == reasonId
            ? _value.reasonId
            : reasonId // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        canceledBy: freezed == canceledBy
            ? _value.canceledBy
            : canceledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        roleId: freezed == roleId
            ? _value.roleId
            : roleId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelModelImpl implements _CancelModel {
  _$CancelModelImpl({
    @TimestampSerializer() this.createdAt,
    this.reasonId,
    this.note,
    this.canceledBy,
    this.roleId,
  });

  factory _$CancelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  String? reasonId;
  @override
  String? note;
  @override
  String? canceledBy;
  @override
  String? roleId;

  @override
  String toString() {
    return 'CancelModel(createdAt: $createdAt, reasonId: $reasonId, note: $note, canceledBy: $canceledBy, roleId: $roleId)';
  }

  /// Create a copy of CancelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelModelImplCopyWith<_$CancelModelImpl> get copyWith =>
      __$$CancelModelImplCopyWithImpl<_$CancelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelModelImplToJson(this);
  }
}

abstract class _CancelModel implements CancelModel {
  factory _CancelModel({
    @TimestampSerializer() DateTime? createdAt,
    String? reasonId,
    String? note,
    String? canceledBy,
    String? roleId,
  }) = _$CancelModelImpl;

  factory _CancelModel.fromJson(Map<String, dynamic> json) =
      _$CancelModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String? get reasonId;
  set reasonId(String? value);
  @override
  String? get note;
  set note(String? value);
  @override
  String? get canceledBy;
  set canceledBy(String? value);
  @override
  String? get roleId;
  set roleId(String? value);

  /// Create a copy of CancelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelModelImplCopyWith<_$CancelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
