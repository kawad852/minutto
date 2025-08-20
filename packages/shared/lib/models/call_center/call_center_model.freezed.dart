// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_center_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CallCenterModel _$CallCenterModelFromJson(Map<String, dynamic> json) {
  return _CallCenterModel.fromJson(json);
}

/// @nodoc
mixin _$CallCenterModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  String get phoneCountryCode => throw _privateConstructorUsedError;
  set phoneCountryCode(String value) => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  set displayName(String? value) => throw _privateConstructorUsedError;
  String? get areaId => throw _privateConstructorUsedError;
  set areaId(String? value) => throw _privateConstructorUsedError;
  String? get additionalDirections => throw _privateConstructorUsedError;
  set additionalDirections(String? value) => throw _privateConstructorUsedError;
  String get orderType => throw _privateConstructorUsedError;
  set orderType(String value) => throw _privateConstructorUsedError;

  /// Serializes this CallCenterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CallCenterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallCenterModelCopyWith<CallCenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallCenterModelCopyWith<$Res> {
  factory $CallCenterModelCopyWith(
    CallCenterModel value,
    $Res Function(CallCenterModel) then,
  ) = _$CallCenterModelCopyWithImpl<$Res, CallCenterModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? phoneNumber,
    String phoneCountryCode,
    String? displayName,
    String? areaId,
    String? additionalDirections,
    String orderType,
  });
}

/// @nodoc
class _$CallCenterModelCopyWithImpl<$Res, $Val extends CallCenterModel>
    implements $CallCenterModelCopyWith<$Res> {
  _$CallCenterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallCenterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCountryCode = null,
    Object? displayName = freezed,
    Object? areaId = freezed,
    Object? additionalDirections = freezed,
    Object? orderType = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneCountryCode: null == phoneCountryCode
                ? _value.phoneCountryCode
                : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            areaId: freezed == areaId
                ? _value.areaId
                : areaId // ignore: cast_nullable_to_non_nullable
                      as String?,
            additionalDirections: freezed == additionalDirections
                ? _value.additionalDirections
                : additionalDirections // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderType: null == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CallCenterModelImplCopyWith<$Res>
    implements $CallCenterModelCopyWith<$Res> {
  factory _$$CallCenterModelImplCopyWith(
    _$CallCenterModelImpl value,
    $Res Function(_$CallCenterModelImpl) then,
  ) = __$$CallCenterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? phoneNumber,
    String phoneCountryCode,
    String? displayName,
    String? areaId,
    String? additionalDirections,
    String orderType,
  });
}

