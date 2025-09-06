import '../../shared.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @Default('') String id,
    String? roleId,
    @Default('') String companyId,
    @Default('') String shiftId,
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? workStartDate,
    @TimestampSerializer() DateTime? contractEndDate,
    @Default('') String name,
    @Default('') String profileImage,
    @Default(kFallBackCountryCode) String phoneNumberCountryCode,
    @Default('') String phoneNumber,
    @Default('') String email,
    @TimestampSerializer() DateTime? birthDate,
    @Default("") String gender,
    @Default("") String maritalStatus,
    @Default('') String departmentId,
    @Default('') String branchId,
    @Default('') String jobTitle,
    @Default(0.0) double basicSalary,
    @Default(0) int contractDurationMonths,
    @Default('') String nationalId,
    BankModel? bank,
    @Default(true) bool active,
    @Default(false) bool archived,
    @Default([]) List<String> deviceTokens,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  UserModel._();

  BranchModel get branch {
    return CacheService.instance.getBranch(branchId);
  }

  DepartmentModel get department {
    return CacheService.instance.getDepartment(departmentId);
  }
}

@unfreezed
class BankModel with _$BankModel {
  @JsonSerializable(explicitToJson: true)
  factory BankModel({
    @Default('') String name,
    @Default('') String branch,
    @Default('') String iban,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) => _$BankModelFromJson(json);
}
