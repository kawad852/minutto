// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationModelImpl(
  createdAt: const TimestampSerializer().fromJson(json['createdAt']),
  data: json['data'] == null
      ? null
      : NotificationDataModel.fromJson(json['data'] as Map<String, dynamic>),
  topic: json['topic'] as String?,
  token: json['token'] as String?,
  markAsRead: json['markAsRead'] as bool? ?? false,
  notification: json['notification'] == null
      ? null
      : NotificationHeaderModel.fromJson(
          json['notification'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$NotificationModelImplToJson(
  _$NotificationModelImpl instance,
) => <String, dynamic>{
  'createdAt': const TimestampSerializer().toJson(instance.createdAt),
  'data': instance.data?.toJson(),
  'topic': instance.topic,
  'token': instance.token,
  'markAsRead': instance.markAsRead,
  'notification': instance.notification?.toJson(),
};

_$NotificationHeaderModelImpl _$$NotificationHeaderModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationHeaderModelImpl(
  title: json['title'] as String?,
  body: json['body'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$$NotificationHeaderModelImplToJson(
  _$NotificationHeaderModelImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'body': instance.body,
  'image': instance.image,
};

_$NotificationDataModelImpl _$$NotificationDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationDataModelImpl(
  id: json['id'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$$NotificationDataModelImplToJson(
  _$NotificationDataModelImpl instance,
) => <String, dynamic>{'id': instance.id, 'type': instance.type};
