// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverModelImpl _$$DriverModelImplFromJson(Map<String, dynamic> json) =>
    _$DriverModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String? ?? "",
      firstNameEn: json['firstNameEn'] as String? ?? "",
      firstNameAr: json['firstNameAr'] as String? ?? "",
      lastNameEn: json['lastNameEn'] as String? ?? "",
      lastNameAr: json['lastNameAr'] as String? ?? "",
      phoneNum: json['phoneNum'] as String? ?? "",
      phoneCountryCode: json['phoneCountryCode'] as String? ?? "",
      geoLoc: GeoLocModel.fromJson(json['_geoloc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverModelImplToJson(_$DriverModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'firstNameEn': instance.firstNameEn,
      'firstNameAr': instance.firstNameAr,
      'lastNameEn': instance.lastNameEn,
      'lastNameAr': instance.lastNameAr,
      'phoneNum': instance.phoneNum,
      'phoneCountryCode': instance.phoneCountryCode,
      '_geoloc': instance.geoLoc,
    };
