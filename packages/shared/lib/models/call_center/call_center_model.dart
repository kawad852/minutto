import '../../shared.dart';

part 'call_center_model.freezed.dart';
part 'call_center_model.g.dart';

@unfreezed
class CallCenterModel with _$CallCenterModel {
  factory CallCenterModel({
    @TimestampSerializer() DateTime? createdAt,
    String? phoneNumber,
    @Default(kFallBackCountryCode) String phoneCountryCode,
    String? displayName,
    String? areaId,
    String? additionalDirections,
    @Default(OrderType.defaultValue) String orderType,
  }) = _CallCenterModel;

  factory CallCenterModel.fromJson(Map<String, dynamic> json) => _$CallCenterModelFromJson(json);

  CallCenterModel._();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CallCenterModel &&
          runtimeType == other.runtimeType &&
          phoneNumber == other.phoneNumber &&
          phoneCountryCode == other.phoneCountryCode &&
          areaId == other.areaId &&
          additionalDirections == other.additionalDirections;

  @override
  int get hashCode =>
      phoneNumber.hashCode ^
      phoneCountryCode.hashCode ^
      areaId.hashCode ^
      additionalDirections.hashCode;

  DeliveryAreaModel get area {
    final area = MyStorage.deliveryAreas.firstWhere((e) => e.id == areaId);
    return area;
  }
}

@unfreezed
class DeliveryAreaModel with _$DeliveryAreaModel {
  factory DeliveryAreaModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default("") String id,
    @Default("") String name,
    @Default(0.0) double deliveryFee,
  }) = _DeliveryAreaModel;

  factory DeliveryAreaModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAreaModelFromJson(json);
}
