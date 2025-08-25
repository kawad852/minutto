// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      statusUpdateTime: const TimestampSerializer().fromJson(
        json['statusUpdateTime'],
      ),
      id: json['id'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      type: json['type'] as String? ?? "DELIVERY",
      basket: (json['basket'] as List<dynamic>?)
          ?.map((e) => BasketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      promoCode: json['promoCode'] == null
          ? null
          : PromoCodeModel.fromJson(json['promoCode'] as Map<String, dynamic>),
      status: json['status'] as String? ?? OrderStatusEnum.defaultValue,
      deliveryFee: (json['deliveryFee'] as num?)?.toDouble() ?? 0.0,
      rewardsDiscount: (json['rewardsDiscount'] as num?)?.toDouble() ?? 0.0,
      promoCodeDiscount: (json['promoCodeDiscount'] as num?)?.toDouble() ?? 0.0,
      totalDiscount: (json['totalDiscount'] as num?)?.toDouble() ?? 0.0,
      basketTotal: (json['basketTotal'] as num?)?.toDouble() ?? 0.0,
      orderTotal: (json['orderTotal'] as num?)?.toDouble() ?? 0.0,
      driverId: json['driverId'] as String?,
      storeProfit: (json['storeProfit'] as num?)?.toDouble(),
      rated: json['rated'] as bool? ?? false,
      rewardPoints: (json['rewardPoints'] as num?)?.toInt() ?? 0,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      rider: json['rider'] == null
          ? null
          : RiderModel.fromJson(json['rider'] as Map<String, dynamic>),
      foodStore: json['foodStore'] == null
          ? null
          : FoodStoreModel.fromJson(json['foodStore'] as Map<String, dynamic>),
      callCenter: json['callCenter'] == null
          ? null
          : CallCenterModel.fromJson(
              json['callCenter'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'statusUpdateTime': const TimestampSerializer().toJson(
        instance.statusUpdateTime,
      ),
      'id': instance.id,
      'paymentMethod': instance.paymentMethod,
      'type': instance.type,
      'basket': instance.basket,
      'promoCode': instance.promoCode,
      'status': instance.status,
      'deliveryFee': instance.deliveryFee,
      'rewardsDiscount': instance.rewardsDiscount,
      'promoCodeDiscount': instance.promoCodeDiscount,
      'totalDiscount': instance.totalDiscount,
      'basketTotal': instance.basketTotal,
      'orderTotal': instance.orderTotal,
      'driverId': instance.driverId,
      'storeProfit': instance.storeProfit,
      'rated': instance.rated,
      'rewardPoints': instance.rewardPoints,
      'user': instance.user,
      'rider': instance.rider,
      'foodStore': instance.foodStore,
      'callCenter': instance.callCenter,
    };

_$RiderModelImpl _$$RiderModelImplFromJson(Map<String, dynamic> json) =>
    _$RiderModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String?,
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
    );

Map<String, dynamic> _$$RiderModelImplToJson(_$RiderModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
