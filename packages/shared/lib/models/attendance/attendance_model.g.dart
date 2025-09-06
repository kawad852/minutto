// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceModelImpl(
  date: const TimestampSerializer().fromJson(json['date']),
  id: json['id'] as String? ?? '',
);

Map<String, dynamic> _$$AttendanceModelImplToJson(
  _$AttendanceModelImpl instance,
) => <String, dynamic>{
  'date': const TimestampSerializer().toJson(instance.date),
  'id': instance.id,
};
