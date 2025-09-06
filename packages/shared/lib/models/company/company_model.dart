import '../../shared.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@unfreezed
class CompanyModel with _$CompanyModel {
  @JsonSerializable(explicitToJson: true)
  factory CompanyModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String code,
    LeavePolicyModel? leavePolicy,
    AttendancePolicyModel? attendancePolicy,
    GeoLocationModel? geoLocation,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}

@unfreezed
class LeavePolicyModel with _$LeavePolicyModel {
  @JsonSerializable(explicitToJson: true)
  factory LeavePolicyModel({
    @Default(0) int maxDaysPerRequest,
    @Default(false) bool allowCarryOver,
    @Default(0) int maxCarryOverDays,
  }) = _LeavePolicyModel;

  factory LeavePolicyModel.fromJson(Map<String, dynamic> json) => _$LeavePolicyModelFromJson(json);
}

@unfreezed
class AttendancePolicyModel with _$AttendancePolicyModel {
  @JsonSerializable(explicitToJson: true)
  factory AttendancePolicyModel({
    @Default(0) int shiftGraceMinutes,
    @Default(true) bool lateAfterGrace,
    required List<LateDeductionRuleModel> lateDeductionRules,
  }) = _AttendancePolicyModel;

  factory AttendancePolicyModel.fromJson(Map<String, dynamic> json) =>
      _$AttendancePolicyModelFromJson(json);
}

@unfreezed
class LateDeductionRuleModel with _$LateDeductionRuleModel {
  @JsonSerializable(explicitToJson: true)
  factory LateDeductionRuleModel({
    @Default(0) int fromMinutes,
    @Default(0) int toMinutes,
    @Default(0) int value,
  }) = _LateDeductionRuleModel;

  factory LateDeductionRuleModel.fromJson(Map<String, dynamic> json) =>
      _$LateDeductionRuleModelFromJson(json);
}

@unfreezed
class GeoLocationModel with _$GeoLocationModel {
  @JsonSerializable(explicitToJson: true)
  factory GeoLocationModel({
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
  }) = _GeoLocationModel;

  factory GeoLocationModel.fromJson(Map<String, dynamic> json) => _$GeoLocationModelFromJson(json);
}
