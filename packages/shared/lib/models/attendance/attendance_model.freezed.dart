// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) {
  return _AttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceModelCopyWith<AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceModelCopyWith<$Res> {
  factory $AttendanceModelCopyWith(
    AttendanceModel value,
    $Res Function(AttendanceModel) then,
  ) = _$AttendanceModelCopyWithImpl<$Res, AttendanceModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String type,
  });
}

/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res, $Val extends AttendanceModel>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceModelImplCopyWith<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  factory _$$AttendanceModelImplCopyWith(
    _$AttendanceModelImpl value,
    $Res Function(_$AttendanceModelImpl) then,
  ) = __$$AttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String type,
  });
}

/// @nodoc
class __$$AttendanceModelImplCopyWithImpl<$Res>
    extends _$AttendanceModelCopyWithImpl<$Res, _$AttendanceModelImpl>
    implements _$$AttendanceModelImplCopyWith<$Res> {
  __$$AttendanceModelImplCopyWithImpl(
    _$AttendanceModelImpl _value,
    $Res Function(_$AttendanceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? type = null,
  }) {
    return _then(
      _$AttendanceModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AttendanceModelImpl implements _AttendanceModel {
  _$AttendanceModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.type = '',
  });

  factory _$AttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String type;

  @override
  String toString() {
    return 'AttendanceModel(createdAt: $createdAt, id: $id, type: $type)';
  }

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      __$$AttendanceModelImplCopyWithImpl<_$AttendanceModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceModelImplToJson(this);
  }
}

abstract class _AttendanceModel implements AttendanceModel {
  factory _AttendanceModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String type,
  }) = _$AttendanceModelImpl;

  factory _AttendanceModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get type;
  set type(String value);

  /// Create a copy of AttendanceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceSession _$AttendanceSessionFromJson(Map<String, dynamic> json) {
  return _AttendanceSession.fromJson(json);
}

/// @nodoc
mixin _$AttendanceSession {
  String get kind => throw _privateConstructorUsedError;
  set kind(String value) =>
      throw _privateConstructorUsedError; // 'work' or 'break'
  @TimestampSerializer()
  DateTime get start => throw _privateConstructorUsedError; // 'work' or 'break'
  @TimestampSerializer()
  set start(DateTime value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get end => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set end(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this AttendanceSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSessionCopyWith<AttendanceSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSessionCopyWith<$Res> {
  factory $AttendanceSessionCopyWith(
    AttendanceSession value,
    $Res Function(AttendanceSession) then,
  ) = _$AttendanceSessionCopyWithImpl<$Res, AttendanceSession>;
  @useResult
  $Res call({
    String kind,
    @TimestampSerializer() DateTime start,
    @TimestampSerializer() DateTime? end,
  });
}

/// @nodoc
class _$AttendanceSessionCopyWithImpl<$Res, $Val extends AttendanceSession>
    implements $AttendanceSessionCopyWith<$Res> {
  _$AttendanceSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? start = null,
    Object? end = freezed,
  }) {
    return _then(
      _value.copyWith(
            kind: null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as String,
            start: null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            end: freezed == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceSessionImplCopyWith<$Res>
    implements $AttendanceSessionCopyWith<$Res> {
  factory _$$AttendanceSessionImplCopyWith(
    _$AttendanceSessionImpl value,
    $Res Function(_$AttendanceSessionImpl) then,
  ) = __$$AttendanceSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String kind,
    @TimestampSerializer() DateTime start,
    @TimestampSerializer() DateTime? end,
  });
}

/// @nodoc
class __$$AttendanceSessionImplCopyWithImpl<$Res>
    extends _$AttendanceSessionCopyWithImpl<$Res, _$AttendanceSessionImpl>
    implements _$$AttendanceSessionImplCopyWith<$Res> {
  __$$AttendanceSessionImplCopyWithImpl(
    _$AttendanceSessionImpl _value,
    $Res Function(_$AttendanceSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? start = null,
    Object? end = freezed,
  }) {
    return _then(
      _$AttendanceSessionImpl(
        kind: null == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as String,
        start: null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        end: freezed == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceSessionImpl implements _AttendanceSession {
  _$AttendanceSessionImpl({
    this.kind = '',
    @TimestampSerializer() required this.start,
    @TimestampSerializer() this.end,
  });

  factory _$AttendanceSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceSessionImplFromJson(json);

  @override
  @JsonKey()
  String kind;
  // 'work' or 'break'
  @override
  @TimestampSerializer()
  DateTime start;
  @override
  @TimestampSerializer()
  DateTime? end;

  @override
  String toString() {
    return 'AttendanceSession(kind: $kind, start: $start, end: $end)';
  }

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSessionImplCopyWith<_$AttendanceSessionImpl> get copyWith =>
      __$$AttendanceSessionImplCopyWithImpl<_$AttendanceSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceSessionImplToJson(this);
  }
}

abstract class _AttendanceSession implements AttendanceSession {
  factory _AttendanceSession({
    String kind,
    @TimestampSerializer() required DateTime start,
    @TimestampSerializer() DateTime? end,
  }) = _$AttendanceSessionImpl;

  factory _AttendanceSession.fromJson(Map<String, dynamic> json) =
      _$AttendanceSessionImpl.fromJson;

  @override
  String get kind;
  set kind(String value); // 'work' or 'break'
  @override
  @TimestampSerializer()
  DateTime get start; // 'work' or 'break'
  @TimestampSerializer()
  set start(DateTime value);
  @override
  @TimestampSerializer()
  DateTime? get end;
  @TimestampSerializer()
  set end(DateTime? value);

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSessionImplCopyWith<_$AttendanceSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
