// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  set cityId(String value) => throw _privateConstructorUsedError;
  String get phoneNumberCountryCode => throw _privateConstructorUsedError;
  set phoneNumberCountryCode(String value) =>
      throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String value) => throw _privateConstructorUsedError;
  String get startWorkingHour => throw _privateConstructorUsedError;
  set startWorkingHour(String value) => throw _privateConstructorUsedError;
  String get endWorkingHour => throw _privateConstructorUsedError;
  set endWorkingHour(String value) => throw _privateConstructorUsedError;

  /// Serializes this BranchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
    BranchModel value,
    $Res Function(BranchModel) then,
  ) = _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String companyId,
    String email,
    String cityId,
    String phoneNumberCountryCode,
    String phoneNumber,
    String startWorkingHour,
    String endWorkingHour,
  });
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? companyId = null,
    Object? email = null,
    Object? cityId = null,
    Object? phoneNumberCountryCode = null,
    Object? phoneNumber = null,
    Object? startWorkingHour = null,
    Object? endWorkingHour = null,
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
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            cityId: null == cityId
                ? _value.cityId
                : cityId // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumberCountryCode: null == phoneNumberCountryCode
                ? _value.phoneNumberCountryCode
                : phoneNumberCountryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            startWorkingHour: null == startWorkingHour
                ? _value.startWorkingHour
                : startWorkingHour // ignore: cast_nullable_to_non_nullable
                      as String,
            endWorkingHour: null == endWorkingHour
                ? _value.endWorkingHour
                : endWorkingHour // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BranchModelImplCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$BranchModelImplCopyWith(
    _$BranchModelImpl value,
    $Res Function(_$BranchModelImpl) then,
  ) = __$$BranchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String companyId,
    String email,
    String cityId,
    String phoneNumberCountryCode,
    String phoneNumber,
    String startWorkingHour,
    String endWorkingHour,
  });
}

/// @nodoc
class __$$BranchModelImplCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$BranchModelImpl>
    implements _$$BranchModelImplCopyWith<$Res> {
  __$$BranchModelImplCopyWithImpl(
    _$BranchModelImpl _value,
    $Res Function(_$BranchModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? companyId = null,
    Object? email = null,
    Object? cityId = null,
    Object? phoneNumberCountryCode = null,
    Object? phoneNumber = null,
    Object? startWorkingHour = null,
    Object? endWorkingHour = null,
  }) {
    return _then(
      _$BranchModelImpl(
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
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        cityId: null == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumberCountryCode: null == phoneNumberCountryCode
            ? _value.phoneNumberCountryCode
            : phoneNumberCountryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        startWorkingHour: null == startWorkingHour
            ? _value.startWorkingHour
            : startWorkingHour // ignore: cast_nullable_to_non_nullable
                  as String,
        endWorkingHour: null == endWorkingHour
            ? _value.endWorkingHour
            : endWorkingHour // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BranchModelImpl extends _BranchModel {
  _$BranchModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.name = '',
    this.companyId = '',
    this.email = '',
    this.cityId = '',
    this.phoneNumberCountryCode = kFallBackCountryCode,
    this.phoneNumber = '',
    this.startWorkingHour = '',
    this.endWorkingHour = '',
  }) : super._();

  factory _$BranchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchModelImplFromJson(json);

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
  String companyId;
  @override
  @JsonKey()
  String email;
  @override
  @JsonKey()
  String cityId;
  @override
  @JsonKey()
  String phoneNumberCountryCode;
  @override
  @JsonKey()
  String phoneNumber;
  @override
  @JsonKey()
  String startWorkingHour;
  @override
  @JsonKey()
  String endWorkingHour;

  @override
  String toString() {
    return 'BranchModel(createdAt: $createdAt, id: $id, name: $name, companyId: $companyId, email: $email, cityId: $cityId, phoneNumberCountryCode: $phoneNumberCountryCode, phoneNumber: $phoneNumber, startWorkingHour: $startWorkingHour, endWorkingHour: $endWorkingHour)';
  }

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      __$$BranchModelImplCopyWithImpl<_$BranchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchModelImplToJson(this);
  }
}

abstract class _BranchModel extends BranchModel {
  factory _BranchModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String companyId,
    String email,
    String cityId,
    String phoneNumberCountryCode,
    String phoneNumber,
    String startWorkingHour,
    String endWorkingHour,
  }) = _$BranchModelImpl;
  _BranchModel._() : super._();

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$BranchModelImpl.fromJson;

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
  String get companyId;
  set companyId(String value);
  @override
  String get email;
  set email(String value);
  @override
  String get cityId;
  set cityId(String value);
  @override
  String get phoneNumberCountryCode;
  set phoneNumberCountryCode(String value);
  @override
  String get phoneNumber;
  set phoneNumber(String value);
  @override
  String get startWorkingHour;
  set startWorkingHour(String value);
  @override
  String get endWorkingHour;
  set endWorkingHour(String value);

  /// Create a copy of BranchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchModelImplCopyWith<_$BranchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
