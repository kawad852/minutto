// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VersionModel _$VersionModelFromJson(Map<String, dynamic> json) {
  return _VersionModel.fromJson(json);
}

/// @nodoc
mixin _$VersionModel {
  int get branchesVersion => throw _privateConstructorUsedError;
  set branchesVersion(int value) => throw _privateConstructorUsedError;
  int get departmentsVersion => throw _privateConstructorUsedError;
  set departmentsVersion(int value) => throw _privateConstructorUsedError;
  int get usersVersion => throw _privateConstructorUsedError;
  set usersVersion(int value) => throw _privateConstructorUsedError;
  int get citiesVersion => throw _privateConstructorUsedError;
  set citiesVersion(int value) => throw _privateConstructorUsedError;
  int get shiftsVersion => throw _privateConstructorUsedError;
  set shiftsVersion(int value) => throw _privateConstructorUsedError;

  /// Serializes this VersionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VersionModelCopyWith<VersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionModelCopyWith<$Res> {
  factory $VersionModelCopyWith(
    VersionModel value,
    $Res Function(VersionModel) then,
  ) = _$VersionModelCopyWithImpl<$Res, VersionModel>;
  @useResult
  $Res call({
    int branchesVersion,
    int departmentsVersion,
    int usersVersion,
    int citiesVersion,
    int shiftsVersion,
  });
}

/// @nodoc
class _$VersionModelCopyWithImpl<$Res, $Val extends VersionModel>
    implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchesVersion = null,
    Object? departmentsVersion = null,
    Object? usersVersion = null,
    Object? citiesVersion = null,
    Object? shiftsVersion = null,
  }) {
    return _then(
      _value.copyWith(
            branchesVersion: null == branchesVersion
                ? _value.branchesVersion
                : branchesVersion // ignore: cast_nullable_to_non_nullable
                      as int,
            departmentsVersion: null == departmentsVersion
                ? _value.departmentsVersion
                : departmentsVersion // ignore: cast_nullable_to_non_nullable
                      as int,
            usersVersion: null == usersVersion
                ? _value.usersVersion
                : usersVersion // ignore: cast_nullable_to_non_nullable
                      as int,
            citiesVersion: null == citiesVersion
                ? _value.citiesVersion
                : citiesVersion // ignore: cast_nullable_to_non_nullable
                      as int,
            shiftsVersion: null == shiftsVersion
                ? _value.shiftsVersion
                : shiftsVersion // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VersionModelImplCopyWith<$Res>
    implements $VersionModelCopyWith<$Res> {
  factory _$$VersionModelImplCopyWith(
    _$VersionModelImpl value,
    $Res Function(_$VersionModelImpl) then,
  ) = __$$VersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int branchesVersion,
    int departmentsVersion,
    int usersVersion,
    int citiesVersion,
    int shiftsVersion,
  });
}

/// @nodoc
class __$$VersionModelImplCopyWithImpl<$Res>
    extends _$VersionModelCopyWithImpl<$Res, _$VersionModelImpl>
    implements _$$VersionModelImplCopyWith<$Res> {
  __$$VersionModelImplCopyWithImpl(
    _$VersionModelImpl _value,
    $Res Function(_$VersionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchesVersion = null,
    Object? departmentsVersion = null,
    Object? usersVersion = null,
    Object? citiesVersion = null,
    Object? shiftsVersion = null,
  }) {
    return _then(
      _$VersionModelImpl(
        branchesVersion: null == branchesVersion
            ? _value.branchesVersion
            : branchesVersion // ignore: cast_nullable_to_non_nullable
                  as int,
        departmentsVersion: null == departmentsVersion
            ? _value.departmentsVersion
            : departmentsVersion // ignore: cast_nullable_to_non_nullable
                  as int,
        usersVersion: null == usersVersion
            ? _value.usersVersion
            : usersVersion // ignore: cast_nullable_to_non_nullable
                  as int,
        citiesVersion: null == citiesVersion
            ? _value.citiesVersion
            : citiesVersion // ignore: cast_nullable_to_non_nullable
                  as int,
        shiftsVersion: null == shiftsVersion
            ? _value.shiftsVersion
            : shiftsVersion // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VersionModelImpl implements _VersionModel {
  _$VersionModelImpl({
    this.branchesVersion = 0,
    this.departmentsVersion = 0,
    this.usersVersion = 0,
    this.citiesVersion = 0,
    this.shiftsVersion = 0,
  });

  factory _$VersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionModelImplFromJson(json);

  @override
  @JsonKey()
  int branchesVersion;
  @override
  @JsonKey()
  int departmentsVersion;
  @override
  @JsonKey()
  int usersVersion;
  @override
  @JsonKey()
  int citiesVersion;
  @override
  @JsonKey()
  int shiftsVersion;

  @override
  String toString() {
    return 'VersionModel(branchesVersion: $branchesVersion, departmentsVersion: $departmentsVersion, usersVersion: $usersVersion, citiesVersion: $citiesVersion, shiftsVersion: $shiftsVersion)';
  }

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionModelImplCopyWith<_$VersionModelImpl> get copyWith =>
      __$$VersionModelImplCopyWithImpl<_$VersionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionModelImplToJson(this);
  }
}

abstract class _VersionModel implements VersionModel {
  factory _VersionModel({
    int branchesVersion,
    int departmentsVersion,
    int usersVersion,
    int citiesVersion,
    int shiftsVersion,
  }) = _$VersionModelImpl;

  factory _VersionModel.fromJson(Map<String, dynamic> json) =
      _$VersionModelImpl.fromJson;

  @override
  int get branchesVersion;
  set branchesVersion(int value);
  @override
  int get departmentsVersion;
  set departmentsVersion(int value);
  @override
  int get usersVersion;
  set usersVersion(int value);
  @override
  int get citiesVersion;
  set citiesVersion(int value);
  @override
  int get shiftsVersion;
  set shiftsVersion(int value);

  /// Create a copy of VersionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VersionModelImplCopyWith<_$VersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
