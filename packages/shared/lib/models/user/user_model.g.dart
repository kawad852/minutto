// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  id: json['id'] as String?,
  companyId: json['companyId'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  deviceTokens:
      (json['deviceTokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  username: json['username'] as String?,
  languageCode: json['languageCode'] as String?,
  blocked: json['blocked'] as bool? ?? false,
  deliveryAddress: json['deliveryAddress'] == null
      ? null
      : AddressModel.fromJson(json['deliveryAddress'] as Map<String, dynamic>),
  pickupInfo: json['pickupInfo'] == null
      ? null
      : PickUpInfoModel.fromJson(json['pickupInfo'] as Map<String, dynamic>),
  phoneCountryCode: json['phoneCountryCode'] as String?,
  phoneNum: json['phoneNum'] as String?,
  roleId: json['roleId'] as String?,
  storeId: json['storeId'] as String?,
  userToken: json['userToken'] as String?,
  password: json['password'] as String?,
  rewardPoints: (json['rewardPoints'] as num?)?.toInt() ?? 0,
  favoriteIds:
      (json['favoriteIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  recentSearches:
      (json['recentSearches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'companyId': instance.companyId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'deviceTokens': instance.deviceTokens,
      'username': instance.username,
      'languageCode': instance.languageCode,
      'blocked': instance.blocked,
      'deliveryAddress': instance.deliveryAddress?.toJson(),
      'pickupInfo': instance.pickupInfo?.toJson(),
      'phoneCountryCode': instance.phoneCountryCode,
      'phoneNum': instance.phoneNum,
      'roleId': instance.roleId,
      'storeId': instance.storeId,
      'userToken': instance.userToken,
      'password': instance.password,
      'rewardPoints': instance.rewardPoints,
      'favoriteIds': instance.favoriteIds,
      'recentSearches': instance.recentSearches,
    };
