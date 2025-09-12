// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserModelImpl(
  id: json['id'] as String? ?? '',
  roleId: json['roleId'] as String?,
  companyId: json['companyId'] as String? ?? '',
  shiftId: json['shiftId'] as String? ?? '',
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  workStartDate: const TimestampSerializer().fromJson(json['workStartDate']),
  contractEndDate: const TimestampSerializer().fromJson(
    json['contractEndDate'],
  ),
  name: json['name'] as String? ?? '',
  profileImage: json['profileImage'] as String? ?? '',
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
  status: json['status'] as String? ?? UserStatusEnum.defaultValue,
  basicSalary: (json['basicSalary'] as num?)?.toDouble() ?? 0.0,
  contractDurationMonths:
      (json['contractDurationMonths'] as num?)?.toInt() ?? 0,
  maxYearlyVacationsDays:
      (json['maxYearlyVacationsDays'] as num?)?.toInt() ?? 0,
  maxYearlyLeavesDays: (json['maxYearlyLeavesDays'] as num?)?.toInt() ?? 0,
  maxSickLeaveDays: (json['maxSickLeaveDays'] as num?)?.toInt() ?? 0,
  maxBreakHoursPerYear: (json['maxBreakHoursPerYear'] as num?)?.toInt() ?? 0,
  nationalId: json['nationalId'] as String? ?? '',
  bank: json['bank'] == null
      ? null
      : BankModel.fromJson(json['bank'] as Map<String, dynamic>),
  archived: json['archived'] as bool? ?? false,
  deviceTokens:
      (json['deviceTokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$$UserModelImplToJson(
  _$UserModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'roleId': instance.roleId,
  'companyId': instance.companyId,
  'shiftId': instance.shiftId,
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'workStartDate': const TimestampSerializer().toJson(instance.workStartDate),
  'contractEndDate': const TimestampSerializer().toJson(
    instance.contractEndDate,
  ),
  'name': instance.name,
  'profileImage': instance.profileImage,
  'phoneNumberCountryCode': instance.phoneNumberCountryCode,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
  'birthDate': const TimestampSerializer().toJson(instance.birthDate),
  'gender': instance.gender,
  'maritalStatus': instance.maritalStatus,
  'departmentId': instance.departmentId,
  'branchId': instance.branchId,
  'jobTitle': instance.jobTitle,
  'status': instance.status,
  'basicSalary': instance.basicSalary,
  'contractDurationMonths': instance.contractDurationMonths,
  'maxYearlyVacationsDays': instance.maxYearlyVacationsDays,
  'maxYearlyLeavesDays': instance.maxYearlyLeavesDays,
  'maxSickLeaveDays': instance.maxSickLeaveDays,
  'maxBreakHoursPerYear': instance.maxBreakHoursPerYear,
  'nationalId': instance.nationalId,
  'bank': instance.bank?.toJson(),
  'archived': instance.archived,
  'deviceTokens': instance.deviceTokens,
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
