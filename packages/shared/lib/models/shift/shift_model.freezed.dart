// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) {
  return _ShiftModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get startHour => throw _privateConstructorUsedError;
  set startHour(String value) => throw _privateConstructorUsedError;
  String get endHour => throw _privateConstructorUsedError;
  set endHour(String value) => throw _privateConstructorUsedError;
  List<int> get days => throw _privateConstructorUsedError;
  set days(List<int> value) => throw _privateConstructorUsedError;
  List<String> get branchIds => throw _privateConstructorUsedError;
  set branchIds(List<String> value) => throw _privateConstructorUsedError;

  /// Serializes this ShiftModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShiftModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShiftModelCopyWith<ShiftModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftModelCopyWith<$Res> {
  factory $ShiftModelCopyWith(
    ShiftModel value,
    $Res Function(ShiftModel) then,
  ) = _$ShiftModelCopyWithImpl<$Res, ShiftModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String startHour,
    String endHour,
    List<int> days,
    List<String> branchIds,
  });
}

/// @nodoc
class _$ShiftModelCopyWithImpl<$Res, $Val extends ShiftModel>
    implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShiftModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? startHour = null,
    Object? endHour = null,
    Object? days = null,
    Object? branchIds = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            startHour: null == startHour
                ? _value.startHour
                : startHour // ignore: cast_nullable_to_non_nullable
                      as String,
            endHour: null == endHour
                ? _value.endHour
                : endHour // ignore: cast_nullable_to_non_nullable
                      as String,
            days: null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            branchIds: null == branchIds
                ? _value.branchIds
                : branchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShiftModelImplCopyWith<$Res>
    implements $ShiftModelCopyWith<$Res> {
  factory _$$ShiftModelImplCopyWith(
    _$ShiftModelImpl value,
    $Res Function(_$ShiftModelImpl) then,
  ) = __$$ShiftModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String startHour,
    String endHour,
    List<int> days,
    List<String> branchIds,
  });
}

/// @nodoc
class __$$ShiftModelImplCopyWithImpl<$Res>
    extends _$ShiftModelCopyWithImpl<$Res, _$ShiftModelImpl>
    implements _$$ShiftModelImplCopyWith<$Res> {
  __$$ShiftModelImplCopyWithImpl(
    _$ShiftModelImpl _value,
    $Res Function(_$ShiftModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShiftModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? startHour = null,
    Object? endHour = null,
    Object? days = null,
    Object? branchIds = null,
  }) {
    return _then(
      _$ShiftModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        startHour: null == startHour
            ? _value.startHour
            : startHour // ignore: cast_nullable_to_non_nullable
                  as String,
        endHour: null == endHour
            ? _value.endHour
            : endHour // ignore: cast_nullable_to_non_nullable
                  as String,
        days: null == days
            ? _value.days
            : days // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        branchIds: null == branchIds
            ? _value.branchIds
            : branchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ShiftModelImpl implements _ShiftModel {
  _$ShiftModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.name = '',
    this.startHour = '',
    this.endHour = '',
    this.days = const [],
    this.branchIds = const [],
  });

  factory _$ShiftModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String startHour;
  @override
  @JsonKey()
  String endHour;
  @override
  @JsonKey()
  List<int> days;
  @override
  @JsonKey()
  List<String> branchIds;

  @override
  String toString() {
    return 'ShiftModel(createdAt: $createdAt, id: $id, name: $name, startHour: $startHour, endHour: $endHour, days: $days, branchIds: $branchIds)';
  }

  /// Create a copy of ShiftModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftModelImplCopyWith<_$ShiftModelImpl> get copyWith =>
      __$$ShiftModelImplCopyWithImpl<_$ShiftModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftModelImplToJson(this);
  }
}

abstract class _ShiftModel implements ShiftModel {
  factory _ShiftModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String startHour,
    String endHour,
    List<int> days,
    List<String> branchIds,
  }) = _$ShiftModelImpl;

  factory _ShiftModel.fromJson(Map<String, dynamic> json) =
      _$ShiftModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get startHour;
  set startHour(String value);
  @override
  String get endHour;
  set endHour(String value);
  @override
  List<int> get days;
  set days(List<int> value);
  @override
  List<String> get branchIds;
  set branchIds(List<String> value);

  /// Create a copy of ShiftModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShiftModelImplCopyWith<_$ShiftModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
