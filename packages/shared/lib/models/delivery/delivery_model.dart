import '../../shared.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@unfreezed
class DeliveryFeeModel with _$DeliveryFeeModel {
  factory DeliveryFeeModel({String? id, double? fee, double? distanceRange}) = _DeliveryFeeModel;

  factory DeliveryFeeModel.fromJson(Map<String, dynamic> json) => _$DeliveryFeeModelFromJson(json);
}
