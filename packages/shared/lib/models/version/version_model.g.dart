// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionModelImpl _$$VersionModelImplFromJson(Map<String, dynamic> json) =>
    _$VersionModelImpl(
      branchesVersion: (json['branchesVersion'] as num?)?.toInt() ?? 0,
      departmentsVersion: (json['departmentsVersion'] as num?)?.toInt() ?? 0,
      usersVersion: (json['usersVersion'] as num?)?.toInt() ?? 0,
      citiesVersion: (json['citiesVersion'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$VersionModelImplToJson(_$VersionModelImpl instance) =>
    <String, dynamic>{
      'branchesVersion': instance.branchesVersion,
      'departmentsVersion': instance.departmentsVersion,
      'usersVersion': instance.usersVersion,
      'citiesVersion': instance.citiesVersion,
    };
