import '../../shared.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

@unfreezed
class HomeAnalyticsModel with _$HomeAnalyticsModel {
  factory HomeAnalyticsModel({
    @Default(0) int totalOrders,
    @Default(0.0) double totalRevenues,
    @Default(0) int preparingCount,
    @Default(0) int readyCount,
    @Default(0) int outForDeliveryCount,
    @Default(0) int completedCount,
    @Default(0) int deliveryCount,
    @Default(0) int pickupCount,
  }) = _HomeAnalyticsModel;

  factory HomeAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$HomeAnalyticsModelFromJson(json);
}
