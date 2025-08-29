// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    _$RequestModelImpl(
      createdAt: DateTime.parse(json['createdAt'] as String),
      fromDate: const TimestampSerializer().fromJson(json['fromDate']),
      toDate: const TimestampSerializer().fromJson(json['toDate']),
      date: const TimestampSerializer().fromJson(json['date']),
      id: json['id'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      type: json['type'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      reason: json['reason'] as String?,
      fromHour: json['fromHour'] as String?,
      toHour: json['toHour'] as String?,
      status: json['status'] as String? ?? StatusEnum.defaultValue,
      notes: json['notes'] as String?,
      adminNotes: json['adminNotes'] as String?,
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'fromDate': const TimestampSerializer().toJson(instance.fromDate),
      'toDate': const TimestampSerializer().toJson(instance.toDate),
      'date': const TimestampSerializer().toJson(instance.date),
      'id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'companyId': instance.companyId,
      'reason': instance.reason,
      'fromHour': instance.fromHour,
      'toHour': instance.toHour,
      'status': instance.status,
      'notes': instance.notes,
      'adminNotes': instance.adminNotes,
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
    };
