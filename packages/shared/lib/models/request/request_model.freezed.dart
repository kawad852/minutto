// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get statusChangedAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set statusChangedAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get fromDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set fromDate(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get toDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set toDate(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get date => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set date(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  set reason(String? value) => throw _privateConstructorUsedError;
  String? get fromHour => throw _privateConstructorUsedError;
  set fromHour(String? value) => throw _privateConstructorUsedError;
  String? get toHour => throw _privateConstructorUsedError;
  set toHour(String? value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  set notes(String? value) => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;
  set adminNotes(String? value) => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  set amount(double value) => throw _privateConstructorUsedError;
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  set attachments(List<AttachmentModel> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  UserModel? get userModel => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set userModel(UserModel? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
    RequestModel value,
    $Res Function(RequestModel) then,
  ) = _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusChangedAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    @TimestampSerializer() DateTime? date,
    String id,
    String userId,
    String type,
    String companyId,
    String? reason,
    String? fromHour,
    String? toHour,
    String status,
    String? notes,
    String? adminNotes,
    double amount,
    List<AttachmentModel> attachments,
    @JsonKey(includeFromJson: false, includeToJson: false) UserModel? userModel,
  });

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? statusChangedAt = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? date = freezed,
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? companyId = null,
    Object? reason = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? status = null,
    Object? notes = freezed,
    Object? adminNotes = freezed,
    Object? amount = null,
    Object? attachments = null,
    Object? userModel = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            statusChangedAt: freezed == statusChangedAt
                ? _value.statusChangedAt
                : statusChangedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            fromDate: freezed == fromDate
                ? _value.fromDate
                : fromDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            toDate: freezed == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            fromHour: freezed == fromHour
                ? _value.fromHour
                : fromHour // ignore: cast_nullable_to_non_nullable
                      as String?,
            toHour: freezed == toHour
                ? _value.toHour
                : toHour // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminNotes: freezed == adminNotes
                ? _value.adminNotes
                : adminNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            attachments: null == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                      as List<AttachmentModel>,
            userModel: freezed == userModel
                ? _value.userModel
                : userModel // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestModelImplCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$RequestModelImplCopyWith(
    _$RequestModelImpl value,
    $Res Function(_$RequestModelImpl) then,
  ) = __$$RequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusChangedAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    @TimestampSerializer() DateTime? date,
    String id,
    String userId,
    String type,
    String companyId,
    String? reason,
    String? fromHour,
    String? toHour,
    String status,
    String? notes,
    String? adminNotes,
    double amount,
    List<AttachmentModel> attachments,
    @JsonKey(includeFromJson: false, includeToJson: false) UserModel? userModel,
  });

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$RequestModelImplCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$RequestModelImpl>
    implements _$$RequestModelImplCopyWith<$Res> {
  __$$RequestModelImplCopyWithImpl(
    _$RequestModelImpl _value,
    $Res Function(_$RequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? statusChangedAt = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? date = freezed,
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? companyId = null,
    Object? reason = freezed,
    Object? fromHour = freezed,
    Object? toHour = freezed,
    Object? status = null,
    Object? notes = freezed,
    Object? adminNotes = freezed,
    Object? amount = null,
    Object? attachments = null,
    Object? userModel = freezed,
  }) {
    return _then(
      _$RequestModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        statusChangedAt: freezed == statusChangedAt
            ? _value.statusChangedAt
            : statusChangedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        fromHour: freezed == fromHour
            ? _value.fromHour
            : fromHour // ignore: cast_nullable_to_non_nullable
                  as String?,
        toHour: freezed == toHour
            ? _value.toHour
            : toHour // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminNotes: freezed == adminNotes
            ? _value.adminNotes
            : adminNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        attachments: null == attachments
            ? _value.attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<AttachmentModel>,
        userModel: freezed == userModel
            ? _value.userModel
            : userModel // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RequestModelImpl extends _RequestModel {
  _$RequestModelImpl({
    @TimestampSerializer() this.createdAt,
    @TimestampSerializer() this.statusChangedAt,
    @TimestampSerializer() this.fromDate,
    @TimestampSerializer() this.toDate,
    @TimestampSerializer() this.date,
    this.id = '',
    this.userId = '',
    this.type = '',
    this.companyId = '',
    this.reason,
    this.fromHour,
    this.toHour,
    this.status = StatusEnum.defaultValue,
    this.notes,
    this.adminNotes,
    this.amount = 0.0,
    this.attachments = const [],
    @JsonKey(includeFromJson: false, includeToJson: false) this.userModel,
  }) : super._();

  factory _$RequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @TimestampSerializer()
  DateTime? statusChangedAt;
  @override
  @TimestampSerializer()
  DateTime? fromDate;
  @override
  @TimestampSerializer()
  DateTime? toDate;
  @override
  @TimestampSerializer()
  DateTime? date;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String userId;
  @override
  @JsonKey()
  String type;
  @override
  @JsonKey()
  String companyId;
  @override
  String? reason;
  @override
  String? fromHour;
  @override
  String? toHour;
  @override
  @JsonKey()
  String status;
  @override
  String? notes;
  @override
  String? adminNotes;
  @override
  @JsonKey()
  double amount;
  @override
  @JsonKey()
  List<AttachmentModel> attachments;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  UserModel? userModel;

  @override
  String toString() {
    return 'RequestModel(createdAt: $createdAt, statusChangedAt: $statusChangedAt, fromDate: $fromDate, toDate: $toDate, date: $date, id: $id, userId: $userId, type: $type, companyId: $companyId, reason: $reason, fromHour: $fromHour, toHour: $toHour, status: $status, notes: $notes, adminNotes: $adminNotes, amount: $amount, attachments: $attachments, userModel: $userModel)';
  }

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      __$$RequestModelImplCopyWithImpl<_$RequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestModelImplToJson(this);
  }
}

abstract class _RequestModel extends RequestModel {
  factory _RequestModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusChangedAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    @TimestampSerializer() DateTime? date,
    String id,
    String userId,
    String type,
    String companyId,
    String? reason,
    String? fromHour,
    String? toHour,
    String status,
    String? notes,
    String? adminNotes,
    double amount,
    List<AttachmentModel> attachments,
    @JsonKey(includeFromJson: false, includeToJson: false) UserModel? userModel,
  }) = _$RequestModelImpl;
  _RequestModel._() : super._();

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$RequestModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get statusChangedAt;
  @TimestampSerializer()
  set statusChangedAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get fromDate;
  @TimestampSerializer()
  set fromDate(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get toDate;
  @TimestampSerializer()
  set toDate(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get date;
  @TimestampSerializer()
  set date(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get type;
  set type(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  String? get reason;
  set reason(String? value);
  @override
  String? get fromHour;
  set fromHour(String? value);
  @override
  String? get toHour;
  set toHour(String? value);
  @override
  String get status;
  set status(String value);
  @override
  String? get notes;
  set notes(String? value);
  @override
  String? get adminNotes;
  set adminNotes(String? value);
  @override
  double get amount;
  set amount(double value);
  @override
  List<AttachmentModel> get attachments;
  set attachments(List<AttachmentModel> value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  UserModel? get userModel;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set userModel(UserModel? value);

  /// Create a copy of RequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestModelImplCopyWith<_$RequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
