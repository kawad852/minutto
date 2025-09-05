import '../../shared.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@unfreezed
class CompanyModel with _$CompanyModel {
  factory CompanyModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String code,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);
}

@freezed
class Subscription with _$Subscription {
  factory Subscription({
    String? id,
    @TimestampSerializer() DateTime? createdAt,
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}

@freezed
class ServiceData with _$ServiceData {
  factory ServiceData({
    String? id,
    String? db,
    String? login,
    String? password,
  }) = _ServiceData;

  factory ServiceData.fromJson(Map<String, dynamic> json) => _$ServiceDataFromJson(json);
}
