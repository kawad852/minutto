// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_advance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalaryAdvanceModel _$SalaryAdvanceModelFromJson(Map<String, dynamic> json) {
  return _SalaryAdvanceModel.fromJson(json);
}

/// @nodoc
mixin _$SalaryAdvanceModel {
  @TimestampSerializer()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  set notes(String? value) => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  set amount(double value) => throw _privateConstructorUsedError;
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  set attachments(List<AttachmentModel> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this SalaryAdvanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalaryAdvanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalaryAdvanceModelCopyWith<SalaryAdvanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryAdvanceModelCopyWith<$Res> {
  factory $SalaryAdvanceModelCopyWith(
    SalaryAdvanceModel value,
    $Res Function(SalaryAdvanceModel) then,
  ) = _$SalaryAdvanceModelCopyWithImpl<$Res, SalaryAdvanceModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime createdAt,
    String id,
    String status,
    String userId,
    String companyId,
    String? notes,
    double amount,
    List<AttachmentModel> attachments,
  });
}

/// @nodoc
class _$SalaryAdvanceModelCopyWithImpl<$Res, $Val extends SalaryAdvanceModel>
    implements $SalaryAdvanceModelCopyWith<$Res> {
  _$SalaryAdvanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalaryAdvanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? companyId = null,
    Object? notes = freezed,
    Object? amount = null,
    Object? attachments = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
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
abstract class _$$SalaryAdvanceModelImplCopyWith<$Res>
    implements $SalaryAdvanceModelCopyWith<$Res> {
  factory _$$SalaryAdvanceModelImplCopyWith(
    _$SalaryAdvanceModelImpl value,
    $Res Function(_$SalaryAdvanceModelImpl) then,
  ) = __$$SalaryAdvanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime createdAt,
    String id,
    String status,
    String userId,
    String companyId,
    String? notes,
    double amount,
    List<AttachmentModel> attachments,
  });
}

/// @nodoc
class __$$SalaryAdvanceModelImplCopyWithImpl<$Res>
    extends _$SalaryAdvanceModelCopyWithImpl<$Res, _$SalaryAdvanceModelImpl>
    implements _$$SalaryAdvanceModelImplCopyWith<$Res> {
  __$$SalaryAdvanceModelImplCopyWithImpl(
    _$SalaryAdvanceModelImpl _value,
    $Res Function(_$SalaryAdvanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalaryAdvanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? companyId = null,
    Object? notes = freezed,
    Object? amount = null,
    Object? attachments = null,
  }) {
    return _then(
      _$SalaryAdvanceModelImpl(
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
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
class _$SalaryAdvanceModelImpl implements _SalaryAdvanceModel {
  _$SalaryAdvanceModelImpl({
    @TimestampSerializer() required this.createdAt,
    this.id = "",
    this.status = StatusEnum.defaultValue,
    this.userId = "",
    this.companyId = "",
    this.notes,
    this.amount = 0.0,
    this.attachments = const [],
  });

  factory _$SalaryAdvanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalaryAdvanceModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String status;
  @override
  @JsonKey()
  String userId;
  @override
  @JsonKey()
  String companyId;
  @override
  String? notes;
  @override
  @JsonKey()
  double amount;
  @override
  @JsonKey()
  List<AttachmentModel> attachments;

  @override
  String toString() {
    return 'SalaryAdvanceModel(createdAt: $createdAt, id: $id, status: $status, userId: $userId, companyId: $companyId, notes: $notes, amount: $amount, attachments: $attachments)';
  }

  /// Create a copy of SalaryAdvanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryAdvanceModelImplCopyWith<_$SalaryAdvanceModelImpl> get copyWith =>
      __$$SalaryAdvanceModelImplCopyWithImpl<_$SalaryAdvanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalaryAdvanceModelImplToJson(this);
  }
}

abstract class _SalaryAdvanceModel implements SalaryAdvanceModel {
  factory _SalaryAdvanceModel({
    @TimestampSerializer() required DateTime createdAt,
    String id,
    String status,
    String userId,
    String companyId,
    String? notes,
    double amount,
    List<AttachmentModel> attachments,
  }) = _$SalaryAdvanceModelImpl;

  factory _SalaryAdvanceModel.fromJson(Map<String, dynamic> json) =
      _$SalaryAdvanceModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime value);
  @override
  String get id;
  set id(String value);
  @override
  String get status;
  set status(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  String? get notes;
  set notes(String? value);
  @override
  double get amount;
  set amount(double value);
  @override
  List<AttachmentModel> get attachments;
  set attachments(List<AttachmentModel> value);

  /// Create a copy of SalaryAdvanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalaryAdvanceModelImplCopyWith<_$SalaryAdvanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
