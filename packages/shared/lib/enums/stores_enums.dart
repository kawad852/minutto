import 'package:flutter/cupertino.dart';
import 'package:shared/helper/translation_extension.dart';

enum MealOptionEnum {
  optional('OPTIONAL'),
  required('REQUIRED');

  final String value;

  const MealOptionEnum(this.value);
}

enum BuildingType {
  house('HOUSE'),
  apartment('APARTMENT'),
  office('OFFICE');

  final String value;

  const BuildingType(this.value);
}

enum AddressPath {
  basketToCheckout('basketToCheckout'),
  back('back');

  final String value;

  const AddressPath(this.value);
}

enum OrderType {
  delivery(defaultValue),
  pickUp('PICKUP');

  final String value;

  const OrderType(this.value);

  static const String defaultValue = "DELIVERY";
}

enum PaymentMethodEnum {
  cash(defaultValue),
  visa('CARD');

  final String value;

  const PaymentMethodEnum(this.value);

  static const String defaultValue = "CASH";

  static String label(BuildContext context, PaymentMethodEnum value) {
    switch (value) {
      case PaymentMethodEnum.cash:
        return context.appLocalization.cash;
      case PaymentMethodEnum.visa:
        return context.appLocalization.card;
    }
  }
}

enum OrderStatusEnum {
  placed(defaultValue),
  preparing("PREPARING"),
  ready('READY'),
  outForDelivery('OUT-FOR-DELIVERY'),
  completed('COMPLETED'),
  canceled('CANCELED');

  final String value;
  static const String defaultValue = "PLACED";

  const OrderStatusEnum(this.value);

  static String label(BuildContext context, OrderStatusEnum statusEnum) {
    switch (statusEnum) {
      case OrderStatusEnum.placed:
        return context.appLocalization.statusPlaced;
      case OrderStatusEnum.preparing:
        return context.appLocalization.statusPreparing;
      case OrderStatusEnum.outForDelivery:
        return context.appLocalization.statusOutForDelivery;
      case OrderStatusEnum.ready:
        return context.appLocalization.readyForPickup;
      case OrderStatusEnum.completed:
        return context.appLocalization.statusCompleted;
      case OrderStatusEnum.canceled:
        return context.appLocalization.statusCanceled;
    }
  }
}

class CancelType {
  static const String unavailable = 'unavailable';
  static const String orderTakingTooLong = 'orderTakingTooLong';
  static const String lackOfIngredients = 'lackOfIngredients';
  static const String customerRequest = 'customerRequest';
  static const String technicalIssue = 'technicalIssue';
  static const String highOrderVolume = 'highOrderVolume';
  static const String other = 'other';
}
