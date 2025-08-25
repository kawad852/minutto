import '../../shared.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@unfreezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phoneCountryCode,
    String? phoneNum,
    String? area,
    String? streetName,
    int? buildingNum,
    int? aptNum,
    int? floorNum,
    String? companyName,
    double? latitude,
    double? longitude,
    @Default("HOUSE") String buildingType,
    String? additionalDirections,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}

@unfreezed
class TestModel with _$TestModel {
  factory TestModel({
    String? id,
    String? firstName,
  }) = _TestModel;

  factory TestModel.fromJson(Map<String, dynamic> json) => _$TestModelFromJson(json);
}
