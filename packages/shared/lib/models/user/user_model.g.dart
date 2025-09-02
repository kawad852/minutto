// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String? ?? '',
      roleId: json['roleId'] as String?,
      companyId: json['companyId'] as String? ?? '',
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      workStartDate: const TimestampSerializer().fromJson(
        json['workStartDate'],
      ),
      contractEndDate: const TimestampSerializer().fromJson(
        json['contractEndDate'],
      ),
      fullName: json['fullName'] as String? ?? '',
      phoneNumberCountryCode:
          json['phoneNumberCountryCode'] as String? ?? kFallBackCountryCode,
      phoneNumber: json['phoneNumber'] as String? ?? '',
      email: json['email'] as String? ?? '',
      birthDate: const TimestampSerializer().fromJson(json['birthDate']),
      gender: json['gender'] as String? ?? "",
      maritalStatus: json['maritalStatus'] as String? ?? "",
      departmentId: json['departmentId'] as String? ?? '',
      branchId: json['branchId'] as String? ?? '',
      jobTitle: json['jobTitle'] as String? ?? '',
      basicSalary: (json['basicSalary'] as num?)?.toDouble() ?? 0.0,
      contractDurationMonths:
          (json['contractDurationMonths'] as num?)?.toInt() ?? 0,
      nationalId: json['nationalId'] as String? ?? '',
      bank: json['bank'] == null
          ? null
          : BankModel.fromJson(json['bank'] as Map<String, dynamic>),
      active: json['active'] as bool? ?? true,
      archived: json['archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(
  _$UserModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'roleId': instance.roleId,
  'companyId': instance.companyId,
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'workStartDate': const TimestampSerializer().toJson(instance.workStartDate),
  'contractEndDate': const TimestampSerializer().toJson(
    instance.contractEndDate,
  ),
  'fullName': instance.fullName,
  'phoneNumberCountryCode': instance.phoneNumberCountryCode,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
  'birthDate': const TimestampSerializer().toJson(instance.birthDate),
  'gender': instance.gender,
  'maritalStatus': instance.maritalStatus,
  'departmentId': instance.departmentId,
  'branchId': instance.branchId,
  'jobTitle': instance.jobTitle,
  'basicSalary': instance.basicSalary,
  'contractDurationMonths': instance.contractDurationMonths,
  'nationalId': instance.nationalId,
  'bank': instance.bank?.toJson(),
  'active': instance.active,
  'archived': instance.archived,
};

_$BankModelImpl _$$BankModelImplFromJson(Map<String, dynamic> json) =>
    _$BankModelImpl(
      name: json['name'] as String? ?? '',
      branch: json['branch'] as String? ?? '',
      iban: json['iban'] as String? ?? '',
    );

Map<String, dynamic> _$$BankModelImplToJson(_$BankModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'branch': instance.branch,
      'iban': instance.iban,
    };
