import '../../shared.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

@unfreezed
class DriverModel with _$DriverModel {
  factory DriverModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default("") String id,
    @Default("") String firstNameEn,
    @Default("") String firstNameAr,
    @Default("") String lastNameEn,
    @Default("") String lastNameAr,
    @Default("") String phoneNum,
    @Default("") String phoneCountryCode,
    @JsonKey(name: MyFields.geoloc) required GeoLocModel geoLoc,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) => _$DriverModelFromJson(json);

  DriverModel._();

  String get firstName {
    return UiHelper.translate(textEN: firstNameEn, textAR: firstNameAr);
  }

  String get lastName {
    return UiHelper.translate(textEN: lastNameEn, textAR: lastNameAr);
  }
}
