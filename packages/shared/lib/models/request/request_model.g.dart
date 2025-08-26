// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    _$RequestModelImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromDate: DateTime.parse(json['fromDate'] as String),
      toDate: DateTime.parse(json['toDate'] as String),
      date: DateTime.parse(json['date'] as String),
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      type: json['type'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      reason: json['reason'] as String? ?? '',
      status: json['status'] as String? ?? StatusEnum.defaultValue,
      notes: json['notes'] as String?,
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'fromDate': instance.fromDate.toIso8601String(),
      'toDate': instance.toDate.toIso8601String(),
      'date': instance.date.toIso8601String(),
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'companyId': instance.companyId,
      'reason': instance.reason,
      'status': instance.status,
      'notes': instance.notes,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
    };
