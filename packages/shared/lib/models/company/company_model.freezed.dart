// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) {
  return _CompanyModel.fromJson(json);
}

/// @nodoc
mixin _$CompanyModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  LeavePolicyModel? get leavePolicy => throw _privateConstructorUsedError;
  set leavePolicy(LeavePolicyModel? value) =>
      throw _privateConstructorUsedError;
  AttendancePolicyModel? get attendancePolicy =>
      throw _privateConstructorUsedError;
  set attendancePolicy(AttendancePolicyModel? value) =>
      throw _privateConstructorUsedError;
  GeoLocationModel? get geoLocation => throw _privateConstructorUsedError;
  set geoLocation(GeoLocationModel? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyModelCopyWith<CompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyModelCopyWith<$Res> {
  factory $CompanyModelCopyWith(
    CompanyModel value,
    $Res Function(CompanyModel) then,
  ) = _$CompanyModelCopyWithImpl<$Res, CompanyModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String code,
    LeavePolicyModel? leavePolicy,
    AttendancePolicyModel? attendancePolicy,
    GeoLocationModel? geoLocation,
  });

  $LeavePolicyModelCopyWith<$Res>? get leavePolicy;
  $AttendancePolicyModelCopyWith<$Res>? get attendancePolicy;
  $GeoLocationModelCopyWith<$Res>? get geoLocation;
}

