import '../../shared.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@unfreezed
class BranchModel with _$BranchModel {
  @JsonSerializable(explicitToJson: true)
  factory BranchModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String companyId,
    @Default('') String email,
    @Default('') String cityId,
    @Default(kFallBackCountryCode) String phoneNumberCountryCode,
    @Default('') String phoneNumber,
    @Default('') String startWorkingHour,
    @Default('') String endWorkingHour,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);

  BranchModel._();

  String? getPhoneNumber(BuildContext context) {
    return UiHelper.getPhoneNumber(context, phoneNumberCountryCode, phoneNumber);
  }

  CityModel get city {
    return CacheService.instance.getCity(cityId);
  }
}
