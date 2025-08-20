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
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  set firstName(String? value) => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  set lastName(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  List<String> get deviceTokens => throw _privateConstructorUsedError;
  set deviceTokens(List<String> value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;
  set languageCode(String? value) => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  set blocked(bool value) => throw _privateConstructorUsedError;
  AddressModel? get deliveryAddress => throw _privateConstructorUsedError;
  set deliveryAddress(AddressModel? value) =>
      throw _privateConstructorUsedError;
  PickUpInfoModel? get pickupInfo => throw _privateConstructorUsedError;
  set pickupInfo(PickUpInfoModel? value) => throw _privateConstructorUsedError;
  String? get phoneCountryCode => throw _privateConstructorUsedError;
  set phoneCountryCode(String? value) => throw _privateConstructorUsedError;
  String? get phoneNum => throw _privateConstructorUsedError;
  set phoneNum(String? value) => throw _privateConstructorUsedError;
  String? get roleId => throw _privateConstructorUsedError;
  set roleId(String? value) => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  set storeId(String? value) => throw _privateConstructorUsedError;
  String? get userToken => throw _privateConstructorUsedError;
  set userToken(String? value) => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  set password(String? value) => throw _privateConstructorUsedError;
  int get rewardPoints => throw _privateConstructorUsedError;
  set rewardPoints(int value) => throw _privateConstructorUsedError;
  List<String> get favoriteIds => throw _privateConstructorUsedError;
  set favoriteIds(List<String> value) => throw _privateConstructorUsedError;
  List<String> get recentSearches => throw _privateConstructorUsedError;
  set recentSearches(List<String> value) => throw _privateConstructorUsedError;

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
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    List<String> deviceTokens,
    String? username,
    String? languageCode,
    bool blocked,
    AddressModel? deliveryAddress,
    PickUpInfoModel? pickupInfo,
    String? phoneCountryCode,
    String? phoneNum,
    String? roleId,
    String? storeId,
    String? userToken,
    String? password,
    int rewardPoints,
    List<String> favoriteIds,
    List<String> recentSearches,
  });

  $AddressModelCopyWith<$Res>? get deliveryAddress;
  $PickUpInfoModelCopyWith<$Res>? get pickupInfo;
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
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? deviceTokens = null,
    Object? username = freezed,
    Object? languageCode = freezed,
    Object? blocked = null,
    Object? deliveryAddress = freezed,
    Object? pickupInfo = freezed,
    Object? phoneCountryCode = freezed,
    Object? phoneNum = freezed,
    Object? roleId = freezed,
    Object? storeId = freezed,
    Object? userToken = freezed,
    Object? password = freezed,
    Object? rewardPoints = null,
    Object? favoriteIds = null,
    Object? recentSearches = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            deviceTokens: null == deviceTokens
                ? _value.deviceTokens
                : deviceTokens // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
            languageCode: freezed == languageCode
                ? _value.languageCode
                : languageCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            blocked: null == blocked
                ? _value.blocked
                : blocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            deliveryAddress: freezed == deliveryAddress
                ? _value.deliveryAddress
                : deliveryAddress // ignore: cast_nullable_to_non_nullable
                      as AddressModel?,
            pickupInfo: freezed == pickupInfo
                ? _value.pickupInfo
                : pickupInfo // ignore: cast_nullable_to_non_nullable
                      as PickUpInfoModel?,
            phoneCountryCode: freezed == phoneCountryCode
                ? _value.phoneCountryCode
                : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneNum: freezed == phoneNum
                ? _value.phoneNum
                : phoneNum // ignore: cast_nullable_to_non_nullable
                      as String?,
            roleId: freezed == roleId
                ? _value.roleId
                : roleId // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userToken: freezed == userToken
                ? _value.userToken
                : userToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
            rewardPoints: null == rewardPoints
                ? _value.rewardPoints
                : rewardPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            favoriteIds: null == favoriteIds
                ? _value.favoriteIds
                : favoriteIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            recentSearches: null == recentSearches
                ? _value.recentSearches
                : recentSearches // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PickUpInfoModelCopyWith<$Res>? get pickupInfo {
    if (_value.pickupInfo == null) {
      return null;
    }

    return $PickUpInfoModelCopyWith<$Res>(_value.pickupInfo!, (value) {
      return _then(_value.copyWith(pickupInfo: value) as $Val);
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
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    List<String> deviceTokens,
    String? username,
    String? languageCode,
    bool blocked,
    AddressModel? deliveryAddress,
    PickUpInfoModel? pickupInfo,
    String? phoneCountryCode,
    String? phoneNum,
    String? roleId,
    String? storeId,
    String? userToken,
    String? password,
    int rewardPoints,
    List<String> favoriteIds,
    List<String> recentSearches,
  });

  @override
  $AddressModelCopyWith<$Res>? get deliveryAddress;
  @override
  $PickUpInfoModelCopyWith<$Res>? get pickupInfo;
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
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? deviceTokens = null,
    Object? username = freezed,
    Object? languageCode = freezed,
    Object? blocked = null,
    Object? deliveryAddress = freezed,
    Object? pickupInfo = freezed,
    Object? phoneCountryCode = freezed,
    Object? phoneNum = freezed,
    Object? roleId = freezed,
    Object? storeId = freezed,
    Object? userToken = freezed,
    Object? password = freezed,
    Object? rewardPoints = null,
    Object? favoriteIds = null,
    Object? recentSearches = null,
  }) {
    return _then(
      _$UserModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        deviceTokens: null == deviceTokens
            ? _value.deviceTokens
            : deviceTokens // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        languageCode: freezed == languageCode
            ? _value.languageCode
            : languageCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        blocked: null == blocked
            ? _value.blocked
            : blocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        deliveryAddress: freezed == deliveryAddress
            ? _value.deliveryAddress
            : deliveryAddress // ignore: cast_nullable_to_non_nullable
                  as AddressModel?,
        pickupInfo: freezed == pickupInfo
            ? _value.pickupInfo
            : pickupInfo // ignore: cast_nullable_to_non_nullable
                  as PickUpInfoModel?,
        phoneCountryCode: freezed == phoneCountryCode
            ? _value.phoneCountryCode
            : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNum: freezed == phoneNum
            ? _value.phoneNum
            : phoneNum // ignore: cast_nullable_to_non_nullable
                  as String?,
        roleId: freezed == roleId
            ? _value.roleId
            : roleId // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userToken: freezed == userToken
            ? _value.userToken
            : userToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
        rewardPoints: null == rewardPoints
            ? _value.rewardPoints
            : rewardPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        favoriteIds: null == favoriteIds
            ? _value.favoriteIds
            : favoriteIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        recentSearches: null == recentSearches
            ? _value.recentSearches
            : recentSearches // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.deviceTokens = const [],
    this.username,
    this.languageCode,
    this.blocked = false,
    this.deliveryAddress,
    this.pickupInfo,
    this.phoneCountryCode,
    this.phoneNum,
    this.roleId,
    this.storeId,
    this.userToken,
    this.password,
    this.rewardPoints = 0,
    this.favoriteIds = const [],
    this.recentSearches = const [],
  }) : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  String? id;
  @override
  String? firstName;
  @override
  String? lastName;
  @override
  String? email;
  @override
  @JsonKey()
  List<String> deviceTokens;
  @override
  String? username;
  @override
  String? languageCode;
  @override
  @JsonKey()
  bool blocked;
  @override
  AddressModel? deliveryAddress;
  @override
  PickUpInfoModel? pickupInfo;
  @override
  String? phoneCountryCode;
  @override
  String? phoneNum;
  @override
  String? roleId;
  @override
  String? storeId;
  @override
  String? userToken;
  @override
  String? password;
  @override
  @JsonKey()
  int rewardPoints;
  @override
  @JsonKey()
  List<String> favoriteIds;
  @override
  @JsonKey()
  List<String> recentSearches;

  @override
  String toString() {
    return 'UserModel(createdAt: $createdAt, id: $id, firstName: $firstName, lastName: $lastName, email: $email, deviceTokens: $deviceTokens, username: $username, languageCode: $languageCode, blocked: $blocked, deliveryAddress: $deliveryAddress, pickupInfo: $pickupInfo, phoneCountryCode: $phoneCountryCode, phoneNum: $phoneNum, roleId: $roleId, storeId: $storeId, userToken: $userToken, password: $password, rewardPoints: $rewardPoints, favoriteIds: $favoriteIds, recentSearches: $recentSearches)';
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
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    List<String> deviceTokens,
    String? username,
    String? languageCode,
    bool blocked,
    AddressModel? deliveryAddress,
    PickUpInfoModel? pickupInfo,
    String? phoneCountryCode,
    String? phoneNum,
    String? roleId,
    String? storeId,
    String? userToken,
    String? password,
    int rewardPoints,
    List<String> favoriteIds,
    List<String> recentSearches,
  }) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String? get id;
  set id(String? value);
  @override
  String? get firstName;
  set firstName(String? value);
  @override
  String? get lastName;
  set lastName(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  List<String> get deviceTokens;
  set deviceTokens(List<String> value);
  @override
  String? get username;
  set username(String? value);
  @override
  String? get languageCode;
  set languageCode(String? value);
  @override
  bool get blocked;
  set blocked(bool value);
  @override
  AddressModel? get deliveryAddress;
  set deliveryAddress(AddressModel? value);
  @override
  PickUpInfoModel? get pickupInfo;
  set pickupInfo(PickUpInfoModel? value);
  @override
  String? get phoneCountryCode;
  set phoneCountryCode(String? value);
  @override
  String? get phoneNum;
  set phoneNum(String? value);
  @override
  String? get roleId;
  set roleId(String? value);
  @override
  String? get storeId;
  set storeId(String? value);
  @override
  String? get userToken;
  set userToken(String? value);
  @override
  String? get password;
  set password(String? value);
  @override
  int get rewardPoints;
  set rewardPoints(int value);
  @override
  List<String> get favoriteIds;
  set favoriteIds(List<String> value);
  @override
  List<String> get recentSearches;
  set recentSearches(List<String> value);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
