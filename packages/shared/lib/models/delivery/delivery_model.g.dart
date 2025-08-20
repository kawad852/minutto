// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryFeeModelImpl _$$DeliveryFeeModelImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryFeeModelImpl(
  id: json['id'] as String?,
  fee: (json['fee'] as num?)?.toDouble(),
  distanceRange: (json['distanceRange'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$DeliveryFeeModelImplToJson(
  _$DeliveryFeeModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fee': instance.fee,
  'distanceRange': instance.distanceRange,
};
