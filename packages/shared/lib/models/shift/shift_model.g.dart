// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftModelImpl _$$ShiftModelImplFromJson(Map<String, dynamic> json) =>
    _$ShiftModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      startHour: json['startHour'] as String? ?? '',
      endHour: json['endHour'] as String? ?? '',
      days:
          (json['days'] as List<dynamic>?)
              ?.map((e) => ShiftDayModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ShiftModelImplToJson(_$ShiftModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'name': instance.name,
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'days': instance.days.map((e) => e.toJson()).toList(),
    };

_$ShiftDayModelImpl _$$ShiftDayModelImplFromJson(Map<String, dynamic> json) =>
    _$ShiftDayModelImpl(
      day: json['day'] as String? ?? '',
      startDate: DateTime.parse(json['startDate'] as String),
      endHour: DateTime.parse(json['endHour'] as String),
    );

Map<String, dynamic> _$$ShiftDayModelImplToJson(_$ShiftDayModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'startDate': instance.startDate.toIso8601String(),
      'endHour': instance.endHour.toIso8601String(),
    };
