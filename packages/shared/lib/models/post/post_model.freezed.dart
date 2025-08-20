// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get startAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set startAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get endAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set endAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String? get titleEn => throw _privateConstructorUsedError;
  set titleEn(String? value) => throw _privateConstructorUsedError;
  String? get titleAr => throw _privateConstructorUsedError;
  set titleAr(String? value) => throw _privateConstructorUsedError;
  String? get subTitleEn => throw _privateConstructorUsedError;
  set subTitleEn(String? value) => throw _privateConstructorUsedError;
  String? get subTitleAr => throw _privateConstructorUsedError;
  set subTitleAr(String? value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  List<String>? get audienceTags => throw _privateConstructorUsedError;
  set audienceTags(List<String>? value) =>
      throw _privateConstructorUsedError; // "guest", "loggedIn", "vip", etc.
  String get indexName =>
      throw _privateConstructorUsedError; // "guest", "loggedIn", "vip", etc.
  set indexName(String value) => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  set published(bool value) => throw _privateConstructorUsedError;
  LayoutModel? get layout => throw _privateConstructorUsedError;
  set layout(LayoutModel? value) => throw _privateConstructorUsedError;
  PostFilterModel? get filters => throw _privateConstructorUsedError;
  set filters(PostFilterModel? value) =>
      throw _privateConstructorUsedError; // handles Algolia filters
  CTAModel? get cta =>
      throw _privateConstructorUsedError; // handles Algolia filters
  set cta(CTAModel? value) =>
      throw _privateConstructorUsedError; // optional tap action
  List<PostItemModel> get items =>
      throw _privateConstructorUsedError; // optional tap action
  set items(List<PostItemModel> value) => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? startAt,
    @TimestampSerializer() DateTime? endAt,
    String id,
    String? titleEn,
    String? titleAr,
    String? subTitleEn,
    String? subTitleAr,
    String type,
    List<String>? audienceTags,
    String indexName,
    int order,
    bool published,
    LayoutModel? layout,
    PostFilterModel? filters,
    CTAModel? cta,
    List<PostItemModel> items,
  });

  $LayoutModelCopyWith<$Res>? get layout;
  $PostFilterModelCopyWith<$Res>? get filters;
  $CTAModelCopyWith<$Res>? get cta;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? id = null,
    Object? titleEn = freezed,
    Object? titleAr = freezed,
    Object? subTitleEn = freezed,
    Object? subTitleAr = freezed,
    Object? type = null,
    Object? audienceTags = freezed,
    Object? indexName = null,
    Object? order = null,
    Object? published = null,
    Object? layout = freezed,
    Object? filters = freezed,
    Object? cta = freezed,
    Object? items = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            startAt: freezed == startAt
                ? _value.startAt
                : startAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endAt: freezed == endAt
                ? _value.endAt
                : endAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            titleEn: freezed == titleEn
                ? _value.titleEn
                : titleEn // ignore: cast_nullable_to_non_nullable
                      as String?,
            titleAr: freezed == titleAr
                ? _value.titleAr
                : titleAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            subTitleEn: freezed == subTitleEn
                ? _value.subTitleEn
                : subTitleEn // ignore: cast_nullable_to_non_nullable
                      as String?,
            subTitleAr: freezed == subTitleAr
                ? _value.subTitleAr
                : subTitleAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            audienceTags: freezed == audienceTags
                ? _value.audienceTags
                : audienceTags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            indexName: null == indexName
                ? _value.indexName
                : indexName // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            published: null == published
                ? _value.published
                : published // ignore: cast_nullable_to_non_nullable
                      as bool,
            layout: freezed == layout
                ? _value.layout
                : layout // ignore: cast_nullable_to_non_nullable
                      as LayoutModel?,
            filters: freezed == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as PostFilterModel?,
            cta: freezed == cta
                ? _value.cta
                : cta // ignore: cast_nullable_to_non_nullable
                      as CTAModel?,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<PostItemModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LayoutModelCopyWith<$Res>? get layout {
    if (_value.layout == null) {
      return null;
    }

    return $LayoutModelCopyWith<$Res>(_value.layout!, (value) {
      return _then(_value.copyWith(layout: value) as $Val);
    });
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostFilterModelCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $PostFilterModelCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CTAModelCopyWith<$Res>? get cta {
    if (_value.cta == null) {
      return null;
    }

    return $CTAModelCopyWith<$Res>(_value.cta!, (value) {
      return _then(_value.copyWith(cta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
    _$PostModelImpl value,
    $Res Function(_$PostModelImpl) then,
  ) = __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? startAt,
    @TimestampSerializer() DateTime? endAt,
    String id,
    String? titleEn,
    String? titleAr,
    String? subTitleEn,
    String? subTitleAr,
    String type,
    List<String>? audienceTags,
    String indexName,
    int order,
    bool published,
    LayoutModel? layout,
    PostFilterModel? filters,
    CTAModel? cta,
    List<PostItemModel> items,
  });

  @override
  $LayoutModelCopyWith<$Res>? get layout;
  @override
  $PostFilterModelCopyWith<$Res>? get filters;
  @override
  $CTAModelCopyWith<$Res>? get cta;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
    _$PostModelImpl _value,
    $Res Function(_$PostModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? id = null,
    Object? titleEn = freezed,
    Object? titleAr = freezed,
    Object? subTitleEn = freezed,
    Object? subTitleAr = freezed,
    Object? type = null,
    Object? audienceTags = freezed,
    Object? indexName = null,
    Object? order = null,
    Object? published = null,
    Object? layout = freezed,
    Object? filters = freezed,
    Object? cta = freezed,
    Object? items = null,
  }) {
    return _then(
      _$PostModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        startAt: freezed == startAt
            ? _value.startAt
            : startAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endAt: freezed == endAt
            ? _value.endAt
            : endAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        titleEn: freezed == titleEn
            ? _value.titleEn
            : titleEn // ignore: cast_nullable_to_non_nullable
                  as String?,
        titleAr: freezed == titleAr
            ? _value.titleAr
            : titleAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        subTitleEn: freezed == subTitleEn
            ? _value.subTitleEn
            : subTitleEn // ignore: cast_nullable_to_non_nullable
                  as String?,
        subTitleAr: freezed == subTitleAr
            ? _value.subTitleAr
            : subTitleAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        audienceTags: freezed == audienceTags
            ? _value.audienceTags
            : audienceTags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        indexName: null == indexName
            ? _value.indexName
            : indexName // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        published: null == published
            ? _value.published
            : published // ignore: cast_nullable_to_non_nullable
                  as bool,
        layout: freezed == layout
            ? _value.layout
            : layout // ignore: cast_nullable_to_non_nullable
                  as LayoutModel?,
        filters: freezed == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as PostFilterModel?,
        cta: freezed == cta
            ? _value.cta
            : cta // ignore: cast_nullable_to_non_nullable
                  as CTAModel?,
        items: null == items
            ? _value.items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<PostItemModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl extends _PostModel {
  _$PostModelImpl({
    @TimestampSerializer() this.createdAt,
    @TimestampSerializer() this.startAt,
    @TimestampSerializer() this.endAt,
    this.id = '',
    this.titleEn,
    this.titleAr,
    this.subTitleEn,
    this.subTitleAr,
    this.type = '',
    this.audienceTags,
    this.indexName = '',
    this.order = 0,
    this.published = false,
    this.layout,
    this.filters,
    this.cta,
    this.items = const [],
  }) : super._();

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @TimestampSerializer()
  DateTime? startAt;
  @override
  @TimestampSerializer()
  DateTime? endAt;
  @override
  @JsonKey()
  String id;
  @override
  String? titleEn;
  @override
  String? titleAr;
  @override
  String? subTitleEn;
  @override
  String? subTitleAr;
  @override
  @JsonKey()
  String type;
  @override
  List<String>? audienceTags;
  // "guest", "loggedIn", "vip", etc.
  @override
  @JsonKey()
  String indexName;
  @override
  @JsonKey()
  int order;
  @override
  @JsonKey()
  bool published;
  @override
  LayoutModel? layout;
  @override
  PostFilterModel? filters;
  // handles Algolia filters
  @override
  CTAModel? cta;
  // optional tap action
  @override
  @JsonKey()
  List<PostItemModel> items;

  @override
  String toString() {
    return 'PostModel(createdAt: $createdAt, startAt: $startAt, endAt: $endAt, id: $id, titleEn: $titleEn, titleAr: $titleAr, subTitleEn: $subTitleEn, subTitleAr: $subTitleAr, type: $type, audienceTags: $audienceTags, indexName: $indexName, order: $order, published: $published, layout: $layout, filters: $filters, cta: $cta, items: $items)';
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(this);
  }
}

abstract class _PostModel extends PostModel {
  factory _PostModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? startAt,
    @TimestampSerializer() DateTime? endAt,
    String id,
    String? titleEn,
    String? titleAr,
    String? subTitleEn,
    String? subTitleAr,
    String type,
    List<String>? audienceTags,
    String indexName,
    int order,
    bool published,
    LayoutModel? layout,
    PostFilterModel? filters,
    CTAModel? cta,
    List<PostItemModel> items,
  }) = _$PostModelImpl;
  _PostModel._() : super._();

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get startAt;
  @TimestampSerializer()
  set startAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get endAt;
  @TimestampSerializer()
  set endAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String? get titleEn;
  set titleEn(String? value);
  @override
  String? get titleAr;
  set titleAr(String? value);
  @override
  String? get subTitleEn;
  set subTitleEn(String? value);
  @override
  String? get subTitleAr;
  set subTitleAr(String? value);
  @override
  String get type;
  set type(String value);
  @override
  List<String>? get audienceTags;
  set audienceTags(List<String>? value); // "guest", "loggedIn", "vip", etc.
  @override
  String get indexName; // "guest", "loggedIn", "vip", etc.
  set indexName(String value);
  @override
  int get order;
  set order(int value);
  @override
  bool get published;
  set published(bool value);
  @override
  LayoutModel? get layout;
  set layout(LayoutModel? value);
  @override
  PostFilterModel? get filters;
  set filters(PostFilterModel? value); // handles Algolia filters
  @override
  CTAModel? get cta; // handles Algolia filters
  set cta(CTAModel? value); // optional tap action
  @override
  List<PostItemModel> get items; // optional tap action
  set items(List<PostItemModel> value);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LayoutModel _$LayoutModelFromJson(Map<String, dynamic> json) {
  return _LayoutModel.fromJson(json);
}

/// @nodoc
mixin _$LayoutModel {
  String get style =>
      throw _privateConstructorUsedError; // e.g. default, rounded, small, large, twoColumn
  String get scrollDirection =>
      throw _privateConstructorUsedError; // horizontal, vertical
  int get crossAxisCount => throw _privateConstructorUsedError; // for grids
  double get aspectRatio => throw _privateConstructorUsedError; // width/height
  double get cornerRadius => throw _privateConstructorUsedError;
  double get spacing => throw _privateConstructorUsedError;
  bool get showDiscountBadge => throw _privateConstructorUsedError;

  /// Serializes this LayoutModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LayoutModelCopyWith<LayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutModelCopyWith<$Res> {
  factory $LayoutModelCopyWith(
    LayoutModel value,
    $Res Function(LayoutModel) then,
  ) = _$LayoutModelCopyWithImpl<$Res, LayoutModel>;
  @useResult
  $Res call({
    String style,
    String scrollDirection,
    int crossAxisCount,
    double aspectRatio,
    double cornerRadius,
    double spacing,
    bool showDiscountBadge,
  });
}

/// @nodoc
class _$LayoutModelCopyWithImpl<$Res, $Val extends LayoutModel>
    implements $LayoutModelCopyWith<$Res> {
  _$LayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? scrollDirection = null,
    Object? crossAxisCount = null,
    Object? aspectRatio = null,
    Object? cornerRadius = null,
    Object? spacing = null,
    Object? showDiscountBadge = null,
  }) {
    return _then(
      _value.copyWith(
            style: null == style
                ? _value.style
                : style // ignore: cast_nullable_to_non_nullable
                      as String,
            scrollDirection: null == scrollDirection
                ? _value.scrollDirection
                : scrollDirection // ignore: cast_nullable_to_non_nullable
                      as String,
            crossAxisCount: null == crossAxisCount
                ? _value.crossAxisCount
                : crossAxisCount // ignore: cast_nullable_to_non_nullable
                      as int,
            aspectRatio: null == aspectRatio
                ? _value.aspectRatio
                : aspectRatio // ignore: cast_nullable_to_non_nullable
                      as double,
            cornerRadius: null == cornerRadius
                ? _value.cornerRadius
                : cornerRadius // ignore: cast_nullable_to_non_nullable
                      as double,
            spacing: null == spacing
                ? _value.spacing
                : spacing // ignore: cast_nullable_to_non_nullable
                      as double,
            showDiscountBadge: null == showDiscountBadge
                ? _value.showDiscountBadge
                : showDiscountBadge // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LayoutModelImplCopyWith<$Res>
    implements $LayoutModelCopyWith<$Res> {
  factory _$$LayoutModelImplCopyWith(
    _$LayoutModelImpl value,
    $Res Function(_$LayoutModelImpl) then,
  ) = __$$LayoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String style,
    String scrollDirection,
    int crossAxisCount,
    double aspectRatio,
    double cornerRadius,
    double spacing,
    bool showDiscountBadge,
  });
}

/// @nodoc
class __$$LayoutModelImplCopyWithImpl<$Res>
    extends _$LayoutModelCopyWithImpl<$Res, _$LayoutModelImpl>
    implements _$$LayoutModelImplCopyWith<$Res> {
  __$$LayoutModelImplCopyWithImpl(
    _$LayoutModelImpl _value,
    $Res Function(_$LayoutModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
    Object? scrollDirection = null,
    Object? crossAxisCount = null,
    Object? aspectRatio = null,
    Object? cornerRadius = null,
    Object? spacing = null,
    Object? showDiscountBadge = null,
  }) {
    return _then(
      _$LayoutModelImpl(
        style: null == style
            ? _value.style
            : style // ignore: cast_nullable_to_non_nullable
                  as String,
        scrollDirection: null == scrollDirection
            ? _value.scrollDirection
            : scrollDirection // ignore: cast_nullable_to_non_nullable
                  as String,
        crossAxisCount: null == crossAxisCount
            ? _value.crossAxisCount
            : crossAxisCount // ignore: cast_nullable_to_non_nullable
                  as int,
        aspectRatio: null == aspectRatio
            ? _value.aspectRatio
            : aspectRatio // ignore: cast_nullable_to_non_nullable
                  as double,
        cornerRadius: null == cornerRadius
            ? _value.cornerRadius
            : cornerRadius // ignore: cast_nullable_to_non_nullable
                  as double,
        spacing: null == spacing
            ? _value.spacing
            : spacing // ignore: cast_nullable_to_non_nullable
                  as double,
        showDiscountBadge: null == showDiscountBadge
            ? _value.showDiscountBadge
            : showDiscountBadge // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LayoutModelImpl implements _LayoutModel {
  _$LayoutModelImpl({
    this.style = 'default',
    this.scrollDirection = 'horizontal',
    this.crossAxisCount = 1,
    this.aspectRatio = 1.6,
    this.cornerRadius = 12,
    this.spacing = 8,
    this.showDiscountBadge = true,
  });

  factory _$LayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutModelImplFromJson(json);

  @override
  @JsonKey()
  final String style;
  // e.g. default, rounded, small, large, twoColumn
  @override
  @JsonKey()
  final String scrollDirection;
  // horizontal, vertical
  @override
  @JsonKey()
  final int crossAxisCount;
  // for grids
  @override
  @JsonKey()
  final double aspectRatio;
  // width/height
  @override
  @JsonKey()
  final double cornerRadius;
  @override
  @JsonKey()
  final double spacing;
  @override
  @JsonKey()
  final bool showDiscountBadge;

  @override
  String toString() {
    return 'LayoutModel(style: $style, scrollDirection: $scrollDirection, crossAxisCount: $crossAxisCount, aspectRatio: $aspectRatio, cornerRadius: $cornerRadius, spacing: $spacing, showDiscountBadge: $showDiscountBadge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutModelImpl &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.crossAxisCount, crossAxisCount) ||
                other.crossAxisCount == crossAxisCount) &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.cornerRadius, cornerRadius) ||
                other.cornerRadius == cornerRadius) &&
            (identical(other.spacing, spacing) || other.spacing == spacing) &&
            (identical(other.showDiscountBadge, showDiscountBadge) ||
                other.showDiscountBadge == showDiscountBadge));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    style,
    scrollDirection,
    crossAxisCount,
    aspectRatio,
    cornerRadius,
    spacing,
    showDiscountBadge,
  );

  /// Create a copy of LayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutModelImplCopyWith<_$LayoutModelImpl> get copyWith =>
      __$$LayoutModelImplCopyWithImpl<_$LayoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayoutModelImplToJson(this);
  }
}

abstract class _LayoutModel implements LayoutModel {
  factory _LayoutModel({
    final String style,
    final String scrollDirection,
    final int crossAxisCount,
    final double aspectRatio,
    final double cornerRadius,
    final double spacing,
    final bool showDiscountBadge,
  }) = _$LayoutModelImpl;

  factory _LayoutModel.fromJson(Map<String, dynamic> json) =
      _$LayoutModelImpl.fromJson;

  @override
  String get style; // e.g. default, rounded, small, large, twoColumn
  @override
  String get scrollDirection; // horizontal, vertical
  @override
  int get crossAxisCount; // for grids
  @override
  double get aspectRatio; // width/height
  @override
  double get cornerRadius;
  @override
  double get spacing;
  @override
  bool get showDiscountBadge;

  /// Create a copy of LayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LayoutModelImplCopyWith<_$LayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFilterModel _$PostFilterModelFromJson(Map<String, dynamic> json) {
  return _PostFilterModel.fromJson(json);
}

/// @nodoc
mixin _$PostFilterModel {
  List<String>? get facetFilters =>
      throw _privateConstructorUsedError; // ex: ['tags:summer_sale']
  List<String>? get tags =>
      throw _privateConstructorUsedError; // ex: ['tags:summer_sale']
  List<String>? get numericFilters =>
      throw _privateConstructorUsedError; // ex: ['discountPercent >= 30']
  String get query => throw _privateConstructorUsedError; // optional keyword
  int get hitsPerPage => throw _privateConstructorUsedError;
  bool get enablePersonalization => throw _privateConstructorUsedError;

  /// Serializes this PostFilterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostFilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFilterModelCopyWith<PostFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFilterModelCopyWith<$Res> {
  factory $PostFilterModelCopyWith(
    PostFilterModel value,
    $Res Function(PostFilterModel) then,
  ) = _$PostFilterModelCopyWithImpl<$Res, PostFilterModel>;
  @useResult
  $Res call({
    List<String>? facetFilters,
    List<String>? tags,
    List<String>? numericFilters,
    String query,
    int hitsPerPage,
    bool enablePersonalization,
  });
}

/// @nodoc
class _$PostFilterModelCopyWithImpl<$Res, $Val extends PostFilterModel>
    implements $PostFilterModelCopyWith<$Res> {
  _$PostFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostFilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facetFilters = freezed,
    Object? tags = freezed,
    Object? numericFilters = freezed,
    Object? query = null,
    Object? hitsPerPage = null,
    Object? enablePersonalization = null,
  }) {
    return _then(
      _value.copyWith(
            facetFilters: freezed == facetFilters
                ? _value.facetFilters
                : facetFilters // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            numericFilters: freezed == numericFilters
                ? _value.numericFilters
                : numericFilters // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            hitsPerPage: null == hitsPerPage
                ? _value.hitsPerPage
                : hitsPerPage // ignore: cast_nullable_to_non_nullable
                      as int,
            enablePersonalization: null == enablePersonalization
                ? _value.enablePersonalization
                : enablePersonalization // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostFilterModelImplCopyWith<$Res>
    implements $PostFilterModelCopyWith<$Res> {
  factory _$$PostFilterModelImplCopyWith(
    _$PostFilterModelImpl value,
    $Res Function(_$PostFilterModelImpl) then,
  ) = __$$PostFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String>? facetFilters,
    List<String>? tags,
    List<String>? numericFilters,
    String query,
    int hitsPerPage,
    bool enablePersonalization,
  });
}

/// @nodoc
class __$$PostFilterModelImplCopyWithImpl<$Res>
    extends _$PostFilterModelCopyWithImpl<$Res, _$PostFilterModelImpl>
    implements _$$PostFilterModelImplCopyWith<$Res> {
  __$$PostFilterModelImplCopyWithImpl(
    _$PostFilterModelImpl _value,
    $Res Function(_$PostFilterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostFilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facetFilters = freezed,
    Object? tags = freezed,
    Object? numericFilters = freezed,
    Object? query = null,
    Object? hitsPerPage = null,
    Object? enablePersonalization = null,
  }) {
    return _then(
      _$PostFilterModelImpl(
        facetFilters: freezed == facetFilters
            ? _value._facetFilters
            : facetFilters // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        numericFilters: freezed == numericFilters
            ? _value._numericFilters
            : numericFilters // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        hitsPerPage: null == hitsPerPage
            ? _value.hitsPerPage
            : hitsPerPage // ignore: cast_nullable_to_non_nullable
                  as int,
        enablePersonalization: null == enablePersonalization
            ? _value.enablePersonalization
            : enablePersonalization // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFilterModelImpl implements _PostFilterModel {
  const _$PostFilterModelImpl({
    final List<String>? facetFilters,
    final List<String>? tags,
    final List<String>? numericFilters,
    this.query = '',
    this.hitsPerPage = 20,
    this.enablePersonalization = false,
  }) : _facetFilters = facetFilters,
       _tags = tags,
       _numericFilters = numericFilters;

  factory _$PostFilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFilterModelImplFromJson(json);

  final List<String>? _facetFilters;
  @override
  List<String>? get facetFilters {
    final value = _facetFilters;
    if (value == null) return null;
    if (_facetFilters is EqualUnmodifiableListView) return _facetFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // ex: ['tags:summer_sale']
  final List<String>? _tags;
  // ex: ['tags:summer_sale']
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // ex: ['tags:summer_sale']
  final List<String>? _numericFilters;
  // ex: ['tags:summer_sale']
  @override
  List<String>? get numericFilters {
    final value = _numericFilters;
    if (value == null) return null;
    if (_numericFilters is EqualUnmodifiableListView) return _numericFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // ex: ['discountPercent >= 30']
  @override
  @JsonKey()
  final String query;
  // optional keyword
  @override
  @JsonKey()
  final int hitsPerPage;
  @override
  @JsonKey()
  final bool enablePersonalization;

  @override
  String toString() {
    return 'PostFilterModel(facetFilters: $facetFilters, tags: $tags, numericFilters: $numericFilters, query: $query, hitsPerPage: $hitsPerPage, enablePersonalization: $enablePersonalization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFilterModelImpl &&
            const DeepCollectionEquality().equals(
              other._facetFilters,
              _facetFilters,
            ) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(
              other._numericFilters,
              _numericFilters,
            ) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.hitsPerPage, hitsPerPage) ||
                other.hitsPerPage == hitsPerPage) &&
            (identical(other.enablePersonalization, enablePersonalization) ||
                other.enablePersonalization == enablePersonalization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_facetFilters),
    const DeepCollectionEquality().hash(_tags),
    const DeepCollectionEquality().hash(_numericFilters),
    query,
    hitsPerPage,
    enablePersonalization,
  );

  /// Create a copy of PostFilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFilterModelImplCopyWith<_$PostFilterModelImpl> get copyWith =>
      __$$PostFilterModelImplCopyWithImpl<_$PostFilterModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFilterModelImplToJson(this);
  }
}

abstract class _PostFilterModel implements PostFilterModel {
  const factory _PostFilterModel({
    final List<String>? facetFilters,
    final List<String>? tags,
    final List<String>? numericFilters,
    final String query,
    final int hitsPerPage,
    final bool enablePersonalization,
  }) = _$PostFilterModelImpl;

  factory _PostFilterModel.fromJson(Map<String, dynamic> json) =
      _$PostFilterModelImpl.fromJson;

  @override
  List<String>? get facetFilters; // ex: ['tags:summer_sale']
  @override
  List<String>? get tags; // ex: ['tags:summer_sale']
  @override
  List<String>? get numericFilters; // ex: ['discountPercent >= 30']
  @override
  String get query; // optional keyword
  @override
  int get hitsPerPage;
  @override
  bool get enablePersonalization;

  /// Create a copy of PostFilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFilterModelImplCopyWith<_$PostFilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CTAModel _$CTAModelFromJson(Map<String, dynamic> json) {
  return _CTAModel.fromJson(json);
}

/// @nodoc
mixin _$CTAModel {
  String get title => throw _privateConstructorUsedError;
  String get target =>
      throw _privateConstructorUsedError; // ex: product_list, category_grid, custom_route
  FilterModel? get filters => throw _privateConstructorUsedError;

  /// Serializes this CTAModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CTAModelCopyWith<CTAModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CTAModelCopyWith<$Res> {
  factory $CTAModelCopyWith(CTAModel value, $Res Function(CTAModel) then) =
      _$CTAModelCopyWithImpl<$Res, CTAModel>;
  @useResult
  $Res call({String title, String target, FilterModel? filters});

  $FilterModelCopyWith<$Res>? get filters;
}

/// @nodoc
class _$CTAModelCopyWithImpl<$Res, $Val extends CTAModel>
    implements $CTAModelCopyWith<$Res> {
  _$CTAModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? target = null,
    Object? filters = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            target: null == target
                ? _value.target
                : target // ignore: cast_nullable_to_non_nullable
                      as String,
            filters: freezed == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as FilterModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $FilterModelCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CTAModelImplCopyWith<$Res>
    implements $CTAModelCopyWith<$Res> {
  factory _$$CTAModelImplCopyWith(
    _$CTAModelImpl value,
    $Res Function(_$CTAModelImpl) then,
  ) = __$$CTAModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String target, FilterModel? filters});

  @override
  $FilterModelCopyWith<$Res>? get filters;
}

/// @nodoc
class __$$CTAModelImplCopyWithImpl<$Res>
    extends _$CTAModelCopyWithImpl<$Res, _$CTAModelImpl>
    implements _$$CTAModelImplCopyWith<$Res> {
  __$$CTAModelImplCopyWithImpl(
    _$CTAModelImpl _value,
    $Res Function(_$CTAModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? target = null,
    Object? filters = freezed,
  }) {
    return _then(
      _$CTAModelImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        target: null == target
            ? _value.target
            : target // ignore: cast_nullable_to_non_nullable
                  as String,
        filters: freezed == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as FilterModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CTAModelImpl implements _CTAModel {
  const _$CTAModelImpl({this.title = '', this.target = '', this.filters});

  factory _$CTAModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CTAModelImplFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String target;
  // ex: product_list, category_grid, custom_route
  @override
  final FilterModel? filters;

  @override
  String toString() {
    return 'CTAModel(title: $title, target: $target, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CTAModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, target, filters);

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CTAModelImplCopyWith<_$CTAModelImpl> get copyWith =>
      __$$CTAModelImplCopyWithImpl<_$CTAModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CTAModelImplToJson(this);
  }
}

abstract class _CTAModel implements CTAModel {
  const factory _CTAModel({
    final String title,
    final String target,
    final FilterModel? filters,
  }) = _$CTAModelImpl;

  factory _CTAModel.fromJson(Map<String, dynamic> json) =
      _$CTAModelImpl.fromJson;

  @override
  String get title;
  @override
  String get target; // ex: product_list, category_grid, custom_route
  @override
  FilterModel? get filters;

  /// Create a copy of CTAModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CTAModelImplCopyWith<_$CTAModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostItemModel _$PostItemModelFromJson(Map<String, dynamic> json) {
  return _PostItemModel.fromJson(json);
}

/// @nodoc
mixin _$PostItemModel {
  String get imageEn => throw _privateConstructorUsedError;
  String get imageAr => throw _privateConstructorUsedError;
  FilterModel? get filters => throw _privateConstructorUsedError;

  /// Serializes this PostItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostItemModelCopyWith<PostItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostItemModelCopyWith<$Res> {
  factory $PostItemModelCopyWith(
    PostItemModel value,
    $Res Function(PostItemModel) then,
  ) = _$PostItemModelCopyWithImpl<$Res, PostItemModel>;
  @useResult
  $Res call({String imageEn, String imageAr, FilterModel? filters});

  $FilterModelCopyWith<$Res>? get filters;
}

/// @nodoc
class _$PostItemModelCopyWithImpl<$Res, $Val extends PostItemModel>
    implements $PostItemModelCopyWith<$Res> {
  _$PostItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageEn = null,
    Object? imageAr = null,
    Object? filters = freezed,
  }) {
    return _then(
      _value.copyWith(
            imageEn: null == imageEn
                ? _value.imageEn
                : imageEn // ignore: cast_nullable_to_non_nullable
                      as String,
            imageAr: null == imageAr
                ? _value.imageAr
                : imageAr // ignore: cast_nullable_to_non_nullable
                      as String,
            filters: freezed == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as FilterModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res>? get filters {
    if (_value.filters == null) {
      return null;
    }

    return $FilterModelCopyWith<$Res>(_value.filters!, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostItemModelImplCopyWith<$Res>
    implements $PostItemModelCopyWith<$Res> {
  factory _$$PostItemModelImplCopyWith(
    _$PostItemModelImpl value,
    $Res Function(_$PostItemModelImpl) then,
  ) = __$$PostItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageEn, String imageAr, FilterModel? filters});

  @override
  $FilterModelCopyWith<$Res>? get filters;
}

/// @nodoc
class __$$PostItemModelImplCopyWithImpl<$Res>
    extends _$PostItemModelCopyWithImpl<$Res, _$PostItemModelImpl>
    implements _$$PostItemModelImplCopyWith<$Res> {
  __$$PostItemModelImplCopyWithImpl(
    _$PostItemModelImpl _value,
    $Res Function(_$PostItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageEn = null,
    Object? imageAr = null,
    Object? filters = freezed,
  }) {
    return _then(
      _$PostItemModelImpl(
        imageEn: null == imageEn
            ? _value.imageEn
            : imageEn // ignore: cast_nullable_to_non_nullable
                  as String,
        imageAr: null == imageAr
            ? _value.imageAr
            : imageAr // ignore: cast_nullable_to_non_nullable
                  as String,
        filters: freezed == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as FilterModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostItemModelImpl extends _PostItemModel {
  _$PostItemModelImpl({this.imageEn = '', this.imageAr = '', this.filters})
    : super._();

  factory _$PostItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostItemModelImplFromJson(json);

  @override
  @JsonKey()
  final String imageEn;
  @override
  @JsonKey()
  final String imageAr;
  @override
  final FilterModel? filters;

  @override
  String toString() {
    return 'PostItemModel(imageEn: $imageEn, imageAr: $imageAr, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostItemModelImpl &&
            (identical(other.imageEn, imageEn) || other.imageEn == imageEn) &&
            (identical(other.imageAr, imageAr) || other.imageAr == imageAr) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageEn, imageAr, filters);

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostItemModelImplCopyWith<_$PostItemModelImpl> get copyWith =>
      __$$PostItemModelImplCopyWithImpl<_$PostItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostItemModelImplToJson(this);
  }
}

abstract class _PostItemModel extends PostItemModel {
  factory _PostItemModel({
    final String imageEn,
    final String imageAr,
    final FilterModel? filters,
  }) = _$PostItemModelImpl;
  _PostItemModel._() : super._();

  factory _PostItemModel.fromJson(Map<String, dynamic> json) =
      _$PostItemModelImpl.fromJson;

  @override
  String get imageEn;
  @override
  String get imageAr;
  @override
  FilterModel? get filters;

  /// Create a copy of PostItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostItemModelImplCopyWith<_$PostItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
