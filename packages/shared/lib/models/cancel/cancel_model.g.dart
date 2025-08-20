// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CancelModelImpl _$$CancelModelImplFromJson(Map<String, dynamic> json) =>
    _$CancelModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      reasonId: json['reasonId'] as String?,
      note: json['note'] as String?,
      canceledBy: json['canceledBy'] as String?,
      roleId: json['roleId'] as String?,
    );

Map<String, dynamic> _$$CancelModelImplToJson(_$CancelModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'reasonId': instance.reasonId,
      'note': instance.note,
      'canceledBy': instance.canceledBy,
      'roleId': instance.roleId,
    };
