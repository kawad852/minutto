// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HolidayModel _$HolidayModelFromJson(Map<String, dynamic> json) {
  return _HolidayModel.fromJson(json);
}

/// @nodoc
mixin _$HolidayModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get fromDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set fromDate(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get toDate => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set toDate(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  set companyId(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<String> get branchIds => throw _privateConstructorUsedError;
  set branchIds(List<String> value) => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<BranchModel>? get branchModels => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set branchModels(List<BranchModel>? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this HolidayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HolidayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HolidayModelCopyWith<HolidayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayModelCopyWith<$Res> {
  factory $HolidayModelCopyWith(
    HolidayModel value,
    $Res Function(HolidayModel) then,
  ) = _$HolidayModelCopyWithImpl<$Res, HolidayModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    String id,
    String companyId,
    String name,
    List<String> branchIds,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<BranchModel>? branchModels,
  });
}

/// @nodoc
class _$HolidayModelCopyWithImpl<$Res, $Val extends HolidayModel>
    implements $HolidayModelCopyWith<$Res> {
  _$HolidayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HolidayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? id = null,
    Object? companyId = null,
    Object? name = null,
    Object? branchIds = null,
    Object? branchModels = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            fromDate: freezed == fromDate
                ? _value.fromDate
                : fromDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            toDate: freezed == toDate
                ? _value.toDate
                : toDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            branchIds: null == branchIds
                ? _value.branchIds
                : branchIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            branchModels: freezed == branchModels
                ? _value.branchModels
                : branchModels // ignore: cast_nullable_to_non_nullable
                      as List<BranchModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HolidayModelImplCopyWith<$Res>
    implements $HolidayModelCopyWith<$Res> {
  factory _$$HolidayModelImplCopyWith(
    _$HolidayModelImpl value,
    $Res Function(_$HolidayModelImpl) then,
  ) = __$$HolidayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    String id,
    String companyId,
    String name,
    List<String> branchIds,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<BranchModel>? branchModels,
  });
}

/// @nodoc
class __$$HolidayModelImplCopyWithImpl<$Res>
    extends _$HolidayModelCopyWithImpl<$Res, _$HolidayModelImpl>
    implements _$$HolidayModelImplCopyWith<$Res> {
  __$$HolidayModelImplCopyWithImpl(
    _$HolidayModelImpl _value,
    $Res Function(_$HolidayModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HolidayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? id = null,
    Object? companyId = null,
    Object? name = null,
    Object? branchIds = null,
    Object? branchModels = freezed,
  }) {
    return _then(
      _$HolidayModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        fromDate: freezed == fromDate
            ? _value.fromDate
            : fromDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        toDate: freezed == toDate
            ? _value.toDate
            : toDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        branchIds: null == branchIds
            ? _value.branchIds
            : branchIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        branchModels: freezed == branchModels
            ? _value.branchModels
            : branchModels // ignore: cast_nullable_to_non_nullable
                  as List<BranchModel>?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$HolidayModelImpl extends _HolidayModel {
  _$HolidayModelImpl({
    @TimestampSerializer() this.createdAt,
    @TimestampSerializer() this.fromDate,
    @TimestampSerializer() this.toDate,
    this.id = '',
    this.companyId = '',
    this.name = '',
    required this.branchIds,
    @JsonKey(includeToJson: false, includeFromJson: false) this.branchModels,
  }) : super._();

  factory _$HolidayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolidayModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @TimestampSerializer()
  DateTime? fromDate;
  @override
  @TimestampSerializer()
  DateTime? toDate;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String companyId;
  @override
  @JsonKey()
  String name;
  @override
  List<String> branchIds;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<BranchModel>? branchModels;

  @override
  String toString() {
    return 'HolidayModel(createdAt: $createdAt, fromDate: $fromDate, toDate: $toDate, id: $id, companyId: $companyId, name: $name, branchIds: $branchIds, branchModels: $branchModels)';
  }

  /// Create a copy of HolidayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayModelImplCopyWith<_$HolidayModelImpl> get copyWith =>
      __$$HolidayModelImplCopyWithImpl<_$HolidayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolidayModelImplToJson(this);
  }
}

abstract class _HolidayModel extends HolidayModel {
  factory _HolidayModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    String id,
    String companyId,
    String name,
    required List<String> branchIds,
    @JsonKey(includeToJson: false, includeFromJson: false)
    List<BranchModel>? branchModels,
  }) = _$HolidayModelImpl;
  _HolidayModel._() : super._();

  factory _HolidayModel.fromJson(Map<String, dynamic> json) =
      _$HolidayModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
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
  String get id;
  set id(String value);
  @override
  String get companyId;
  set companyId(String value);
  @override
  String get name;
  set name(String value);
  @override
  List<String> get branchIds;
  set branchIds(List<String> value);
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  List<BranchModel>? get branchModels;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set branchModels(List<BranchModel>? value);

  /// Create a copy of HolidayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HolidayModelImplCopyWith<_$HolidayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
