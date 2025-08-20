// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeAnalyticsModelImpl _$$HomeAnalyticsModelImplFromJson(
  Map<String, dynamic> json,
) => _$HomeAnalyticsModelImpl(
  totalOrders: (json['totalOrders'] as num?)?.toInt() ?? 0,
  totalRevenues: (json['totalRevenues'] as num?)?.toDouble() ?? 0.0,
  preparingCount: (json['preparingCount'] as num?)?.toInt() ?? 0,
  readyCount: (json['readyCount'] as num?)?.toInt() ?? 0,
  outForDeliveryCount: (json['outForDeliveryCount'] as num?)?.toInt() ?? 0,
  completedCount: (json['completedCount'] as num?)?.toInt() ?? 0,
  deliveryCount: (json['deliveryCount'] as num?)?.toInt() ?? 0,
  pickupCount: (json['pickupCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$HomeAnalyticsModelImplToJson(
  _$HomeAnalyticsModelImpl instance,
) => <String, dynamic>{
  'totalOrders': instance.totalOrders,
  'totalRevenues': instance.totalRevenues,
  'preparingCount': instance.preparingCount,
  'readyCount': instance.readyCount,
  'outForDeliveryCount': instance.outForDeliveryCount,
  'completedCount': instance.completedCount,
  'deliveryCount': instance.deliveryCount,
  'pickupCount': instance.pickupCount,
};
