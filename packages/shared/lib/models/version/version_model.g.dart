// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionModelImpl _$$VersionModelImplFromJson(Map<String, dynamic> json) =>
    _$VersionModelImpl(
      branchesVersion: json['branchesVersion'] as String? ?? "0",
      departmentsVersion: json['departmentsVersion'] as String? ?? "0",
      usersVersion: json['usersVersion'] as String? ?? "0",
      citiesVersion: json['citiesVersion'] as String? ?? "0",
    );

Map<String, dynamic> _$$VersionModelImplToJson(_$VersionModelImpl instance) =>
    <String, dynamic>{
      'branchesVersion': instance.branchesVersion,
      'departmentsVersion': instance.departmentsVersion,
      'usersVersion': instance.usersVersion,
      'citiesVersion': instance.citiesVersion,
    };