/// @nodoc
class __$$CallCenterModelImplCopyWithImpl<$Res>
    extends _$CallCenterModelCopyWithImpl<$Res, _$CallCenterModelImpl>
    implements _$$CallCenterModelImplCopyWith<$Res> {
  __$$CallCenterModelImplCopyWithImpl(
    _$CallCenterModelImpl _value,
    $Res Function(_$CallCenterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CallCenterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCountryCode = null,
    Object? displayName = freezed,
    Object? areaId = freezed,
    Object? additionalDirections = freezed,
    Object? orderType = null,
  }) {
    return _then(
      _$CallCenterModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneCountryCode: null == phoneCountryCode
            ? _value.phoneCountryCode
            : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        areaId: freezed == areaId
            ? _value.areaId
            : areaId // ignore: cast_nullable_to_non_nullable
                  as String?,
        additionalDirections: freezed == additionalDirections
            ? _value.additionalDirections
            : additionalDirections // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderType: null == orderType
            ? _value.orderType
            : orderType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CallCenterModelImpl extends _CallCenterModel {
  _$CallCenterModelImpl({
    @TimestampSerializer() this.createdAt,
    this.phoneNumber,
    this.phoneCountryCode = kFallBackCountryCode,
    this.displayName,
    this.areaId,
    this.additionalDirections,
    this.orderType = OrderType.defaultValue,
  }) : super._();

  factory _$CallCenterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallCenterModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  String? phoneNumber;
  @override
  @JsonKey()
  String phoneCountryCode;
  @override
  String? displayName;
  @override
  String? areaId;
  @override
  String? additionalDirections;
  @override
  @JsonKey()
  String orderType;

  @override
  String toString() {
    return 'CallCenterModel(createdAt: $createdAt, phoneNumber: $phoneNumber, phoneCountryCode: $phoneCountryCode, displayName: $displayName, areaId: $areaId, additionalDirections: $additionalDirections, orderType: $orderType)';
  }

  /// Create a copy of CallCenterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallCenterModelImplCopyWith<_$CallCenterModelImpl> get copyWith =>
      __$$CallCenterModelImplCopyWithImpl<_$CallCenterModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CallCenterModelImplToJson(this);
  }
}

abstract class _CallCenterModel extends CallCenterModel {
  factory _CallCenterModel({
    @TimestampSerializer() DateTime? createdAt,
    String? phoneNumber,
    String phoneCountryCode,
    String? displayName,
    String? areaId,
    String? additionalDirections,
    String orderType,
  }) = _$CallCenterModelImpl;
  _CallCenterModel._() : super._();

  factory _CallCenterModel.fromJson(Map<String, dynamic> json) =
      _$CallCenterModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String? get phoneNumber;
  set phoneNumber(String? value);
  @override
  String get phoneCountryCode;
  set phoneCountryCode(String value);
  @override
  String? get displayName;
  set displayName(String? value);
  @override
  String? get areaId;
  set areaId(String? value);
  @override
  String? get additionalDirections;
  set additionalDirections(String? value);
  @override
  String get orderType;
  set orderType(String value);

  /// Create a copy of CallCenterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallCenterModelImplCopyWith<_$CallCenterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryAreaModel _$DeliveryAreaModelFromJson(Map<String, dynamic> json) {
  return _DeliveryAreaModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAreaModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  set deliveryFee(double value) => throw _privateConstructorUsedError;

  /// Serializes this DeliveryAreaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryAreaModelCopyWith<DeliveryAreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAreaModelCopyWith<$Res> {
  factory $DeliveryAreaModelCopyWith(
    DeliveryAreaModel value,
    $Res Function(DeliveryAreaModel) then,
  ) = _$DeliveryAreaModelCopyWithImpl<$Res, DeliveryAreaModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    double deliveryFee,
  });
}

/// @nodoc
class _$DeliveryAreaModelCopyWithImpl<$Res, $Val extends DeliveryAreaModel>
    implements $DeliveryAreaModelCopyWith<$Res> {
  _$DeliveryAreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? deliveryFee = null,
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
            deliveryFee: null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryAreaModelImplCopyWith<$Res>
    implements $DeliveryAreaModelCopyWith<$Res> {
  factory _$$DeliveryAreaModelImplCopyWith(
    _$DeliveryAreaModelImpl value,
    $Res Function(_$DeliveryAreaModelImpl) then,
  ) = __$$DeliveryAreaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    double deliveryFee,
  });
}

/// @nodoc
class __$$DeliveryAreaModelImplCopyWithImpl<$Res>
    extends _$DeliveryAreaModelCopyWithImpl<$Res, _$DeliveryAreaModelImpl>
    implements _$$DeliveryAreaModelImplCopyWith<$Res> {
  __$$DeliveryAreaModelImplCopyWithImpl(
    _$DeliveryAreaModelImpl _value,
    $Res Function(_$DeliveryAreaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? deliveryFee = null,
  }) {
    return _then(
      _$DeliveryAreaModelImpl(
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
        deliveryFee: null == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryAreaModelImpl implements _DeliveryAreaModel {
  _$DeliveryAreaModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = "",
    this.name = "",
    this.deliveryFee = 0.0,
  });

  factory _$DeliveryAreaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryAreaModelImplFromJson(json);

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
  double deliveryFee;

  @override
  String toString() {
    return 'DeliveryAreaModel(createdAt: $createdAt, id: $id, name: $name, deliveryFee: $deliveryFee)';
  }

  /// Create a copy of DeliveryAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAreaModelImplCopyWith<_$DeliveryAreaModelImpl> get copyWith =>
      __$$DeliveryAreaModelImplCopyWithImpl<_$DeliveryAreaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryAreaModelImplToJson(this);
  }
}

abstract class _DeliveryAreaModel implements DeliveryAreaModel {
  factory _DeliveryAreaModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    double deliveryFee,
  }) = _$DeliveryAreaModelImpl;

  factory _DeliveryAreaModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryAreaModelImpl.fromJson;

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
  double get deliveryFee;
  set deliveryFee(double value);

  /// Create a copy of DeliveryAreaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryAreaModelImplCopyWith<_$DeliveryAreaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
