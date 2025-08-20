// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_center_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallCenterModelImpl _$$CallCenterModelImplFromJson(
  Map<String, dynamic> json,
) => _$CallCenterModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  phoneNumber: json['phoneNumber'] as String?,
  phoneCountryCode: json['phoneCountryCode'] as String? ?? kFallBackCountryCode,
  displayName: json['displayName'] as String?,
  areaId: json['areaId'] as String?,
  additionalDirections: json['additionalDirections'] as String?,
  orderType: json['orderType'] as String? ?? OrderType.defaultValue,
);

Map<String, dynamic> _$$CallCenterModelImplToJson(
  _$CallCenterModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'phoneNumber': instance.phoneNumber,
  'phoneCountryCode': instance.phoneCountryCode,
  'displayName': instance.displayName,
  'areaId': instance.areaId,
  'additionalDirections': instance.additionalDirections,
  'orderType': instance.orderType,
};

_$DeliveryAreaModelImpl _$$DeliveryAreaModelImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryAreaModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  id: json['id'] as String? ?? "",
  name: json['name'] as String? ?? "",
  deliveryFee: (json['deliveryFee'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$$DeliveryAreaModelImplToJson(
  _$DeliveryAreaModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'id': instance.id,
  'name': instance.name,
  'deliveryFee': instance.deliveryFee,
};
