// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchModelImpl _$$BranchModelImplFromJson(Map<String, dynamic> json) =>
    _$BranchModelImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      email: json['email'] as String? ?? '',
      cityId: json['cityId'] as String? ?? '',
      phoneNumberCountryCode:
          json['phoneNumberCountryCode'] as String? ?? kFallBackCountryCode,
      phoneNumber: json['phoneNumber'] as String? ?? '',
      startWorkingHour: json['startWorkingHour'] as String? ?? '',
      endWorkingHour: json['endWorkingHour'] as String? ?? '',
    );

Map<String, dynamic> _$$BranchModelImplToJson(_$BranchModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'companyId': instance.companyId,
      'email': instance.email,
      'cityId': instance.cityId,
      'phoneNumberCountryCode': instance.phoneNumberCountryCode,
      'phoneNumber': instance.phoneNumber,
      'startWorkingHour': instance.startWorkingHour,
      'endWorkingHour': instance.endWorkingHour,
    };
