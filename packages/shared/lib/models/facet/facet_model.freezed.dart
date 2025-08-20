// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FacetModel _$FacetModelFromJson(Map<String, dynamic> json) {
  return _FacetModel.fromJson(json);
}

/// @nodoc
mixin _$FacetModel {
  List<FacetCount> get counts => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_name')
  String get fieldName => throw _privateConstructorUsedError;
  bool get sampled => throw _privateConstructorUsedError;
  FacetStats get stats => throw _privateConstructorUsedError;

  /// Serializes this FacetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacetModelCopyWith<FacetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetModelCopyWith<$Res> {
  factory $FacetModelCopyWith(
    FacetModel value,
    $Res Function(FacetModel) then,
  ) = _$FacetModelCopyWithImpl<$Res, FacetModel>;
  @useResult
  $Res call({
    List<FacetCount> counts,
    @JsonKey(name: 'field_name') String fieldName,
    bool sampled,
    FacetStats stats,
  });

  $FacetStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$FacetModelCopyWithImpl<$Res, $Val extends FacetModel>
    implements $FacetModelCopyWith<$Res> {
  _$FacetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = null,
    Object? fieldName = null,
    Object? sampled = null,
    Object? stats = null,
  }) {
    return _then(
      _value.copyWith(
            counts: null == counts
                ? _value.counts
                : counts // ignore: cast_nullable_to_non_nullable
                      as List<FacetCount>,
            fieldName: null == fieldName
                ? _value.fieldName
                : fieldName // ignore: cast_nullable_to_non_nullable
                      as String,
            sampled: null == sampled
                ? _value.sampled
                : sampled // ignore: cast_nullable_to_non_nullable
                      as bool,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as FacetStats,
          )
          as $Val,
    );
  }

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FacetStatsCopyWith<$Res> get stats {
    return $FacetStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FacetModelImplCopyWith<$Res>
    implements $FacetModelCopyWith<$Res> {
  factory _$$FacetModelImplCopyWith(
    _$FacetModelImpl value,
    $Res Function(_$FacetModelImpl) then,
  ) = __$$FacetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<FacetCount> counts,
    @JsonKey(name: 'field_name') String fieldName,
    bool sampled,
    FacetStats stats,
  });

  @override
  $FacetStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$FacetModelImplCopyWithImpl<$Res>
    extends _$FacetModelCopyWithImpl<$Res, _$FacetModelImpl>
    implements _$$FacetModelImplCopyWith<$Res> {
  __$$FacetModelImplCopyWithImpl(
    _$FacetModelImpl _value,
    $Res Function(_$FacetModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = null,
    Object? fieldName = null,
    Object? sampled = null,
    Object? stats = null,
  }) {
    return _then(
      _$FacetModelImpl(
        counts: null == counts
            ? _value._counts
            : counts // ignore: cast_nullable_to_non_nullable
                  as List<FacetCount>,
        fieldName: null == fieldName
            ? _value.fieldName
            : fieldName // ignore: cast_nullable_to_non_nullable
                  as String,
        sampled: null == sampled
            ? _value.sampled
            : sampled // ignore: cast_nullable_to_non_nullable
                  as bool,
        stats: null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as FacetStats,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FacetModelImpl implements _FacetModel {
  const _$FacetModelImpl({
    final List<FacetCount> counts = const [],
    @JsonKey(name: 'field_name') this.fieldName = "",
    this.sampled = false,
    this.stats = const FacetStats(),
  }) : _counts = counts;

  factory _$FacetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacetModelImplFromJson(json);

  final List<FacetCount> _counts;
  @override
  @JsonKey()
  List<FacetCount> get counts {
    if (_counts is EqualUnmodifiableListView) return _counts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counts);
  }

  @override
  @JsonKey(name: 'field_name')
  final String fieldName;
  @override
  @JsonKey()
  final bool sampled;
  @override
  @JsonKey()
  final FacetStats stats;

  @override
  String toString() {
    return 'FacetModel(counts: $counts, fieldName: $fieldName, sampled: $sampled, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacetModelImpl &&
            const DeepCollectionEquality().equals(other._counts, _counts) &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.sampled, sampled) || other.sampled == sampled) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_counts),
    fieldName,
    sampled,
    stats,
  );

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacetModelImplCopyWith<_$FacetModelImpl> get copyWith =>
      __$$FacetModelImplCopyWithImpl<_$FacetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacetModelImplToJson(this);
  }
}

