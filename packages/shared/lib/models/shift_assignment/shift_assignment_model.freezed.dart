// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_assignment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShiftAssignmentModel _$ShiftAssignmentModelFromJson(Map<String, dynamic> json) {
  return _ShiftAssignmentModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftAssignmentModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get shiftId => throw _privateConstructorUsedError;
  set shiftId(String value) => throw _privateConstructorUsedError;

  /// Serializes this ShiftAssignmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftAssignmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftAssignmentModelCopyWith<ShiftAssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftAssignmentModelCopyWith<$Res> {
  factory $ShiftAssignmentModelCopyWith(
    ShiftAssignmentModel value,
    $Res Function(ShiftAssignmentModel) then,
  ) = _$ShiftAssignmentModelCopyWithImpl<$Res, ShiftAssignmentModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String userId,
    String shiftId,
  });
}

/// @nodoc
class _$ShiftAssignmentModelCopyWithImpl<
  $Res,
  $Val extends ShiftAssignmentModel
>
    implements $ShiftAssignmentModelCopyWith<$Res> {
  _$ShiftAssignmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftAssignmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? userId = null,
    Object? shiftId = null,
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
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            shiftId: null == shiftId
                ? _value.shiftId
                : shiftId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShiftAssignmentModelImplCopyWith<$Res>
    implements $ShiftAssignmentModelCopyWith<$Res> {
  factory _$$ShiftAssignmentModelImplCopyWith(
    _$ShiftAssignmentModelImpl value,
    $Res Function(_$ShiftAssignmentModelImpl) then,
  ) = __$$ShiftAssignmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String userId,
    String shiftId,
  });
}

/// @nodoc
class __$$ShiftAssignmentModelImplCopyWithImpl<$Res>
    extends _$ShiftAssignmentModelCopyWithImpl<$Res, _$ShiftAssignmentModelImpl>
    implements _$$ShiftAssignmentModelImplCopyWith<$Res> {
  __$$ShiftAssignmentModelImplCopyWithImpl(
    _$ShiftAssignmentModelImpl _value,
    $Res Function(_$ShiftAssignmentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShiftAssignmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? userId = null,
    Object? shiftId = null,
  }) {
    return _then(
      _$ShiftAssignmentModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        shiftId: null == shiftId
            ? _value.shiftId
            : shiftId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShiftAssignmentModelImpl implements _ShiftAssignmentModel {
  _$ShiftAssignmentModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.userId = '',
    this.shiftId = '',
  });

  factory _$ShiftAssignmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftAssignmentModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String userId;
  @override
  @JsonKey()
  String shiftId;

  @override
  String toString() {
    return 'ShiftAssignmentModel(createdAt: $createdAt, id: $id, userId: $userId, shiftId: $shiftId)';
  }

  /// Create a copy of ShiftAssignmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftAssignmentModelImplCopyWith<_$ShiftAssignmentModelImpl>
  get copyWith =>
      __$$ShiftAssignmentModelImplCopyWithImpl<_$ShiftAssignmentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftAssignmentModelImplToJson(this);
  }
}

abstract class _ShiftAssignmentModel implements ShiftAssignmentModel {
  factory _ShiftAssignmentModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String userId,
    String shiftId,
  }) = _$ShiftAssignmentModelImpl;

  factory _ShiftAssignmentModel.fromJson(Map<String, dynamic> json) =
      _$ShiftAssignmentModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get shiftId;
  set shiftId(String value);

  /// Create a copy of ShiftAssignmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftAssignmentModelImplCopyWith<_$ShiftAssignmentModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
