import '../../shared.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@unfreezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    @TimestampSerializer() DateTime? createdAt,
    NotificationDataModel? data,
    String? topic,
    String? token,
    @Default(false) bool markAsRead,
    NotificationHeaderModel? notification,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@unfreezed
class NotificationHeaderModel with _$NotificationHeaderModel {
  factory NotificationHeaderModel({
    String? title,
    String? body,
    String? image,
  }) = _NotificationHeaderModel;

  factory NotificationHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationHeaderModelFromJson(json);
}

@unfreezed
class NotificationDataModel with _$NotificationDataModel {
  factory NotificationDataModel({
    String? id,
    String? type,
    String? tradeStatus,
    String? tradeType,
  }) = _NotificationDataModel;

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataModelFromJson(json);
}
