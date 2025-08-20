// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String? ?? '',
      comment: json['comment'] as String?,
      stars: (json['stars'] as num?)?.toDouble() ?? 0,
      userId: json['userId'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      orderId: json['orderId'] as String? ?? '',
      lastName: json['lastName'] as String?,
      published: json['published'] as bool? ?? false,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'comment': instance.comment,
      'stars': instance.stars,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'orderId': instance.orderId,
      'lastName': instance.lastName,
      'published': instance.published,
    };
