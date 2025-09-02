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
    );

Map<String, dynamic> _$$BranchModelImplToJson(_$BranchModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'companyId': instance.companyId,
    };
