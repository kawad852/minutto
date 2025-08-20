import '../../shared.dart';

part 'pickup_info_model.freezed.dart';
part 'pickup_info_model.g.dart';

@unfreezed
class PickUpInfoModel with _$PickUpInfoModel {
  factory PickUpInfoModel({
    String? firstName,
    String? lastName,
    String? phoneCountryCode,
    String? phoneNum,
  }) = _PickUpInfoModel;

  factory PickUpInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PickUpInfoModelFromJson(json);
}
