import '../../shared.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@unfreezed
class CityModel with _$CityModel {
  @JsonSerializable(explicitToJson: true)
  factory CityModel({
    @TimestampSerializer() required DateTime createdAt,
    @Default('') String id,
    @Default('') String companyId,
    @Default('') String name,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}
