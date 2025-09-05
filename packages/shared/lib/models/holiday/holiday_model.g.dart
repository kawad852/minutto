// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HolidayModelImpl _$$HolidayModelImplFromJson(Map<String, dynamic> json) =>
    _$HolidayModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      fromDate: const TimestampSerializer().fromJson(json['fromDate']),
      toDate: const TimestampSerializer().fromJson(json['toDate']),
      id: json['id'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      branchIds: (json['branchIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HolidayModelImplToJson(_$HolidayModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'fromDate': const TimestampSerializer().toJson(instance.fromDate),
      'toDate': const TimestampSerializer().toJson(instance.toDate),
      'id': instance.id,
      'companyId': instance.companyId,
      'name': instance.name,
      'branchIds': instance.branchIds,
    };
