// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String? get roleId => throw _privateConstructorUsedError;
  set roleId(String? value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get workStartDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set workStartDate(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get contractEndDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set contractEndDate(DateTime? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  set image(String value) => throw _privateConstructorUsedError;
  String get phoneNumberCountryCode => throw _privateConstructorUsedError;
  set phoneNumberCountryCode(String value) =>
      throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get birthDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set birthDate(DateTime? value) => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  set gender(String value) => throw _privateConstructorUsedError;
  String get maritalStatus => throw _privateConstructorUsedError;
  set maritalStatus(String value) => throw _privateConstructorUsedError;
  String get departmentId => throw _privateConstructorUsedError;
  set departmentId(String value) => throw _privateConstructorUsedError;
  String get branchId => throw _privateConstructorUsedError;
  set branchId(String value) => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  set jobTitle(String value) => throw _privateConstructorUsedError;
  double get basicSalary => throw _privateConstructorUsedError;
  set basicSalary(double value) => throw _privateConstructorUsedError;
  int get contractDurationMonths => throw _privateConstructorUsedError;
  set contractDurationMonths(int value) => throw _privateConstructorUsedError;
  String get nationalId => throw _privateConstructorUsedError;
  set nationalId(String value) => throw _privateConstructorUsedError;
  BankModel? get bank => throw _privateConstructorUsedError;
  set bank(BankModel? value) => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  set active(bool value) => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  set archived(bool value) => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String? roleId,
    String companyId,
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? workStartDate,
    @TimestampSerializer() DateTime? contractEndDate,
    String name,
    String image,
    String phoneNumberCountryCode,
    String phoneNumber,
    String email,
    @TimestampSerializer() DateTime? birthDate,
    String gender,
    String maritalStatus,
    String departmentId,
    String branchId,
    String jobTitle,
    double basicSalary,
    int contractDurationMonths,
    String nationalId,
    BankModel? bank,
    bool active,
    bool archived,
  });

  $BankModelCopyWith<$Res>? get bank;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roleId = freezed,
    Object? companyId = null,
    Object? createdAt = freezed,
    Object? workStartDate = freezed,
    Object? contractEndDate = freezed,
    Object? name = null,
    Object? image = null,
    Object? phoneNumberCountryCode = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? birthDate = freezed,
    Object? gender = null,
    Object? maritalStatus = null,
    Object? departmentId = null,
    Object? branchId = null,
    Object? jobTitle = null,
    Object? basicSalary = null,
    Object? contractDurationMonths = null,
    Object? nationalId = null,
    Object? bank = freezed,
    Object? active = null,
    Object? archived = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            roleId: freezed == roleId
                ? _value.roleId
                : roleId // ignore: cast_nullable_to_non_nullable
                      as String?,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            workStartDate: freezed == workStartDate
                ? _value.workStartDate
                : workStartDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            contractEndDate: freezed == contractEndDate
                ? _value.contractEndDate
                : contractEndDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            image: null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumberCountryCode: null == phoneNumberCountryCode
                ? _value.phoneNumberCountryCode
                : phoneNumberCountryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            birthDate: freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            maritalStatus: null == maritalStatus
                ? _value.maritalStatus
                : maritalStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            departmentId: null == departmentId
                ? _value.departmentId
                : departmentId // ignore: cast_nullable_to_non_nullable
                      as String,
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as String,
            jobTitle: null == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            basicSalary: null == basicSalary
                ? _value.basicSalary
                : basicSalary // ignore: cast_nullable_to_non_nullable
                      as double,
            contractDurationMonths: null == contractDurationMonths
                ? _value.contractDurationMonths
                : contractDurationMonths // ignore: cast_nullable_to_non_nullable
                      as int,
            nationalId: null == nationalId
                ? _value.nationalId
                : nationalId // ignore: cast_nullable_to_non_nullable
                      as String,
            bank: freezed == bank
                ? _value.bank
                : bank // ignore: cast_nullable_to_non_nullable
                      as BankModel?,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            archived: null == archived
                ? _value.archived
                : archived // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? roleId,
    String companyId,
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? workStartDate,
    @TimestampSerializer() DateTime? contractEndDate,
    String name,
    String image,
    String phoneNumberCountryCode,
    String phoneNumber,
    String email,
    @TimestampSerializer() DateTime? birthDate,
    String gender,
    String maritalStatus,
    String departmentId,
    String branchId,
    String jobTitle,
    double basicSalary,
    int contractDurationMonths,
    String nationalId,
    BankModel? bank,
    bool active,
    bool archived,
  });

  @override
  $BankModelCopyWith<$Res>? get bank;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? roleId = freezed,
    Object? companyId = null,
    Object? createdAt = freezed,
    Object? workStartDate = freezed,
    Object? contractEndDate = freezed,
    Object? name = null,
    Object? image = null,
    Object? phoneNumberCountryCode = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? birthDate = freezed,
    Object? gender = null,
    Object? maritalStatus = null,
    Object? departmentId = null,
    Object? branchId = null,
    Object? jobTitle = null,
    Object? basicSalary = null,
    Object? contractDurationMonths = null,
    Object? nationalId = null,
    Object? bank = freezed,
    Object? active = null,
    Object? archived = null,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        roleId: freezed == roleId
            ? _value.roleId
            : roleId // ignore: cast_nullable_to_non_nullable
                  as String?,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        workStartDate: freezed == workStartDate
            ? _value.workStartDate
            : workStartDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        contractEndDate: freezed == contractEndDate
            ? _value.contractEndDate
            : contractEndDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        image: null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumberCountryCode: null == phoneNumberCountryCode
            ? _value.phoneNumberCountryCode
            : phoneNumberCountryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        birthDate: freezed == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        maritalStatus: null == maritalStatus
            ? _value.maritalStatus
            : maritalStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        departmentId: null == departmentId
            ? _value.departmentId
            : departmentId // ignore: cast_nullable_to_non_nullable
                  as String,
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as String,
        jobTitle: null == jobTitle
            ? _value.jobTitle
            : jobTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        basicSalary: null == basicSalary
            ? _value.basicSalary
            : basicSalary // ignore: cast_nullable_to_non_nullable
                  as double,
        contractDurationMonths: null == contractDurationMonths
            ? _value.contractDurationMonths
            : contractDurationMonths // ignore: cast_nullable_to_non_nullable
                  as int,
        nationalId: null == nationalId
            ? _value.nationalId
            : nationalId // ignore: cast_nullable_to_non_nullable
                  as String,
        bank: freezed == bank
            ? _value.bank
            : bank // ignore: cast_nullable_to_non_nullable
                  as BankModel?,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        archived: null == archived
            ? _value.archived
            : archived // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl({
    this.id = '',
    this.roleId,
    this.companyId = '',
    @TimestampSerializer() this.createdAt,
    @TimestampSerializer() this.workStartDate,
    @TimestampSerializer() this.contractEndDate,
    this.name = '',
    this.image = '',
    this.phoneNumberCountryCode = kFallBackCountryCode,
    this.phoneNumber = '',
    this.email = '',
    @TimestampSerializer() this.birthDate,
    this.gender = "",
    this.maritalStatus = "",
    this.departmentId = '',
    this.branchId = '',
    this.jobTitle = '',
    this.basicSalary = 0.0,
    this.contractDurationMonths = 0,
    this.nationalId = '',
    this.bank,
    this.active = true,
    this.archived = false,
  }) : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  String? roleId;
  @override
  @JsonKey()
  String companyId;
  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @TimestampSerializer()
  DateTime? workStartDate;
  @override
  @TimestampSerializer()
  DateTime? contractEndDate;
  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String image;
  @override
  @JsonKey()
  String phoneNumberCountryCode;
  @override
  @JsonKey()
  String phoneNumber;
  @override
  @JsonKey()
  String email;
  @override
  @TimestampSerializer()
  DateTime? birthDate;
  @override
  @JsonKey()
  String gender;
  @override
  @JsonKey()
  String maritalStatus;
  @override
  @JsonKey()
  String departmentId;
  @override
  @JsonKey()
  String branchId;
  @override
  @JsonKey()
  String jobTitle;
  @override
  @JsonKey()
  double basicSalary;
  @override
  @JsonKey()
  int contractDurationMonths;
  @override
  @JsonKey()
  String nationalId;
  @override
  BankModel? bank;
  @override
  @JsonKey()
  bool active;
  @override
  @JsonKey()
  bool archived;

  @override
  String toString() {
    return 'UserModel(id: $id, roleId: $roleId, companyId: $companyId, createdAt: $createdAt, workStartDate: $workStartDate, contractEndDate: $contractEndDate, name: $name, image: $image, phoneNumberCountryCode: $phoneNumberCountryCode, phoneNumber: $phoneNumber, email: $email, birthDate: $birthDate, gender: $gender, maritalStatus: $maritalStatus, departmentId: $departmentId, branchId: $branchId, jobTitle: $jobTitle, basicSalary: $basicSalary, contractDurationMonths: $contractDurationMonths, nationalId: $nationalId, bank: $bank, active: $active, archived: $archived)';
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel({
    String id,
    String? roleId,
    String companyId,
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? workStartDate,
    @TimestampSerializer() DateTime? contractEndDate,
    String name,
    String image,
    String phoneNumberCountryCode,
    String phoneNumber,
    String email,
    @TimestampSerializer() DateTime? birthDate,
    String gender,
    String maritalStatus,
    String departmentId,
    String branchId,
    String jobTitle,
    double basicSalary,
    int contractDurationMonths,
    String nationalId,
    BankModel? bank,
    bool active,
    bool archived,
  }) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String? get roleId;
  set roleId(String? value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get workStartDate;
  @TimestampSerializer()
  set workStartDate(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get contractEndDate;
  @TimestampSerializer()
  set contractEndDate(DateTime? value);
  @override
  String get name;
  set name(String value);
  @override
  String get image;
  set image(String value);
  @override
  String get phoneNumberCountryCode;
  set phoneNumberCountryCode(String value);
  @override
  String get phoneNumber;
  set phoneNumber(String value);
  @override
  String get email;
  set email(String value);
  @override
  @TimestampSerializer()
  DateTime? get birthDate;
  @TimestampSerializer()
  set birthDate(DateTime? value);
  @override
  String get gender;
  set gender(String value);
  @override
  String get maritalStatus;
  set maritalStatus(String value);
  @override
  String get departmentId;
  set departmentId(String value);
  @override
  String get branchId;
  set branchId(String value);
  @override
  String get jobTitle;
  set jobTitle(String value);
  @override
  double get basicSalary;
  set basicSalary(double value);
  @override
  int get contractDurationMonths;
  set contractDurationMonths(int value);
  @override
  String get nationalId;
  set nationalId(String value);
  @override
  BankModel? get bank;
  set bank(BankModel? value);
  @override
  bool get active;
  set active(bool value);
  @override
  bool get archived;
  set archived(bool value);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BankModel _$BankModelFromJson(Map<String, dynamic> json) {
  return _BankModel.fromJson(json);
}

/// @nodoc
mixin _$BankModel {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  set branch(String value) => throw _privateConstructorUsedError;
  String get iban => throw _privateConstructorUsedError;
  set iban(String value) => throw _privateConstructorUsedError;

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankModelCopyWith<BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) then) =
      _$BankModelCopyWithImpl<$Res, BankModel>;
  @useResult
  $Res call({String name, String branch, String iban});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res, $Val extends BankModel>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? branch = null, Object? iban = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            branch: null == branch
                ? _value.branch
                : branch // ignore: cast_nullable_to_non_nullable
                      as String,
            iban: null == iban
                ? _value.iban
                : iban // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BankModelImplCopyWith<$Res>
    implements $BankModelCopyWith<$Res> {
  factory _$$BankModelImplCopyWith(
    _$BankModelImpl value,
    $Res Function(_$BankModelImpl) then,
  ) = __$$BankModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String branch, String iban});
}

