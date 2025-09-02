// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentModelImpl _$$DepartmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$DepartmentModelImpl(
  createdAt: DateTime.parse(json['createdAt'] as String),
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  companyId: json['companyId'] as String? ?? '',
  branchId: json['branchId'] as String? ?? '',
  managerId: json['managerId'] as String? ?? '',
);

Map<String, dynamic> _$$DepartmentModelImplToJson(
  _$DepartmentModelImpl instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'id': instance.id,
  'name': instance.name,
  'companyId': instance.companyId,
  'branchId': instance.branchId,
  'managerId': instance.managerId,
};