abstract class _FacetModel implements FacetModel {
  const factory _FacetModel({
    final List<FacetCount> counts,
    @JsonKey(name: 'field_name') final String fieldName,
    final bool sampled,
    final FacetStats stats,
  }) = _$FacetModelImpl;

  factory _FacetModel.fromJson(Map<String, dynamic> json) =
      _$FacetModelImpl.fromJson;

  @override
  List<FacetCount> get counts;
  @override
  @JsonKey(name: 'field_name')
  String get fieldName;
  @override
  bool get sampled;
  @override
  FacetStats get stats;

  /// Create a copy of FacetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacetModelImplCopyWith<_$FacetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacetCount _$FacetCountFromJson(Map<String, dynamic> json) {
  return _FacetCount.fromJson(json);
}

/// @nodoc
mixin _$FacetCount {
  int get count => throw _privateConstructorUsedError;
  String get highlighted => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this FacetCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacetCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacetCountCopyWith<FacetCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetCountCopyWith<$Res> {
  factory $FacetCountCopyWith(
    FacetCount value,
    $Res Function(FacetCount) then,
  ) = _$FacetCountCopyWithImpl<$Res, FacetCount>;
  @useResult
  $Res call({int count, String highlighted, String value});
}

/// @nodoc
class _$FacetCountCopyWithImpl<$Res, $Val extends FacetCount>
    implements $FacetCountCopyWith<$Res> {
  _$FacetCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacetCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? highlighted = null,
    Object? value = null,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            highlighted: null == highlighted
                ? _value.highlighted
                : highlighted // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FacetCountImplCopyWith<$Res>
    implements $FacetCountCopyWith<$Res> {
  factory _$$FacetCountImplCopyWith(
    _$FacetCountImpl value,
    $Res Function(_$FacetCountImpl) then,
  ) = __$$FacetCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String highlighted, String value});
}

/// @nodoc
class __$$FacetCountImplCopyWithImpl<$Res>
    extends _$FacetCountCopyWithImpl<$Res, _$FacetCountImpl>
    implements _$$FacetCountImplCopyWith<$Res> {
  __$$FacetCountImplCopyWithImpl(
    _$FacetCountImpl _value,
    $Res Function(_$FacetCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacetCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? highlighted = null,
    Object? value = null,
  }) {
    return _then(
      _$FacetCountImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        highlighted: null == highlighted
            ? _value.highlighted
            : highlighted // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FacetCountImpl implements _FacetCount {
  const _$FacetCountImpl({
    this.count = 0,
    this.highlighted = "",
    this.value = "",
  });

  factory _$FacetCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacetCountImplFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final String highlighted;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'FacetCount(count: $count, highlighted: $highlighted, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacetCountImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.highlighted, highlighted) ||
                other.highlighted == highlighted) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, highlighted, value);

  /// Create a copy of FacetCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacetCountImplCopyWith<_$FacetCountImpl> get copyWith =>
      __$$FacetCountImplCopyWithImpl<_$FacetCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacetCountImplToJson(this);
  }
}

abstract class _FacetCount implements FacetCount {
  const factory _FacetCount({
    final int count,
    final String highlighted,
    final String value,
  }) = _$FacetCountImpl;

  factory _FacetCount.fromJson(Map<String, dynamic> json) =
      _$FacetCountImpl.fromJson;

  @override
  int get count;
  @override
  String get highlighted;
  @override
  String get value;

  /// Create a copy of FacetCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacetCountImplCopyWith<_$FacetCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacetStats _$FacetStatsFromJson(Map<String, dynamic> json) {
  return _FacetStats.fromJson(json);
}

/// @nodoc
mixin _$FacetStats {
  double get avg => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_values')
  int get totalValues => throw _privateConstructorUsedError;

  /// Serializes this FacetStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacetStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacetStatsCopyWith<FacetStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacetStatsCopyWith<$Res> {
  factory $FacetStatsCopyWith(
    FacetStats value,
    $Res Function(FacetStats) then,
  ) = _$FacetStatsCopyWithImpl<$Res, FacetStats>;
  @useResult
  $Res call({
    double avg,
    double max,
    double min,
    double sum,
    @JsonKey(name: 'total_values') int totalValues,
  });
}

