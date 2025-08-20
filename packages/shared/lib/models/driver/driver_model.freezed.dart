// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) {
  return _DriverModel.fromJson(json);
}

/// @nodoc
mixin _$DriverModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get firstNameEn => throw _privateConstructorUsedError;
  set firstNameEn(String value) => throw _privateConstructorUsedError;
  String get firstNameAr => throw _privateConstructorUsedError;
  set firstNameAr(String value) => throw _privateConstructorUsedError;
  String get lastNameEn => throw _privateConstructorUsedError;
  set lastNameEn(String value) => throw _privateConstructorUsedError;
  String get lastNameAr => throw _privateConstructorUsedError;
  set lastNameAr(String value) => throw _privateConstructorUsedError;
  String get phoneNum => throw _privateConstructorUsedError;
  set phoneNum(String value) => throw _privateConstructorUsedError;
  String get phoneCountryCode => throw _privateConstructorUsedError;
  set phoneCountryCode(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel get geoLoc => throw _privateConstructorUsedError;
  @JsonKey(name: MyFields.geoloc)
  set geoLoc(GeoLocModel value) => throw _privateConstructorUsedError;

  /// Serializes this DriverModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverModelCopyWith<DriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverModelCopyWith<$Res> {
  factory $DriverModelCopyWith(
    DriverModel value,
    $Res Function(DriverModel) then,
  ) = _$DriverModelCopyWithImpl<$Res, DriverModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String firstNameEn,
    String firstNameAr,
    String lastNameEn,
    String lastNameAr,
    String phoneNum,
    String phoneCountryCode,
    @JsonKey(name: MyFields.geoloc) GeoLocModel geoLoc,
  });

  $GeoLocModelCopyWith<$Res> get geoLoc;
}

/// @nodoc
class _$DriverModelCopyWithImpl<$Res, $Val extends DriverModel>
    implements $DriverModelCopyWith<$Res> {
  _$DriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? firstNameEn = null,
    Object? firstNameAr = null,
    Object? lastNameEn = null,
    Object? lastNameAr = null,
    Object? phoneNum = null,
    Object? phoneCountryCode = null,
    Object? geoLoc = null,
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
            firstNameEn: null == firstNameEn
                ? _value.firstNameEn
                : firstNameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            firstNameAr: null == firstNameAr
                ? _value.firstNameAr
                : firstNameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            lastNameEn: null == lastNameEn
                ? _value.lastNameEn
                : lastNameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            lastNameAr: null == lastNameAr
                ? _value.lastNameAr
                : lastNameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNum: null == phoneNum
                ? _value.phoneNum
                : phoneNum // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneCountryCode: null == phoneCountryCode
                ? _value.phoneCountryCode
                : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            geoLoc: null == geoLoc
                ? _value.geoLoc
                : geoLoc // ignore: cast_nullable_to_non_nullable
                      as GeoLocModel,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocModelCopyWith<$Res> get geoLoc {
    return $GeoLocModelCopyWith<$Res>(_value.geoLoc, (value) {
      return _then(_value.copyWith(geoLoc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverModelImplCopyWith<$Res>
    implements $DriverModelCopyWith<$Res> {
  factory _$$DriverModelImplCopyWith(
    _$DriverModelImpl value,
    $Res Function(_$DriverModelImpl) then,
  ) = __$$DriverModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String firstNameEn,
    String firstNameAr,
    String lastNameEn,
    String lastNameAr,
    String phoneNum,
    String phoneCountryCode,
    @JsonKey(name: MyFields.geoloc) GeoLocModel geoLoc,
  });

  @override
  $GeoLocModelCopyWith<$Res> get geoLoc;
}

/// @nodoc
class __$$DriverModelImplCopyWithImpl<$Res>
    extends _$DriverModelCopyWithImpl<$Res, _$DriverModelImpl>
    implements _$$DriverModelImplCopyWith<$Res> {
  __$$DriverModelImplCopyWithImpl(
    _$DriverModelImpl _value,
    $Res Function(_$DriverModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? firstNameEn = null,
    Object? firstNameAr = null,
    Object? lastNameEn = null,
    Object? lastNameAr = null,
    Object? phoneNum = null,
    Object? phoneCountryCode = null,
    Object? geoLoc = null,
  }) {
    return _then(
      _$DriverModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        firstNameEn: null == firstNameEn
            ? _value.firstNameEn
            : firstNameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        firstNameAr: null == firstNameAr
            ? _value.firstNameAr
            : firstNameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        lastNameEn: null == lastNameEn
            ? _value.lastNameEn
            : lastNameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        lastNameAr: null == lastNameAr
            ? _value.lastNameAr
            : lastNameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNum: null == phoneNum
            ? _value.phoneNum
            : phoneNum // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneCountryCode: null == phoneCountryCode
            ? _value.phoneCountryCode
            : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        geoLoc: null == geoLoc
            ? _value.geoLoc
            : geoLoc // ignore: cast_nullable_to_non_nullable
                  as GeoLocModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverModelImpl extends _DriverModel {
  _$DriverModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = "",
    this.firstNameEn = "",
    this.firstNameAr = "",
    this.lastNameEn = "",
    this.lastNameAr = "",
    this.phoneNum = "",
    this.phoneCountryCode = "",
    @JsonKey(name: MyFields.geoloc) required this.geoLoc,
  }) : super._();

  factory _$DriverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String firstNameEn;
  @override
  @JsonKey()
  String firstNameAr;
  @override
  @JsonKey()
  String lastNameEn;
  @override
  @JsonKey()
  String lastNameAr;
  @override
  @JsonKey()
  String phoneNum;
  @override
  @JsonKey()
  String phoneCountryCode;
  @override
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel geoLoc;

  @override
  String toString() {
    return 'DriverModel(createdAt: $createdAt, id: $id, firstNameEn: $firstNameEn, firstNameAr: $firstNameAr, lastNameEn: $lastNameEn, lastNameAr: $lastNameAr, phoneNum: $phoneNum, phoneCountryCode: $phoneCountryCode, geoLoc: $geoLoc)';
  }

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      __$$DriverModelImplCopyWithImpl<_$DriverModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverModelImplToJson(this);
  }
}

abstract class _DriverModel extends DriverModel {
  factory _DriverModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String firstNameEn,
    String firstNameAr,
    String lastNameEn,
    String lastNameAr,
    String phoneNum,
    String phoneCountryCode,
    @JsonKey(name: MyFields.geoloc) required GeoLocModel geoLoc,
  }) = _$DriverModelImpl;
  _DriverModel._() : super._();

  factory _DriverModel.fromJson(Map<String, dynamic> json) =
      _$DriverModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get firstNameEn;
  set firstNameEn(String value);
  @override
  String get firstNameAr;
  set firstNameAr(String value);
  @override
  String get lastNameEn;
  set lastNameEn(String value);
  @override
  String get lastNameAr;
  set lastNameAr(String value);
  @override
  String get phoneNum;
  set phoneNum(String value);
  @override
  String get phoneCountryCode;
  set phoneCountryCode(String value);
  @override
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel get geoLoc;
  @JsonKey(name: MyFields.geoloc)
  set geoLoc(GeoLocModel value);

  /// Create a copy of DriverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverModelImplCopyWith<_$DriverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
