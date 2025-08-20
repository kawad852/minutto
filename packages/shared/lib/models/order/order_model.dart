import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../shared.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@unfreezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusUpdateTime,
    String? id,
    String? paymentMethod,
    @Default("DELIVERY") String type,
    List<BasketModel>? basket,
    PromoCodeModel? promoCode,
    @Default(OrderStatusEnum.defaultValue) String status,
    @Default(0.0) double deliveryFee,
    @Default(0.0) double rewardsDiscount,
    @Default(0.0) double promoCodeDiscount,
    @Default(0.0) double totalDiscount,
    @Default(0.0) double basketTotal,
    @Default(0.0) double orderTotal,
    String? driverId,
    double? storeProfit,
    @Default(false) bool rated,
    @Default(0) int rewardPoints,
    UserModel? user,
    RiderModel? rider,
    FoodStoreModel? foodStore,
    CallCenterModel? callCenter,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  OrderModel._();

  String get displayName {
    final deliveryAddress =
        user?.deliveryAddress ??
        AddressModel(
          firstName: callCenter?.displayName,
          area: callCenter?.area.name,
          additionalDirections: callCenter?.additionalDirections,
        );
    final pickupInfo = user?.pickupInfo;
    final firstName = deliveryAddress.firstName ?? pickupInfo?.firstName;
    final lastName = deliveryAddress.lastName ?? pickupInfo?.lastName;
    final displayName = "$firstName ${lastName ?? ""}";
    return displayName;
  }

  String get areaName {
    return user?.deliveryAddress?.area ?? callCenter?.area.name ?? "";
  }

  OrderStatusEnum get statusEnum {
    return OrderStatusEnum.values.firstWhere((e) => e.value == status);
  }

  void calculatePricing({required double basketTotal, LatLng? storeLatLng, LatLng? userLatLng}) {
    ///Basket Total
    this.basketTotal = basketTotal;

    ///DeliveryFee
    calculateDeliveryFee(userLatLng: userLatLng, storeLatLng: storeLatLng);

    ///PromoCode
    if (promoCode != null) {
      final value = (promoCode!.amount ?? (basketTotal * (promoCode!.percent ?? 0.0) / 100));
      promoCodeDiscount = value;
    }

    ///Rewards
    rewardsDiscount = RewardsService.calculateDiscountFromPoints(rewardPoints);

    ///Order Total
    final totalDiscounts = promoCodeDiscount + rewardsDiscount;
    orderTotal = basketTotal + deliveryFee - totalDiscounts;

    ///Store
    final netBasketTotal = basketTotal - totalDiscounts;
    final platformFee = netBasketTotal * 0.10;
    storeProfit = netBasketTotal - platformFee;
  }

  void calculateDeliveryFee({required LatLng? storeLatLng, required LatLng? userLatLng}) {
    if (storeLatLng == null || userLatLng == null) {
      deliveryFee = 2.00;
      return;
    }
    double baseFee = 0.5; // JOD
    double perKmRate = 0.3; // JOD per km
    double distanceInMeter = Geolocator.distanceBetween(
      userLatLng.latitude,
      userLatLng.longitude,
      storeLatLng.latitude,
      storeLatLng.longitude,
    );

    final distanceInKm = distanceInMeter / 1000;
    deliveryFee = (baseFee + (distanceInKm * perKmRate)).roundToDouble();
  }

  void onOrderTypeChange(value) {
    type = value;
    // if (value == OrderType.delivery.value) {
    //   callCenter?.areaId = null;
    //   callCenter?.additionalDirections = null;
    // }
  }
}

@unfreezed
class RiderModel with _$RiderModel {
  factory RiderModel({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    @Default("") String firstName,
    @Default("") String lastName,
  }) = _RiderModel;

  factory RiderModel.fromJson(Map<String, dynamic> json) => _$RiderModelFromJson(json);

  RiderModel._();

  String get displayName {
    return UiHelper.getDisplayName(firstName, lastName);
  }
}