/// @nodoc
class _$FacetStatsCopyWithImpl<$Res, $Val extends FacetStats>
    implements $FacetStatsCopyWith<$Res> {
  _$FacetStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacetStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avg = null,
    Object? max = null,
    Object? min = null,
    Object? sum = null,
    Object? totalValues = null,
  }) {
    return _then(
      _value.copyWith(
            avg: null == avg
                ? _value.avg
                : avg // ignore: cast_nullable_to_non_nullable
                      as double,
            max: null == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                      as double,
            min: null == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                      as double,
            sum: null == sum
                ? _value.sum
                : sum // ignore: cast_nullable_to_non_nullable
                      as double,
            totalValues: null == totalValues
                ? _value.totalValues
                : totalValues // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FacetStatsImplCopyWith<$Res>
    implements $FacetStatsCopyWith<$Res> {
  factory _$$FacetStatsImplCopyWith(
    _$FacetStatsImpl value,
    $Res Function(_$FacetStatsImpl) then,
  ) = __$$FacetStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double avg,
    double max,
    double min,
    double sum,
    @JsonKey(name: 'total_values') int totalValues,
  });
}

/// @nodoc
class __$$FacetStatsImplCopyWithImpl<$Res>
    extends _$FacetStatsCopyWithImpl<$Res, _$FacetStatsImpl>
    implements _$$FacetStatsImplCopyWith<$Res> {
  __$$FacetStatsImplCopyWithImpl(
    _$FacetStatsImpl _value,
    $Res Function(_$FacetStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FacetStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avg = null,
    Object? max = null,
    Object? min = null,
    Object? sum = null,
    Object? totalValues = null,
  }) {
    return _then(
      _$FacetStatsImpl(
        avg: null == avg
            ? _value.avg
            : avg // ignore: cast_nullable_to_non_nullable
                  as double,
        max: null == max
            ? _value.max
            : max // ignore: cast_nullable_to_non_nullable
                  as double,
        min: null == min
            ? _value.min
            : min // ignore: cast_nullable_to_non_nullable
                  as double,
        sum: null == sum
            ? _value.sum
            : sum // ignore: cast_nullable_to_non_nullable
                  as double,
        totalValues: null == totalValues
            ? _value.totalValues
            : totalValues // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FacetStatsImpl implements _FacetStats {
  const _$FacetStatsImpl({
    this.avg = 0.0,
    this.max = 0.0,
    this.min = 0.0,
    this.sum = 0.0,
    @JsonKey(name: 'total_values') this.totalValues = 0,
  });

  factory _$FacetStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacetStatsImplFromJson(json);

  @override
  @JsonKey()
  final double avg;
  @override
  @JsonKey()
  final double max;
  @override
  @JsonKey()
  final double min;
  @override
  @JsonKey()
  final double sum;
  @override
  @JsonKey(name: 'total_values')
  final int totalValues;

  @override
  String toString() {
    return 'FacetStats(avg: $avg, max: $max, min: $min, sum: $sum, totalValues: $totalValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacetStatsImpl &&
            (identical(other.avg, avg) || other.avg == avg) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.totalValues, totalValues) ||
                other.totalValues == totalValues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avg, max, min, sum, totalValues);

  /// Create a copy of FacetStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacetStatsImplCopyWith<_$FacetStatsImpl> get copyWith =>
      __$$FacetStatsImplCopyWithImpl<_$FacetStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacetStatsImplToJson(this);
  }
}

abstract class _FacetStats implements FacetStats {
  const factory _FacetStats({
    final double avg,
    final double max,
    final double min,
    final double sum,
    @JsonKey(name: 'total_values') final int totalValues,
  }) = _$FacetStatsImpl;

  factory _FacetStats.fromJson(Map<String, dynamic> json) =
      _$FacetStatsImpl.fromJson;

  @override
  double get avg;
  @override
  double get max;
  @override
  double get min;
  @override
  double get sum;
  @override
  @JsonKey(name: 'total_values')
  int get totalValues;

  /// Create a copy of FacetStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacetStatsImplCopyWith<_$FacetStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
