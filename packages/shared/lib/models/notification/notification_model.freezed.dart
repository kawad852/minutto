// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  NotificationDataModel? get data => throw _privateConstructorUsedError;
  set data(NotificationDataModel? value) => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  set topic(String? value) => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  set token(String? value) => throw _privateConstructorUsedError;
  bool get markAsRead => throw _privateConstructorUsedError;
  set markAsRead(bool value) => throw _privateConstructorUsedError;
  NotificationHeaderModel? get notification =>
      throw _privateConstructorUsedError;
  set notification(NotificationHeaderModel? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
    NotificationModel value,
    $Res Function(NotificationModel) then,
  ) = _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    NotificationDataModel? data,
    String? topic,
    String? token,
    bool markAsRead,
    NotificationHeaderModel? notification,
  });

  $NotificationDataModelCopyWith<$Res>? get data;
  $NotificationHeaderModelCopyWith<$Res>? get notification;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? data = freezed,
    Object? topic = freezed,
    Object? token = freezed,
    Object? markAsRead = null,
    Object? notification = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as NotificationDataModel?,
            topic: freezed == topic
                ? _value.topic
                : topic // ignore: cast_nullable_to_non_nullable
                      as String?,
            token: freezed == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String?,
            markAsRead: null == markAsRead
                ? _value.markAsRead
                : markAsRead // ignore: cast_nullable_to_non_nullable
                      as bool,
            notification: freezed == notification
                ? _value.notification
                : notification // ignore: cast_nullable_to_non_nullable
                      as NotificationHeaderModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotificationDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationHeaderModelCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $NotificationHeaderModelCopyWith<$Res>(_value.notification!, (
      value,
    ) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(
    _$NotificationModelImpl value,
    $Res Function(_$NotificationModelImpl) then,
  ) = __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    NotificationDataModel? data,
    String? topic,
    String? token,
    bool markAsRead,
    NotificationHeaderModel? notification,
  });

  @override
  $NotificationDataModelCopyWith<$Res>? get data;
  @override
  $NotificationHeaderModelCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(
    _$NotificationModelImpl _value,
    $Res Function(_$NotificationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? data = freezed,
    Object? topic = freezed,
    Object? token = freezed,
    Object? markAsRead = null,
    Object? notification = freezed,
  }) {
    return _then(
      _$NotificationModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as NotificationDataModel?,
        topic: freezed == topic
            ? _value.topic
            : topic // ignore: cast_nullable_to_non_nullable
                  as String?,
        token: freezed == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String?,
        markAsRead: null == markAsRead
            ? _value.markAsRead
            : markAsRead // ignore: cast_nullable_to_non_nullable
                  as bool,
        notification: freezed == notification
            ? _value.notification
            : notification // ignore: cast_nullable_to_non_nullable
                  as NotificationHeaderModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  _$NotificationModelImpl({
    @TimestampSerializer() this.createdAt,
    this.data,
    this.topic,
    this.token,
    this.markAsRead = false,
    this.notification,
  });

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  NotificationDataModel? data;
  @override
  String? topic;
  @override
  String? token;
  @override
  @JsonKey()
  bool markAsRead;
  @override
  NotificationHeaderModel? notification;

  @override
  String toString() {
    return 'NotificationModel(createdAt: $createdAt, data: $data, topic: $topic, token: $token, markAsRead: $markAsRead, notification: $notification)';
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(this);
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel({
    @TimestampSerializer() DateTime? createdAt,
    NotificationDataModel? data,
    String? topic,
    String? token,
    bool markAsRead,
    NotificationHeaderModel? notification,
  }) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  NotificationDataModel? get data;
  set data(NotificationDataModel? value);
  @override
  String? get topic;
  set topic(String? value);
  @override
  String? get token;
  set token(String? value);
  @override
  bool get markAsRead;
  set markAsRead(bool value);
  @override
  NotificationHeaderModel? get notification;
  set notification(NotificationHeaderModel? value);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationHeaderModel _$NotificationHeaderModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationHeaderModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationHeaderModel {
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  set body(String? value) => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  set image(String? value) => throw _privateConstructorUsedError;

  /// Serializes this NotificationHeaderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationHeaderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationHeaderModelCopyWith<NotificationHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationHeaderModelCopyWith<$Res> {
  factory $NotificationHeaderModelCopyWith(
    NotificationHeaderModel value,
    $Res Function(NotificationHeaderModel) then,
  ) = _$NotificationHeaderModelCopyWithImpl<$Res, NotificationHeaderModel>;
  @useResult
  $Res call({String? title, String? body, String? image});
}

/// @nodoc
class _$NotificationHeaderModelCopyWithImpl<
  $Res,
  $Val extends NotificationHeaderModel
>
    implements $NotificationHeaderModelCopyWith<$Res> {
  _$NotificationHeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationHeaderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationHeaderModelImplCopyWith<$Res>
    implements $NotificationHeaderModelCopyWith<$Res> {
  factory _$$NotificationHeaderModelImplCopyWith(
    _$NotificationHeaderModelImpl value,
    $Res Function(_$NotificationHeaderModelImpl) then,
  ) = __$$NotificationHeaderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? body, String? image});
}

/// @nodoc
class __$$NotificationHeaderModelImplCopyWithImpl<$Res>
    extends
        _$NotificationHeaderModelCopyWithImpl<
          $Res,
          _$NotificationHeaderModelImpl
        >
    implements _$$NotificationHeaderModelImplCopyWith<$Res> {
  __$$NotificationHeaderModelImplCopyWithImpl(
    _$NotificationHeaderModelImpl _value,
    $Res Function(_$NotificationHeaderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationHeaderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$NotificationHeaderModelImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationHeaderModelImpl implements _NotificationHeaderModel {
  _$NotificationHeaderModelImpl({this.title, this.body, this.image});

  factory _$NotificationHeaderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationHeaderModelImplFromJson(json);

  @override
  String? title;
  @override
  String? body;
  @override
  String? image;

  @override
  String toString() {
    return 'NotificationHeaderModel(title: $title, body: $body, image: $image)';
  }

  /// Create a copy of NotificationHeaderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationHeaderModelImplCopyWith<_$NotificationHeaderModelImpl>
  get copyWith =>
      __$$NotificationHeaderModelImplCopyWithImpl<
        _$NotificationHeaderModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationHeaderModelImplToJson(this);
  }
}

abstract class _NotificationHeaderModel implements NotificationHeaderModel {
  factory _NotificationHeaderModel({
    String? title,
    String? body,
    String? image,
  }) = _$NotificationHeaderModelImpl;

  factory _NotificationHeaderModel.fromJson(Map<String, dynamic> json) =
      _$NotificationHeaderModelImpl.fromJson;

  @override
  String? get title;
  set title(String? value);
  @override
  String? get body;
  set body(String? value);
  @override
  String? get image;
  set image(String? value);

  /// Create a copy of NotificationHeaderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationHeaderModelImplCopyWith<_$NotificationHeaderModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

NotificationDataModel _$NotificationDataModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationDataModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationDataModel {
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  set type(String? value) => throw _privateConstructorUsedError;
  String? get tradeStatus => throw _privateConstructorUsedError;
  set tradeStatus(String? value) => throw _privateConstructorUsedError;
  String? get tradeType => throw _privateConstructorUsedError;
  set tradeType(String? value) => throw _privateConstructorUsedError;

  /// Serializes this NotificationDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataModelCopyWith<NotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataModelCopyWith<$Res> {
  factory $NotificationDataModelCopyWith(
    NotificationDataModel value,
    $Res Function(NotificationDataModel) then,
  ) = _$NotificationDataModelCopyWithImpl<$Res, NotificationDataModel>;
  @useResult
  $Res call({String? id, String? type, String? tradeStatus, String? tradeType});
}

/// @nodoc
class _$NotificationDataModelCopyWithImpl<
  $Res,
  $Val extends NotificationDataModel
>
    implements $NotificationDataModelCopyWith<$Res> {
  _$NotificationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? tradeStatus = freezed,
    Object? tradeType = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            tradeStatus: freezed == tradeStatus
                ? _value.tradeStatus
                : tradeStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            tradeType: freezed == tradeType
                ? _value.tradeType
                : tradeType // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationDataModelImplCopyWith<$Res>
    implements $NotificationDataModelCopyWith<$Res> {
  factory _$$NotificationDataModelImplCopyWith(
    _$NotificationDataModelImpl value,
    $Res Function(_$NotificationDataModelImpl) then,
  ) = __$$NotificationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? type, String? tradeStatus, String? tradeType});
}

/// @nodoc
class __$$NotificationDataModelImplCopyWithImpl<$Res>
    extends
        _$NotificationDataModelCopyWithImpl<$Res, _$NotificationDataModelImpl>
    implements _$$NotificationDataModelImplCopyWith<$Res> {
  __$$NotificationDataModelImplCopyWithImpl(
    _$NotificationDataModelImpl _value,
    $Res Function(_$NotificationDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? tradeStatus = freezed,
    Object? tradeType = freezed,
  }) {
    return _then(
      _$NotificationDataModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        tradeStatus: freezed == tradeStatus
            ? _value.tradeStatus
            : tradeStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        tradeType: freezed == tradeType
            ? _value.tradeType
            : tradeType // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataModelImpl implements _NotificationDataModel {
  _$NotificationDataModelImpl({
    this.id,
    this.type,
    this.tradeStatus,
    this.tradeType,
  });

  factory _$NotificationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataModelImplFromJson(json);

  @override
  String? id;
  @override
  String? type;
  @override
  String? tradeStatus;
  @override
  String? tradeType;

  @override
  String toString() {
    return 'NotificationDataModel(id: $id, type: $type, tradeStatus: $tradeStatus, tradeType: $tradeType)';
  }

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
  get copyWith =>
      __$$NotificationDataModelImplCopyWithImpl<_$NotificationDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataModelImplToJson(this);
  }
}

abstract class _NotificationDataModel implements NotificationDataModel {
  factory _NotificationDataModel({
    String? id,
    String? type,
    String? tradeStatus,
    String? tradeType,
  }) = _$NotificationDataModelImpl;

  factory _NotificationDataModel.fromJson(Map<String, dynamic> json) =
      _$NotificationDataModelImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get type;
  set type(String? value);
  @override
  String? get tradeStatus;
  set tradeStatus(String? value);
  @override
  String? get tradeType;
  set tradeType(String? value);

  /// Create a copy of NotificationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataModelImplCopyWith<_$NotificationDataModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
