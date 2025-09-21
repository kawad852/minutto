// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FAQModel _$FAQModelFromJson(Map<String, dynamic> json) {
  return _FAQModel.fromJson(json);
}

/// @nodoc
mixin _$FAQModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  set question(String value) => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  set answer(String value) => throw _privateConstructorUsedError;

  /// Serializes this FAQModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FAQModelCopyWith<FAQModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQModelCopyWith<$Res> {
  factory $FAQModelCopyWith(FAQModel value, $Res Function(FAQModel) then) =
      _$FAQModelCopyWithImpl<$Res, FAQModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String question,
    String answer,
  });
}

/// @nodoc
class _$FAQModelCopyWithImpl<$Res, $Val extends FAQModel>
    implements $FAQModelCopyWith<$Res> {
  _$FAQModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? question = null,
    Object? answer = null,
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
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
            answer: null == answer
                ? _value.answer
                : answer // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FAQModelImplCopyWith<$Res>
    implements $FAQModelCopyWith<$Res> {
  factory _$$FAQModelImplCopyWith(
    _$FAQModelImpl value,
    $Res Function(_$FAQModelImpl) then,
  ) = __$$FAQModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String question,
    String answer,
  });
}

/// @nodoc
class __$$FAQModelImplCopyWithImpl<$Res>
    extends _$FAQModelCopyWithImpl<$Res, _$FAQModelImpl>
    implements _$$FAQModelImplCopyWith<$Res> {
  __$$FAQModelImplCopyWithImpl(
    _$FAQModelImpl _value,
    $Res Function(_$FAQModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(
      _$FAQModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        answer: null == answer
            ? _value.answer
            : answer // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FAQModelImpl implements _FAQModel {
  _$FAQModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.question = '',
    this.answer = '',
  });

  factory _$FAQModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FAQModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String question;
  @override
  @JsonKey()
  String answer;

  @override
  String toString() {
    return 'FAQModel(createdAt: $createdAt, id: $id, question: $question, answer: $answer)';
  }

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      __$$FAQModelImplCopyWithImpl<_$FAQModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FAQModelImplToJson(this);
  }
}

abstract class _FAQModel implements FAQModel {
  factory _FAQModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String question,
    String answer,
  }) = _$FAQModelImpl;

  factory _FAQModel.fromJson(Map<String, dynamic> json) =
      _$FAQModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get question;
  set question(String value);
  @override
  String get answer;
  set answer(String value);

  /// Create a copy of FAQModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FAQModelImplCopyWith<_$FAQModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
