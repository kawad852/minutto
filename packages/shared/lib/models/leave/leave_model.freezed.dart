// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LeaveModel _$LeaveModelFromJson(Map<String, dynamic> json) {
  return _LeaveModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveModel {
  @TimestampSerializer()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get fromDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set fromDate(DateTime value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime get toDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set toDate(DateTime value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String get requestType => throw _privateConstructorUsedError;
  set requestType(String value) => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  set notes(String? value) => throw _privateConstructorUsedError;
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  set attachments(List<AttachmentModel> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this LeaveModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveModelCopyWith<LeaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveModelCopyWith<$Res> {
  factory $LeaveModelCopyWith(
    LeaveModel value,
    $Res Function(LeaveModel) then,
  ) = _$LeaveModelCopyWithImpl<$Res, LeaveModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime createdAt,
    @TimestampSerializer() DateTime fromDate,
    @TimestampSerializer() DateTime toDate,
    String id,
    String userId,
    String companyId,
    String requestType,
    String? notes,
    List<AttachmentModel> attachments,
  });
}

/// @nodoc
class _$LeaveModelCopyWithImpl<$Res, $Val extends LeaveModel>
    implements $LeaveModelCopyWith<$Res> {
  _$LeaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? id = null,
    Object? userId = null,
    Object? companyId = null,
    Object? requestType = null,
    Object? notes = freezed,
    Object? attachments = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            fromDate: null == fromDate
                ? _value.fromDate
                : fromDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            toDate: null == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            requestType: null == requestType
                ? _value.requestType
                : requestType // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            attachments: null == attachments
                ? _value.attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                      as List<AttachmentModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaveModelImplCopyWith<$Res>
    implements $LeaveModelCopyWith<$Res> {
  factory _$$LeaveModelImplCopyWith(
    _$LeaveModelImpl value,
    $Res Function(_$LeaveModelImpl) then,
  ) = __$$LeaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime createdAt,
    @TimestampSerializer() DateTime fromDate,
    @TimestampSerializer() DateTime toDate,
    String id,
    String userId,
    String companyId,
    String requestType,
    String? notes,
    List<AttachmentModel> attachments,
  });
}

/// @nodoc
class __$$LeaveModelImplCopyWithImpl<$Res>
    extends _$LeaveModelCopyWithImpl<$Res, _$LeaveModelImpl>
    implements _$$LeaveModelImplCopyWith<$Res> {
  __$$LeaveModelImplCopyWithImpl(
    _$LeaveModelImpl _value,
    $Res Function(_$LeaveModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? id = null,
    Object? userId = null,
    Object? companyId = null,
    Object? requestType = null,
    Object? notes = freezed,
    Object? attachments = null,
  }) {
    return _then(
      _$LeaveModelImpl(
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        fromDate: null == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        toDate: null == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        requestType: null == requestType
            ? _value.requestType
            : requestType // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        attachments: null == attachments
            ? _value.attachments
            : attachments // ignore: cast_nullable_to_non_nullable
                  as List<AttachmentModel>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LeaveModelImpl implements _LeaveModel {
  _$LeaveModelImpl({
    @TimestampSerializer() required this.createdAt,
    @TimestampSerializer() required this.fromDate,
    @TimestampSerializer() required this.toDate,
    this.id = '',
    this.userId = '',
    this.companyId = '',
    this.requestType = '',
    this.notes,
    this.attachments = const [],
  });

  factory _$LeaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime createdAt;
  @override
  @TimestampSerializer()
  DateTime fromDate;
  @override
  @TimestampSerializer()
  DateTime toDate;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String userId;
  @override
  @JsonKey()
  String companyId;
  @override
  @JsonKey()
  String requestType;
  @override
  String? notes;
  @override
  @JsonKey()
  List<AttachmentModel> attachments;

  @override
  String toString() {
    return 'LeaveModel(createdAt: $createdAt, fromDate: $fromDate, toDate: $toDate, id: $id, userId: $userId, companyId: $companyId, requestType: $requestType, notes: $notes, attachments: $attachments)';
  }

  /// Create a copy of LeaveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveModelImplCopyWith<_$LeaveModelImpl> get copyWith =>
      __$$LeaveModelImplCopyWithImpl<_$LeaveModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveModelImplToJson(this);
  }
}

abstract class _LeaveModel implements LeaveModel {
  factory _LeaveModel({
    @TimestampSerializer() required DateTime createdAt,
    @TimestampSerializer() required DateTime fromDate,
    @TimestampSerializer() required DateTime toDate,
    String id,
    String userId,
    String companyId,
    String requestType,
    String? notes,
    List<AttachmentModel> attachments,
  }) = _$LeaveModelImpl;

  factory _LeaveModel.fromJson(Map<String, dynamic> json) =
      _$LeaveModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime value);
  @override
  @TimestampSerializer()
  DateTime get fromDate;
  @TimestampSerializer()
  set fromDate(DateTime value);
  @override
  @TimestampSerializer()
  DateTime get toDate;
  @TimestampSerializer()
  set toDate(DateTime value);
  @override
  String get id;
  set id(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  String get requestType;
  set requestType(String value);
  @override
  String? get notes;
  set notes(String? value);
  @override
  List<AttachmentModel> get attachments;
  set attachments(List<AttachmentModel> value);

  /// Create a copy of LeaveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveModelImplCopyWith<_$LeaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
