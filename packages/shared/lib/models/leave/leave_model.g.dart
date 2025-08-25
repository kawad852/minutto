// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveModelImpl _$$LeaveModelImplFromJson(Map<String, dynamic> json) =>
    _$LeaveModelImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromDate: DateTime.parse(json['fromDate'] as String),
      toDate: DateTime.parse(json['toDate'] as String),
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      requestType: json['requestType'] as String? ?? '',
      notes: json['notes'] as String?,
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LeaveModelImplToJson(_$LeaveModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'fromDate': instance.fromDate.toIso8601String(),
      'toDate': instance.toDate.toIso8601String(),
      'id': instance.id,
      'userId': instance.userId,
      'companyId': instance.companyId,
      'requestType': instance.requestType,
      'notes': instance.notes,
      'attachments': instance.attachments,
    };