/// @nodoc
class __$$BankModelImplCopyWithImpl<$Res>
    extends _$BankModelCopyWithImpl<$Res, _$BankModelImpl>
    implements _$$BankModelImplCopyWith<$Res> {
  __$$BankModelImplCopyWithImpl(
    _$BankModelImpl _value,
    $Res Function(_$BankModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? branch = null, Object? iban = null}) {
    return _then(
      _$BankModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        branch: null == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as String,
        iban: null == iban
            ? _value.iban
            : iban // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BankModelImpl implements _BankModel {
  _$BankModelImpl({this.name = '', this.branch = '', this.iban = ''});

  factory _$BankModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankModelImplFromJson(json);

  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String branch;
  @override
  @JsonKey()
  String iban;

  @override
  String toString() {
    return 'BankModel(name: $name, branch: $branch, iban: $iban)';
  }

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      __$$BankModelImplCopyWithImpl<_$BankModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankModelImplToJson(this);
  }
}

abstract class _BankModel implements BankModel {
  factory _BankModel({String name, String branch, String iban}) =
      _$BankModelImpl;

  factory _BankModel.fromJson(Map<String, dynamic> json) =
      _$BankModelImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  String get branch;
  set branch(String value);
  @override
  String get iban;
  set iban(String value);

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
