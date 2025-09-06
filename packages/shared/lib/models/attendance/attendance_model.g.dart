// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceModelImpl(
  checkIn: const TimestampSerializer().fromJson(json['checkIn']),
  checkOut: const TimestampSerializer().fromJson(json['checkOut']),
  id: json['id'] as String? ?? '',
);

Map<String, dynamic> _$$AttendanceModelImplToJson(
  _$AttendanceModelImpl instance,
) => <String, dynamic>{
  'checkIn': const TimestampSerializer().toJson(instance.checkIn),
  'checkOut': const TimestampSerializer().toJson(instance.checkOut),
  'id': instance.id,
};