/// @nodoc
class _$CompanyModelCopyWithImpl<$Res, $Val extends CompanyModel>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? leavePolicy = freezed,
    Object? attendancePolicy = freezed,
    Object? geoLocation = freezed,
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
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            leavePolicy: freezed == leavePolicy
                ? _value.leavePolicy
                : leavePolicy // ignore: cast_nullable_to_non_nullable
                      as LeavePolicyModel?,
            attendancePolicy: freezed == attendancePolicy
                ? _value.attendancePolicy
                : attendancePolicy // ignore: cast_nullable_to_non_nullable
                      as AttendancePolicyModel?,
            geoLocation: freezed == geoLocation
                ? _value.geoLocation
                : geoLocation // ignore: cast_nullable_to_non_nullable
                      as GeoLocationModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeavePolicyModelCopyWith<$Res>? get leavePolicy {
    if (_value.leavePolicy == null) {
      return null;
    }

    return $LeavePolicyModelCopyWith<$Res>(_value.leavePolicy!, (value) {
      return _then(_value.copyWith(leavePolicy: value) as $Val);
    });
  }

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendancePolicyModelCopyWith<$Res>? get attendancePolicy {
    if (_value.attendancePolicy == null) {
      return null;
    }

    return $AttendancePolicyModelCopyWith<$Res>(_value.attendancePolicy!, (
      value,
    ) {
      return _then(_value.copyWith(attendancePolicy: value) as $Val);
    });
  }

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get geoLocation {
    if (_value.geoLocation == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_value.geoLocation!, (value) {
      return _then(_value.copyWith(geoLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyModelImplCopyWith<$Res>
    implements $CompanyModelCopyWith<$Res> {
  factory _$$CompanyModelImplCopyWith(
    _$CompanyModelImpl value,
    $Res Function(_$CompanyModelImpl) then,
  ) = __$$CompanyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String code,
    LeavePolicyModel? leavePolicy,
    AttendancePolicyModel? attendancePolicy,
    GeoLocationModel? geoLocation,
  });

  @override
  $LeavePolicyModelCopyWith<$Res>? get leavePolicy;
  @override
  $AttendancePolicyModelCopyWith<$Res>? get attendancePolicy;
  @override
  $GeoLocationModelCopyWith<$Res>? get geoLocation;
}

/// @nodoc
class __$$CompanyModelImplCopyWithImpl<$Res>
    extends _$CompanyModelCopyWithImpl<$Res, _$CompanyModelImpl>
    implements _$$CompanyModelImplCopyWith<$Res> {
  __$$CompanyModelImplCopyWithImpl(
    _$CompanyModelImpl _value,
    $Res Function(_$CompanyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? leavePolicy = freezed,
    Object? attendancePolicy = freezed,
    Object? geoLocation = freezed,
  }) {
    return _then(
      _$CompanyModelImpl(
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
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        leavePolicy: freezed == leavePolicy
            ? _value.leavePolicy
            : leavePolicy // ignore: cast_nullable_to_non_nullable
                  as LeavePolicyModel?,
        attendancePolicy: freezed == attendancePolicy
            ? _value.attendancePolicy
            : attendancePolicy // ignore: cast_nullable_to_non_nullable
                  as AttendancePolicyModel?,
        geoLocation: freezed == geoLocation
            ? _value.geoLocation
            : geoLocation // ignore: cast_nullable_to_non_nullable
                  as GeoLocationModel?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CompanyModelImpl implements _CompanyModel {
  _$CompanyModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.name = '',
    this.code = '',
    this.leavePolicy,
    this.attendancePolicy,
    this.geoLocation,
  });

  factory _$CompanyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyModelImplFromJson(json);

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
  String code;
  @override
  LeavePolicyModel? leavePolicy;
  @override
  AttendancePolicyModel? attendancePolicy;
  @override
  GeoLocationModel? geoLocation;

  @override
  String toString() {
    return 'CompanyModel(createdAt: $createdAt, id: $id, name: $name, code: $code, leavePolicy: $leavePolicy, attendancePolicy: $attendancePolicy, geoLocation: $geoLocation)';
  }

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      __$$CompanyModelImplCopyWithImpl<_$CompanyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyModelImplToJson(this);
  }
}

abstract class _CompanyModel implements CompanyModel {
  factory _CompanyModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String name,
    String code,
    LeavePolicyModel? leavePolicy,
    AttendancePolicyModel? attendancePolicy,
    GeoLocationModel? geoLocation,
  }) = _$CompanyModelImpl;

  factory _CompanyModel.fromJson(Map<String, dynamic> json) =
      _$CompanyModelImpl.fromJson;

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
  String get code;
  set code(String value);
  @override
  LeavePolicyModel? get leavePolicy;
  set leavePolicy(LeavePolicyModel? value);
  @override
  AttendancePolicyModel? get attendancePolicy;
  set attendancePolicy(AttendancePolicyModel? value);
  @override
  GeoLocationModel? get geoLocation;
  set geoLocation(GeoLocationModel? value);

  /// Create a copy of CompanyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyModelImplCopyWith<_$CompanyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeavePolicyModel _$LeavePolicyModelFromJson(Map<String, dynamic> json) {
  return _LeavePolicyModel.fromJson(json);
}

/// @nodoc
mixin _$LeavePolicyModel {
  int get maxDaysPerRequest => throw _privateConstructorUsedError;
  set maxDaysPerRequest(int value) => throw _privateConstructorUsedError;
  bool get allowCarryOver => throw _privateConstructorUsedError;
  set allowCarryOver(bool value) => throw _privateConstructorUsedError;
  int get maxCarryOverDays => throw _privateConstructorUsedError;
  set maxCarryOverDays(int value) => throw _privateConstructorUsedError;

  /// Serializes this LeavePolicyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeavePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeavePolicyModelCopyWith<LeavePolicyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavePolicyModelCopyWith<$Res> {
  factory $LeavePolicyModelCopyWith(
    LeavePolicyModel value,
    $Res Function(LeavePolicyModel) then,
  ) = _$LeavePolicyModelCopyWithImpl<$Res, LeavePolicyModel>;
  @useResult
  $Res call({int maxDaysPerRequest, bool allowCarryOver, int maxCarryOverDays});
}

/// @nodoc
class _$LeavePolicyModelCopyWithImpl<$Res, $Val extends LeavePolicyModel>
    implements $LeavePolicyModelCopyWith<$Res> {
  _$LeavePolicyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeavePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxDaysPerRequest = null,
    Object? allowCarryOver = null,
    Object? maxCarryOverDays = null,
  }) {
    return _then(
      _value.copyWith(
            maxDaysPerRequest: null == maxDaysPerRequest
                ? _value.maxDaysPerRequest
                : maxDaysPerRequest // ignore: cast_nullable_to_non_nullable
                      as int,
            allowCarryOver: null == allowCarryOver
                ? _value.allowCarryOver
                : allowCarryOver // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxCarryOverDays: null == maxCarryOverDays
                ? _value.maxCarryOverDays
                : maxCarryOverDays // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeavePolicyModelImplCopyWith<$Res>
    implements $LeavePolicyModelCopyWith<$Res> {
  factory _$$LeavePolicyModelImplCopyWith(
    _$LeavePolicyModelImpl value,
    $Res Function(_$LeavePolicyModelImpl) then,
  ) = __$$LeavePolicyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxDaysPerRequest, bool allowCarryOver, int maxCarryOverDays});
}

/// @nodoc
class __$$LeavePolicyModelImplCopyWithImpl<$Res>
    extends _$LeavePolicyModelCopyWithImpl<$Res, _$LeavePolicyModelImpl>
    implements _$$LeavePolicyModelImplCopyWith<$Res> {
  __$$LeavePolicyModelImplCopyWithImpl(
    _$LeavePolicyModelImpl _value,
    $Res Function(_$LeavePolicyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeavePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxDaysPerRequest = null,
    Object? allowCarryOver = null,
    Object? maxCarryOverDays = null,
  }) {
    return _then(
      _$LeavePolicyModelImpl(
        maxDaysPerRequest: null == maxDaysPerRequest
            ? _value.maxDaysPerRequest
            : maxDaysPerRequest // ignore: cast_nullable_to_non_nullable
                  as int,
        allowCarryOver: null == allowCarryOver
            ? _value.allowCarryOver
            : allowCarryOver // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxCarryOverDays: null == maxCarryOverDays
            ? _value.maxCarryOverDays
            : maxCarryOverDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LeavePolicyModelImpl implements _LeavePolicyModel {
  _$LeavePolicyModelImpl({
    this.maxDaysPerRequest = 0,
    this.allowCarryOver = false,
    this.maxCarryOverDays = 0,
  });

  factory _$LeavePolicyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeavePolicyModelImplFromJson(json);

  @override
  @JsonKey()
  int maxDaysPerRequest;
  @override
  @JsonKey()
  bool allowCarryOver;
  @override
  @JsonKey()
  int maxCarryOverDays;

  @override
  String toString() {
    return 'LeavePolicyModel(maxDaysPerRequest: $maxDaysPerRequest, allowCarryOver: $allowCarryOver, maxCarryOverDays: $maxCarryOverDays)';
  }

  /// Create a copy of LeavePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeavePolicyModelImplCopyWith<_$LeavePolicyModelImpl> get copyWith =>
      __$$LeavePolicyModelImplCopyWithImpl<_$LeavePolicyModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeavePolicyModelImplToJson(this);
  }
}

abstract class _LeavePolicyModel implements LeavePolicyModel {
  factory _LeavePolicyModel({
    int maxDaysPerRequest,
    bool allowCarryOver,
    int maxCarryOverDays,
  }) = _$LeavePolicyModelImpl;

  factory _LeavePolicyModel.fromJson(Map<String, dynamic> json) =
      _$LeavePolicyModelImpl.fromJson;

  @override
  int get maxDaysPerRequest;
  set maxDaysPerRequest(int value);
  @override
  bool get allowCarryOver;
  set allowCarryOver(bool value);
  @override
  int get maxCarryOverDays;
  set maxCarryOverDays(int value);

  /// Create a copy of LeavePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeavePolicyModelImplCopyWith<_$LeavePolicyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendancePolicyModel _$AttendancePolicyModelFromJson(
  Map<String, dynamic> json,
) {
  return _AttendancePolicyModel.fromJson(json);
}

/// @nodoc
mixin _$AttendancePolicyModel {
  int get shiftGraceMinutes => throw _privateConstructorUsedError;
  set shiftGraceMinutes(int value) => throw _privateConstructorUsedError;
  bool get lateAfterGrace => throw _privateConstructorUsedError;
  set lateAfterGrace(bool value) => throw _privateConstructorUsedError;
  List<LateDeductionRuleModel> get lateDeductionRules =>
      throw _privateConstructorUsedError;
  set lateDeductionRules(List<LateDeductionRuleModel> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this AttendancePolicyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendancePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendancePolicyModelCopyWith<AttendancePolicyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendancePolicyModelCopyWith<$Res> {
  factory $AttendancePolicyModelCopyWith(
    AttendancePolicyModel value,
    $Res Function(AttendancePolicyModel) then,
  ) = _$AttendancePolicyModelCopyWithImpl<$Res, AttendancePolicyModel>;
  @useResult
  $Res call({
    int shiftGraceMinutes,
    bool lateAfterGrace,
    List<LateDeductionRuleModel> lateDeductionRules,
  });
}

/// @nodoc
class _$AttendancePolicyModelCopyWithImpl<
  $Res,
  $Val extends AttendancePolicyModel
>
    implements $AttendancePolicyModelCopyWith<$Res> {
  _$AttendancePolicyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendancePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftGraceMinutes = null,
    Object? lateAfterGrace = null,
    Object? lateDeductionRules = null,
  }) {
    return _then(
      _value.copyWith(
            shiftGraceMinutes: null == shiftGraceMinutes
                ? _value.shiftGraceMinutes
                : shiftGraceMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            lateAfterGrace: null == lateAfterGrace
                ? _value.lateAfterGrace
                : lateAfterGrace // ignore: cast_nullable_to_non_nullable
                      as bool,
            lateDeductionRules: null == lateDeductionRules
                ? _value.lateDeductionRules
                : lateDeductionRules // ignore: cast_nullable_to_non_nullable
                      as List<LateDeductionRuleModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendancePolicyModelImplCopyWith<$Res>
    implements $AttendancePolicyModelCopyWith<$Res> {
  factory _$$AttendancePolicyModelImplCopyWith(
    _$AttendancePolicyModelImpl value,
    $Res Function(_$AttendancePolicyModelImpl) then,
  ) = __$$AttendancePolicyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int shiftGraceMinutes,
    bool lateAfterGrace,
    List<LateDeductionRuleModel> lateDeductionRules,
  });
}

/// @nodoc
class __$$AttendancePolicyModelImplCopyWithImpl<$Res>
    extends
        _$AttendancePolicyModelCopyWithImpl<$Res, _$AttendancePolicyModelImpl>
    implements _$$AttendancePolicyModelImplCopyWith<$Res> {
  __$$AttendancePolicyModelImplCopyWithImpl(
    _$AttendancePolicyModelImpl _value,
    $Res Function(_$AttendancePolicyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendancePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftGraceMinutes = null,
    Object? lateAfterGrace = null,
    Object? lateDeductionRules = null,
  }) {
    return _then(
      _$AttendancePolicyModelImpl(
        shiftGraceMinutes: null == shiftGraceMinutes
            ? _value.shiftGraceMinutes
            : shiftGraceMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        lateAfterGrace: null == lateAfterGrace
            ? _value.lateAfterGrace
            : lateAfterGrace // ignore: cast_nullable_to_non_nullable
                  as bool,
        lateDeductionRules: null == lateDeductionRules
            ? _value.lateDeductionRules
            : lateDeductionRules // ignore: cast_nullable_to_non_nullable
                  as List<LateDeductionRuleModel>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AttendancePolicyModelImpl implements _AttendancePolicyModel {
  _$AttendancePolicyModelImpl({
    this.shiftGraceMinutes = 0,
    this.lateAfterGrace = true,
    required this.lateDeductionRules,
  });

  factory _$AttendancePolicyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendancePolicyModelImplFromJson(json);

  @override
  @JsonKey()
  int shiftGraceMinutes;
  @override
  @JsonKey()
  bool lateAfterGrace;
  @override
  List<LateDeductionRuleModel> lateDeductionRules;

  @override
  String toString() {
    return 'AttendancePolicyModel(shiftGraceMinutes: $shiftGraceMinutes, lateAfterGrace: $lateAfterGrace, lateDeductionRules: $lateDeductionRules)';
  }

  /// Create a copy of AttendancePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendancePolicyModelImplCopyWith<_$AttendancePolicyModelImpl>
  get copyWith =>
      __$$AttendancePolicyModelImplCopyWithImpl<_$AttendancePolicyModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendancePolicyModelImplToJson(this);
  }
}

abstract class _AttendancePolicyModel implements AttendancePolicyModel {
  factory _AttendancePolicyModel({
    int shiftGraceMinutes,
    bool lateAfterGrace,
    required List<LateDeductionRuleModel> lateDeductionRules,
  }) = _$AttendancePolicyModelImpl;

  factory _AttendancePolicyModel.fromJson(Map<String, dynamic> json) =
      _$AttendancePolicyModelImpl.fromJson;

  @override
  int get shiftGraceMinutes;
  set shiftGraceMinutes(int value);
  @override
  bool get lateAfterGrace;
  set lateAfterGrace(bool value);
  @override
  List<LateDeductionRuleModel> get lateDeductionRules;
  set lateDeductionRules(List<LateDeductionRuleModel> value);

  /// Create a copy of AttendancePolicyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendancePolicyModelImplCopyWith<_$AttendancePolicyModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LateDeductionRuleModel _$LateDeductionRuleModelFromJson(
  Map<String, dynamic> json,
) {
  return _LateDeductionRuleModel.fromJson(json);
}

/// @nodoc
mixin _$LateDeductionRuleModel {
  int get fromMinutes => throw _privateConstructorUsedError;
  set fromMinutes(int value) => throw _privateConstructorUsedError;
  int get toMinutes => throw _privateConstructorUsedError;
  set toMinutes(int value) => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  set value(int value) => throw _privateConstructorUsedError;

  /// Serializes this LateDeductionRuleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LateDeductionRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LateDeductionRuleModelCopyWith<LateDeductionRuleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LateDeductionRuleModelCopyWith<$Res> {
  factory $LateDeductionRuleModelCopyWith(
    LateDeductionRuleModel value,
    $Res Function(LateDeductionRuleModel) then,
  ) = _$LateDeductionRuleModelCopyWithImpl<$Res, LateDeductionRuleModel>;
  @useResult
  $Res call({int fromMinutes, int toMinutes, int value});
}

/// @nodoc
class _$LateDeductionRuleModelCopyWithImpl<
  $Res,
  $Val extends LateDeductionRuleModel
>
    implements $LateDeductionRuleModelCopyWith<$Res> {
  _$LateDeductionRuleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LateDeductionRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromMinutes = null,
    Object? toMinutes = null,
    Object? value = null,
  }) {
    return _then(
      _value.copyWith(
            fromMinutes: null == fromMinutes
                ? _value.fromMinutes
                : fromMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            toMinutes: null == toMinutes
                ? _value.toMinutes
                : toMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LateDeductionRuleModelImplCopyWith<$Res>
    implements $LateDeductionRuleModelCopyWith<$Res> {
  factory _$$LateDeductionRuleModelImplCopyWith(
    _$LateDeductionRuleModelImpl value,
    $Res Function(_$LateDeductionRuleModelImpl) then,
  ) = __$$LateDeductionRuleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fromMinutes, int toMinutes, int value});
}

/// @nodoc
class __$$LateDeductionRuleModelImplCopyWithImpl<$Res>
    extends
        _$LateDeductionRuleModelCopyWithImpl<$Res, _$LateDeductionRuleModelImpl>
    implements _$$LateDeductionRuleModelImplCopyWith<$Res> {
  __$$LateDeductionRuleModelImplCopyWithImpl(
    _$LateDeductionRuleModelImpl _value,
    $Res Function(_$LateDeductionRuleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LateDeductionRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromMinutes = null,
    Object? toMinutes = null,
    Object? value = null,
  }) {
    return _then(
      _$LateDeductionRuleModelImpl(
        fromMinutes: null == fromMinutes
            ? _value.fromMinutes
            : fromMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        toMinutes: null == toMinutes
            ? _value.toMinutes
            : toMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LateDeductionRuleModelImpl implements _LateDeductionRuleModel {
  _$LateDeductionRuleModelImpl({
    this.fromMinutes = 0,
    this.toMinutes = 0,
    this.value = 0,
  });

  factory _$LateDeductionRuleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LateDeductionRuleModelImplFromJson(json);

  @override
  @JsonKey()
  int fromMinutes;
  @override
  @JsonKey()
  int toMinutes;
  @override
  @JsonKey()
  int value;

  @override
  String toString() {
    return 'LateDeductionRuleModel(fromMinutes: $fromMinutes, toMinutes: $toMinutes, value: $value)';
  }

  /// Create a copy of LateDeductionRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LateDeductionRuleModelImplCopyWith<_$LateDeductionRuleModelImpl>
  get copyWith =>
      __$$LateDeductionRuleModelImplCopyWithImpl<_$LateDeductionRuleModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LateDeductionRuleModelImplToJson(this);
  }
}

abstract class _LateDeductionRuleModel implements LateDeductionRuleModel {
  factory _LateDeductionRuleModel({int fromMinutes, int toMinutes, int value}) =
      _$LateDeductionRuleModelImpl;

  factory _LateDeductionRuleModel.fromJson(Map<String, dynamic> json) =
      _$LateDeductionRuleModelImpl.fromJson;

  @override
  int get fromMinutes;
  set fromMinutes(int value);
  @override
  int get toMinutes;
  set toMinutes(int value);
  @override
  int get value;
  set value(int value);

  /// Create a copy of LateDeductionRuleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LateDeductionRuleModelImplCopyWith<_$LateDeductionRuleModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

GeoLocationModel _$GeoLocationModelFromJson(Map<String, dynamic> json) {
  return _GeoLocationModel.fromJson(json);
}

/// @nodoc
mixin _$GeoLocationModel {
  double get latitude => throw _privateConstructorUsedError;
  set latitude(double value) => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  set longitude(double value) => throw _privateConstructorUsedError;

  /// Serializes this GeoLocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoLocationModelCopyWith<GeoLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationModelCopyWith<$Res> {
  factory $GeoLocationModelCopyWith(
    GeoLocationModel value,
    $Res Function(GeoLocationModel) then,
  ) = _$GeoLocationModelCopyWithImpl<$Res, GeoLocationModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GeoLocationModelCopyWithImpl<$Res, $Val extends GeoLocationModel>
    implements $GeoLocationModelCopyWith<$Res> {
  _$GeoLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _value.copyWith(
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GeoLocationModelImplCopyWith<$Res>
    implements $GeoLocationModelCopyWith<$Res> {
  factory _$$GeoLocationModelImplCopyWith(
    _$GeoLocationModelImpl value,
    $Res Function(_$GeoLocationModelImpl) then,
  ) = __$$GeoLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GeoLocationModelImplCopyWithImpl<$Res>
    extends _$GeoLocationModelCopyWithImpl<$Res, _$GeoLocationModelImpl>
    implements _$$GeoLocationModelImplCopyWith<$Res> {
  __$$GeoLocationModelImplCopyWithImpl(
    _$GeoLocationModelImpl _value,
    $Res Function(_$GeoLocationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latitude = null, Object? longitude = null}) {
    return _then(
      _$GeoLocationModelImpl(
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GeoLocationModelImpl implements _GeoLocationModel {
  _$GeoLocationModelImpl({this.latitude = 0.0, this.longitude = 0.0});

  factory _$GeoLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoLocationModelImplFromJson(json);

  @override
  @JsonKey()
  double latitude;
  @override
  @JsonKey()
  double longitude;

  @override
  String toString() {
    return 'GeoLocationModel(latitude: $latitude, longitude: $longitude)';
  }

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      __$$GeoLocationModelImplCopyWithImpl<_$GeoLocationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoLocationModelImplToJson(this);
  }
}

abstract class _GeoLocationModel implements GeoLocationModel {
  factory _GeoLocationModel({double latitude, double longitude}) =
      _$GeoLocationModelImpl;

  factory _GeoLocationModel.fromJson(Map<String, dynamic> json) =
      _$GeoLocationModelImpl.fromJson;

  @override
  double get latitude;
  set latitude(double value);
  @override
  double get longitude;
  set longitude(double value);

  /// Create a copy of GeoLocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoLocationModelImplCopyWith<_$GeoLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
