// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_assignment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftAssignmentModelImpl _$$ShiftAssignmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$ShiftAssignmentModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  id: json['id'] as String? ?? '',
  userId: json['userId'] as String? ?? '',
  shiftId: json['shiftId'] as String? ?? '',
);

Map<String, dynamic> _$$ShiftAssignmentModelImplToJson(
  _$ShiftAssignmentModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'id': instance.id,
  'userId': instance.userId,
  'shiftId': instance.shiftId,
};
