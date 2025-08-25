import '../../shared.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String? companyId,
    String? firstName,
    String? lastName,
    String? email,
    @Default([]) List<String> deviceTokens,
    String? username,
    String? languageCode,
    @Default(false) bool blocked,
    AddressModel? deliveryAddress,
    PickUpInfoModel? pickupInfo,
    String? phoneCountryCode,
    String? phoneNum,
    String? roleId,
    String? storeId,
    String? userToken,
    String? password,
    @Default(0) int rewardPoints,
    @Default([]) List<String> favoriteIds,
    @Default([]) List<String> recentSearches,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  UserModel._();

  String? getPhoneNumber(BuildContext context) {
    return UiHelper.getPhoneNumber(context, phoneCountryCode, phoneNum);
  }

  String get displayName {
    return UiHelper.getDisplayName(firstName, lastName);
  }
}
