// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  id: json['id'] as String? ?? '',
  type: json['type'] as String? ?? '',
);

Map<String, dynamic> _$$AttendanceModelImplToJson(
  _$AttendanceModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'id': instance.id,
  'type': instance.type,
};

_$AttendanceSessionImpl _$$AttendanceSessionImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceSessionImpl(
  kind: json['kind'] as String? ?? '',
  start: DateTime.parse(json['start'] as String),
  end: const TimestampSerializer().fromJson(json['end']),
);

Map<String, dynamic> _$$AttendanceSessionImplToJson(
  _$AttendanceSessionImpl instance,
) => <String, dynamic>{
  'kind': instance.kind,
  'start': instance.start.toIso8601String(),
  'end': const TimestampSerializer().toJson(instance.end),
};
