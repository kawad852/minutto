// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  String get descriptionEn => throw _privateConstructorUsedError;
  set descriptionEn(String value) => throw _privateConstructorUsedError;
  String get descriptionAr => throw _privateConstructorUsedError;
  set descriptionAr(String value) => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String value) => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  set storeId(String? value) => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  set note(String? value) => throw _privateConstructorUsedError;
  String? get selectedColorId => throw _privateConstructorUsedError;
  set selectedColorId(String? value) => throw _privateConstructorUsedError;
  String? get selectedSizeId => throw _privateConstructorUsedError;
  set selectedSizeId(String? value) => throw _privateConstructorUsedError;
  double? get discountPrice => throw _privateConstructorUsedError;
  set discountPrice(double? value) => throw _privateConstructorUsedError;
  int get basketQuantity => throw _privateConstructorUsedError;
  set basketQuantity(int value) => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  set stockQuantity(int value) => throw _privateConstructorUsedError;
  int get purchasesCount => throw _privateConstructorUsedError;
  set purchasesCount(int value) => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  set basePrice(double value) => throw _privateConstructorUsedError;
  double get finalPrice => throw _privateConstructorUsedError;
  set finalPrice(double value) => throw _privateConstructorUsedError;
  List<MealOptionModel> get items => throw _privateConstructorUsedError;
  set items(List<MealOptionModel> value) => throw _privateConstructorUsedError;
  List<ColorOption> get colors => throw _privateConstructorUsedError;
  set colors(List<ColorOption> value) => throw _privateConstructorUsedError;
  List<SizeOption> get sizes => throw _privateConstructorUsedError;
  set sizes(List<SizeOption> value) => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  set images(List<String> value) => throw _privateConstructorUsedError;
  List<String> get categoryIds => throw _privateConstructorUsedError;
  set categoryIds(List<String> value) => throw _privateConstructorUsedError;
  bool get inStock => throw _privateConstructorUsedError;
  set inStock(bool value) => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  set published(bool value) => throw _privateConstructorUsedError;
  bool get isOnSale => throw _privateConstructorUsedError;
  set isOnSale(bool value) => throw _privateConstructorUsedError;
  bool get bestSeller => throw _privateConstructorUsedError;
  set bestSeller(bool value) => throw _privateConstructorUsedError;
  bool get trending => throw _privateConstructorUsedError;
  set trending(bool value) => throw _privateConstructorUsedError;
  double get discountPercent => throw _privateConstructorUsedError;
  set discountPercent(double value) =>
      throw _privateConstructorUsedError; // % discount calculated from basePrice and finalPrice
  int get viewsCount =>
      throw _privateConstructorUsedError; // % discount calculated from basePrice and finalPrice
  set viewsCount(int value) =>
      throw _privateConstructorUsedError; // Optional: track views if needed
  int get trendingScore =>
      throw _privateConstructorUsedError; // Optional: track views if needed
  set trendingScore(int value) =>
      throw _privateConstructorUsedError; // For "trending" or "popular" sorting
  String? get gender =>
      throw _privateConstructorUsedError; // For "trending" or "popular" sorting
  set gender(String? value) =>
      throw _privateConstructorUsedError; // "male", "female", "unisex" – for audience targeting
  @JsonKey(name: "_tags")
  List<String> get tags => throw _privateConstructorUsedError; // "male", "female", "unisex" – for audience targeting
  @JsonKey(name: "_tags")
  set tags(List<String> value) => throw _privateConstructorUsedError;
  List<double> get embedding => throw _privateConstructorUsedError;
  set embedding(List<double> value) => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  set brand(BrandModel? value) => throw _privateConstructorUsedError;
  RatingModel? get rating => throw _privateConstructorUsedError;
  set rating(RatingModel? value) => throw _privateConstructorUsedError;
  DimensionModel? get dimensions => throw _privateConstructorUsedError;
  set dimensions(DimensionModel? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? get review => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set review(ReviewModel? value) => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
    ProductModel value,
    $Res Function(ProductModel) then,
  ) = _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String thumbnail,
    String? storeId,
    String? note,
    String? selectedColorId,
    String? selectedSizeId,
    double? discountPrice,
    int basketQuantity,
    int stockQuantity,
    int purchasesCount,
    double basePrice,
    double finalPrice,
    List<MealOptionModel> items,
    List<ColorOption> colors,
    List<SizeOption> sizes,
    List<String> images,
    List<String> categoryIds,
    bool inStock,
    bool published,
    bool isOnSale,
    bool bestSeller,
    bool trending,
    double discountPercent,
    int viewsCount,
    int trendingScore,
    String? gender,
    @JsonKey(name: "_tags") List<String> tags,
    List<double> embedding,
    BrandModel? brand,
    RatingModel? rating,
    DimensionModel? dimensions,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  });

  $BrandModelCopyWith<$Res>? get brand;
  $RatingModelCopyWith<$Res>? get rating;
  $DimensionModelCopyWith<$Res>? get dimensions;
  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? thumbnail = null,
    Object? storeId = freezed,
    Object? note = freezed,
    Object? selectedColorId = freezed,
    Object? selectedSizeId = freezed,
    Object? discountPrice = freezed,
    Object? basketQuantity = null,
    Object? stockQuantity = null,
    Object? purchasesCount = null,
    Object? basePrice = null,
    Object? finalPrice = null,
    Object? items = null,
    Object? colors = null,
    Object? sizes = null,
    Object? images = null,
    Object? categoryIds = null,
    Object? inStock = null,
    Object? published = null,
    Object? isOnSale = null,
    Object? bestSeller = null,
    Object? trending = null,
    Object? discountPercent = null,
    Object? viewsCount = null,
    Object? trendingScore = null,
    Object? gender = freezed,
    Object? tags = null,
    Object? embedding = null,
    Object? brand = freezed,
    Object? rating = freezed,
    Object? dimensions = freezed,
    Object? review = freezed,
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
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            descriptionEn: null == descriptionEn
                ? _value.descriptionEn
                : descriptionEn // ignore: cast_nullable_to_non_nullable
                      as String,
            descriptionAr: null == descriptionAr
                ? _value.descriptionAr
                : descriptionAr // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            storeId: freezed == storeId
                ? _value.storeId
                : storeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedColorId: freezed == selectedColorId
                ? _value.selectedColorId
                : selectedColorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedSizeId: freezed == selectedSizeId
                ? _value.selectedSizeId
                : selectedSizeId // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountPrice: freezed == discountPrice
                ? _value.discountPrice
                : discountPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            basketQuantity: null == basketQuantity
                ? _value.basketQuantity
                : basketQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            stockQuantity: null == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            purchasesCount: null == purchasesCount
                ? _value.purchasesCount
                : purchasesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            finalPrice: null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<MealOptionModel>,
            colors: null == colors
                ? _value.colors
                : colors // ignore: cast_nullable_to_non_nullable
                      as List<ColorOption>,
            sizes: null == sizes
                ? _value.sizes
                : sizes // ignore: cast_nullable_to_non_nullable
                      as List<SizeOption>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            categoryIds: null == categoryIds
                ? _value.categoryIds
                : categoryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            inStock: null == inStock
                ? _value.inStock
                : inStock // ignore: cast_nullable_to_non_nullable
                      as bool,
            published: null == published
                ? _value.published
                : published // ignore: cast_nullable_to_non_nullable
                      as bool,
            isOnSale: null == isOnSale
                ? _value.isOnSale
                : isOnSale // ignore: cast_nullable_to_non_nullable
                      as bool,
            bestSeller: null == bestSeller
                ? _value.bestSeller
                : bestSeller // ignore: cast_nullable_to_non_nullable
                      as bool,
            trending: null == trending
                ? _value.trending
                : trending // ignore: cast_nullable_to_non_nullable
                      as bool,
            discountPercent: null == discountPercent
                ? _value.discountPercent
                : discountPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            viewsCount: null == viewsCount
                ? _value.viewsCount
                : viewsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            trendingScore: null == trendingScore
                ? _value.trendingScore
                : trendingScore // ignore: cast_nullable_to_non_nullable
                      as int,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            embedding: null == embedding
                ? _value.embedding
                : embedding // ignore: cast_nullable_to_non_nullable
                      as List<double>,
            brand: freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                      as BrandModel?,
            rating: freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as RatingModel?,
            dimensions: freezed == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                      as DimensionModel?,
            review: freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as ReviewModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingModelCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionModelCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionModelCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewModelCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewModelCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
    _$ProductModelImpl value,
    $Res Function(_$ProductModelImpl) then,
  ) = __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String thumbnail,
    String? storeId,
    String? note,
    String? selectedColorId,
    String? selectedSizeId,
    double? discountPrice,
    int basketQuantity,
    int stockQuantity,
    int purchasesCount,
    double basePrice,
    double finalPrice,
    List<MealOptionModel> items,
    List<ColorOption> colors,
    List<SizeOption> sizes,
    List<String> images,
    List<String> categoryIds,
    bool inStock,
    bool published,
    bool isOnSale,
    bool bestSeller,
    bool trending,
    double discountPercent,
    int viewsCount,
    int trendingScore,
    String? gender,
    @JsonKey(name: "_tags") List<String> tags,
    List<double> embedding,
    BrandModel? brand,
    RatingModel? rating,
    DimensionModel? dimensions,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  });

  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $RatingModelCopyWith<$Res>? get rating;
  @override
  $DimensionModelCopyWith<$Res>? get dimensions;
  @override
  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
    _$ProductModelImpl _value,
    $Res Function(_$ProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? thumbnail = null,
    Object? storeId = freezed,
    Object? note = freezed,
    Object? selectedColorId = freezed,
    Object? selectedSizeId = freezed,
    Object? discountPrice = freezed,
    Object? basketQuantity = null,
    Object? stockQuantity = null,
    Object? purchasesCount = null,
    Object? basePrice = null,
    Object? finalPrice = null,
    Object? items = null,
    Object? colors = null,
    Object? sizes = null,
    Object? images = null,
    Object? categoryIds = null,
    Object? inStock = null,
    Object? published = null,
    Object? isOnSale = null,
    Object? bestSeller = null,
    Object? trending = null,
    Object? discountPercent = null,
    Object? viewsCount = null,
    Object? trendingScore = null,
    Object? gender = freezed,
    Object? tags = null,
    Object? embedding = null,
    Object? brand = freezed,
    Object? rating = freezed,
    Object? dimensions = freezed,
    Object? review = freezed,
  }) {
    return _then(
      _$ProductModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        descriptionEn: null == descriptionEn
            ? _value.descriptionEn
            : descriptionEn // ignore: cast_nullable_to_non_nullable
                  as String,
        descriptionAr: null == descriptionAr
            ? _value.descriptionAr
            : descriptionAr // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        storeId: freezed == storeId
            ? _value.storeId
            : storeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedColorId: freezed == selectedColorId
            ? _value.selectedColorId
            : selectedColorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedSizeId: freezed == selectedSizeId
            ? _value.selectedSizeId
            : selectedSizeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountPrice: freezed == discountPrice
            ? _value.discountPrice
            : discountPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        basketQuantity: null == basketQuantity
            ? _value.basketQuantity
            : basketQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        stockQuantity: null == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        purchasesCount: null == purchasesCount
            ? _value.purchasesCount
            : purchasesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        finalPrice: null == finalPrice
            ? _value.finalPrice
            : finalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        items: null == items
            ? _value.items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<MealOptionModel>,
        colors: null == colors
            ? _value.colors
            : colors // ignore: cast_nullable_to_non_nullable
                  as List<ColorOption>,
        sizes: null == sizes
            ? _value.sizes
            : sizes // ignore: cast_nullable_to_non_nullable
                  as List<SizeOption>,
        images: null == images
            ? _value.images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        categoryIds: null == categoryIds
            ? _value.categoryIds
            : categoryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        inStock: null == inStock
            ? _value.inStock
            : inStock // ignore: cast_nullable_to_non_nullable
                  as bool,
        published: null == published
            ? _value.published
            : published // ignore: cast_nullable_to_non_nullable
                  as bool,
        isOnSale: null == isOnSale
            ? _value.isOnSale
            : isOnSale // ignore: cast_nullable_to_non_nullable
                  as bool,
        bestSeller: null == bestSeller
            ? _value.bestSeller
            : bestSeller // ignore: cast_nullable_to_non_nullable
                  as bool,
        trending: null == trending
            ? _value.trending
            : trending // ignore: cast_nullable_to_non_nullable
                  as bool,
        discountPercent: null == discountPercent
            ? _value.discountPercent
            : discountPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        viewsCount: null == viewsCount
            ? _value.viewsCount
            : viewsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        trendingScore: null == trendingScore
            ? _value.trendingScore
            : trendingScore // ignore: cast_nullable_to_non_nullable
                  as int,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: null == tags
            ? _value.tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        embedding: null == embedding
            ? _value.embedding
            : embedding // ignore: cast_nullable_to_non_nullable
                  as List<double>,
        brand: freezed == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as BrandModel?,
        rating: freezed == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as RatingModel?,
        dimensions: freezed == dimensions
            ? _value.dimensions
            : dimensions // ignore: cast_nullable_to_non_nullable
                  as DimensionModel?,
        review: freezed == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as ReviewModel?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductModelImpl extends _ProductModel {
  _$ProductModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = '',
    this.nameEn = '',
    this.nameAr = '',
    this.descriptionEn = '',
    this.descriptionAr = '',
    this.thumbnail = '',
    this.storeId,
    this.note,
    this.selectedColorId,
    this.selectedSizeId,
    this.discountPrice,
    this.basketQuantity = 1,
    this.stockQuantity = 0,
    this.purchasesCount = 0,
    this.basePrice = 0.0,
    this.finalPrice = 0.0,
    this.items = const [],
    this.colors = const [],
    this.sizes = const [],
    this.images = const [],
    this.categoryIds = const [],
    this.inStock = false,
    this.published = false,
    this.isOnSale = false,
    this.bestSeller = false,
    this.trending = false,
    this.discountPercent = 0.0,
    this.viewsCount = 0,
    this.trendingScore = 0,
    this.gender,
    @JsonKey(name: "_tags") this.tags = const [],
    this.embedding = const [],
    this.brand,
    this.rating,
    this.dimensions,
    @JsonKey(includeFromJson: false, includeToJson: false) this.review,
  }) : super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  String descriptionEn;
  @override
  @JsonKey()
  String descriptionAr;
  @override
  @JsonKey()
  String thumbnail;
  @override
  String? storeId;
  @override
  String? note;
  @override
  String? selectedColorId;
  @override
  String? selectedSizeId;
  @override
  double? discountPrice;
  @override
  @JsonKey()
  int basketQuantity;
  @override
  @JsonKey()
  int stockQuantity;
  @override
  @JsonKey()
  int purchasesCount;
  @override
  @JsonKey()
  double basePrice;
  @override
  @JsonKey()
  double finalPrice;
  @override
  @JsonKey()
  List<MealOptionModel> items;
  @override
  @JsonKey()
  List<ColorOption> colors;
  @override
  @JsonKey()
  List<SizeOption> sizes;
  @override
  @JsonKey()
  List<String> images;
  @override
  @JsonKey()
  List<String> categoryIds;
  @override
  @JsonKey()
  bool inStock;
  @override
  @JsonKey()
  bool published;
  @override
  @JsonKey()
  bool isOnSale;
  @override
  @JsonKey()
  bool bestSeller;
  @override
  @JsonKey()
  bool trending;
  @override
  @JsonKey()
  double discountPercent;
  // % discount calculated from basePrice and finalPrice
  @override
  @JsonKey()
  int viewsCount;
  // Optional: track views if needed
  @override
  @JsonKey()
  int trendingScore;
  // For "trending" or "popular" sorting
  @override
  String? gender;
  // "male", "female", "unisex" – for audience targeting
  @override
  @JsonKey(name: "_tags")
  List<String> tags;
  @override
  @JsonKey()
  List<double> embedding;
  @override
  BrandModel? brand;
  @override
  RatingModel? rating;
  @override
  DimensionModel? dimensions;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? review;

  @override
  String toString() {
    return 'ProductModel(createdAt: $createdAt, id: $id, nameEn: $nameEn, nameAr: $nameAr, descriptionEn: $descriptionEn, descriptionAr: $descriptionAr, thumbnail: $thumbnail, storeId: $storeId, note: $note, selectedColorId: $selectedColorId, selectedSizeId: $selectedSizeId, discountPrice: $discountPrice, basketQuantity: $basketQuantity, stockQuantity: $stockQuantity, purchasesCount: $purchasesCount, basePrice: $basePrice, finalPrice: $finalPrice, items: $items, colors: $colors, sizes: $sizes, images: $images, categoryIds: $categoryIds, inStock: $inStock, published: $published, isOnSale: $isOnSale, bestSeller: $bestSeller, trending: $trending, discountPercent: $discountPercent, viewsCount: $viewsCount, trendingScore: $trendingScore, gender: $gender, tags: $tags, embedding: $embedding, brand: $brand, rating: $rating, dimensions: $dimensions, review: $review)';
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(this);
  }
}

abstract class _ProductModel extends ProductModel {
  factory _ProductModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String thumbnail,
    String? storeId,
    String? note,
    String? selectedColorId,
    String? selectedSizeId,
    double? discountPrice,
    int basketQuantity,
    int stockQuantity,
    int purchasesCount,
    double basePrice,
    double finalPrice,
    List<MealOptionModel> items,
    List<ColorOption> colors,
    List<SizeOption> sizes,
    List<String> images,
    List<String> categoryIds,
    bool inStock,
    bool published,
    bool isOnSale,
    bool bestSeller,
    bool trending,
    double discountPercent,
    int viewsCount,
    int trendingScore,
    String? gender,
    @JsonKey(name: "_tags") List<String> tags,
    List<double> embedding,
    BrandModel? brand,
    RatingModel? rating,
    DimensionModel? dimensions,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  }) = _$ProductModelImpl;
  _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  String get descriptionEn;
  set descriptionEn(String value);
  @override
  String get descriptionAr;
  set descriptionAr(String value);
  @override
  String get thumbnail;
  set thumbnail(String value);
  @override
  String? get storeId;
  set storeId(String? value);
  @override
  String? get note;
  set note(String? value);
  @override
  String? get selectedColorId;
  set selectedColorId(String? value);
  @override
  String? get selectedSizeId;
  set selectedSizeId(String? value);
  @override
  double? get discountPrice;
  set discountPrice(double? value);
  @override
  int get basketQuantity;
  set basketQuantity(int value);
  @override
  int get stockQuantity;
  set stockQuantity(int value);
  @override
  int get purchasesCount;
  set purchasesCount(int value);
  @override
  double get basePrice;
  set basePrice(double value);
  @override
  double get finalPrice;
  set finalPrice(double value);
  @override
  List<MealOptionModel> get items;
  set items(List<MealOptionModel> value);
  @override
  List<ColorOption> get colors;
  set colors(List<ColorOption> value);
  @override
  List<SizeOption> get sizes;
  set sizes(List<SizeOption> value);
  @override
  List<String> get images;
  set images(List<String> value);
  @override
  List<String> get categoryIds;
  set categoryIds(List<String> value);
  @override
  bool get inStock;
  set inStock(bool value);
  @override
  bool get published;
  set published(bool value);
  @override
  bool get isOnSale;
  set isOnSale(bool value);
  @override
  bool get bestSeller;
  set bestSeller(bool value);
  @override
  bool get trending;
  set trending(bool value);
  @override
  double get discountPercent;
  set discountPercent(
    double value,
  ); // % discount calculated from basePrice and finalPrice
  @override
  int get viewsCount; // % discount calculated from basePrice and finalPrice
  set viewsCount(int value); // Optional: track views if needed
  @override
  int get trendingScore; // Optional: track views if needed
  set trendingScore(int value); // For "trending" or "popular" sorting
  @override
  String? get gender; // For "trending" or "popular" sorting
  set gender(
    String? value,
  ); // "male", "female", "unisex" – for audience targeting
  @override
  @JsonKey(name: "_tags")
  List<String> get tags; // "male", "female", "unisex" – for audience targeting
  @JsonKey(name: "_tags")
  set tags(List<String> value);
  @override
  List<double> get embedding;
  set embedding(List<double> value);
  @override
  BrandModel? get brand;
  set brand(BrandModel? value);
  @override
  RatingModel? get rating;
  set rating(RatingModel? value);
  @override
  DimensionModel? get dimensions;
  set dimensions(DimensionModel? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? get review;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set review(ReviewModel? value);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealOptionModel _$MealOptionModelFromJson(Map<String, dynamic> json) {
  return _MealOptionModel.fromJson(json);
}

/// @nodoc
mixin _$MealOptionModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;
  set selectedId(String? value) => throw _privateConstructorUsedError;
  List<String> get selectedIds => throw _privateConstructorUsedError;
  set selectedIds(List<String> value) => throw _privateConstructorUsedError;
  List<OptionItemModel> get items => throw _privateConstructorUsedError;
  set items(List<OptionItemModel> value) => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? get globalKey => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set globalKey(Object? value) => throw _privateConstructorUsedError;

  /// Serializes this MealOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealOptionModelCopyWith<MealOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealOptionModelCopyWith<$Res> {
  factory $MealOptionModelCopyWith(
    MealOptionModel value,
    $Res Function(MealOptionModel) then,
  ) = _$MealOptionModelCopyWithImpl<$Res, MealOptionModel>;
  @useResult
  $Res call({
    String id,
    String nameEn,
    String nameAr,
    String type,
    String? selectedId,
    List<String> selectedIds,
    List<OptionItemModel> items,
    @JsonKey(includeToJson: false, includeFromJson: false) Object? globalKey,
  });
}

/// @nodoc
class _$MealOptionModelCopyWithImpl<$Res, $Val extends MealOptionModel>
    implements $MealOptionModelCopyWith<$Res> {
  _$MealOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? type = null,
    Object? selectedId = freezed,
    Object? selectedIds = null,
    Object? items = null,
    Object? globalKey = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            selectedId: freezed == selectedId
                ? _value.selectedId
                : selectedId // ignore: cast_nullable_to_non_nullable
                      as String?,
            selectedIds: null == selectedIds
                ? _value.selectedIds
                : selectedIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<OptionItemModel>,
            globalKey: freezed == globalKey ? _value.globalKey : globalKey,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MealOptionModelImplCopyWith<$Res>
    implements $MealOptionModelCopyWith<$Res> {
  factory _$$MealOptionModelImplCopyWith(
    _$MealOptionModelImpl value,
    $Res Function(_$MealOptionModelImpl) then,
  ) = __$$MealOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String nameEn,
    String nameAr,
    String type,
    String? selectedId,
    List<String> selectedIds,
    List<OptionItemModel> items,
    @JsonKey(includeToJson: false, includeFromJson: false) Object? globalKey,
  });
}

/// @nodoc
class __$$MealOptionModelImplCopyWithImpl<$Res>
    extends _$MealOptionModelCopyWithImpl<$Res, _$MealOptionModelImpl>
    implements _$$MealOptionModelImplCopyWith<$Res> {
  __$$MealOptionModelImplCopyWithImpl(
    _$MealOptionModelImpl _value,
    $Res Function(_$MealOptionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? type = null,
    Object? selectedId = freezed,
    Object? selectedIds = null,
    Object? items = null,
    Object? globalKey = freezed,
  }) {
    return _then(
      _$MealOptionModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        selectedId: freezed == selectedId
            ? _value.selectedId
            : selectedId // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedIds: null == selectedIds
            ? _value.selectedIds
            : selectedIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        items: null == items
            ? _value.items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<OptionItemModel>,
        globalKey: freezed == globalKey ? _value.globalKey : globalKey,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MealOptionModelImpl extends _MealOptionModel {
  _$MealOptionModelImpl({
    this.id = '',
    this.nameEn = '',
    this.nameAr = '',
    this.type = '',
    this.selectedId,
    this.selectedIds = const [],
    this.items = const [],
    @JsonKey(includeToJson: false, includeFromJson: false) this.globalKey,
  }) : super._();

  factory _$MealOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealOptionModelImplFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  String type;
  @override
  String? selectedId;
  @override
  @JsonKey()
  List<String> selectedIds;
  @override
  @JsonKey()
  List<OptionItemModel> items;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? globalKey;

  @override
  String toString() {
    return 'MealOptionModel(id: $id, nameEn: $nameEn, nameAr: $nameAr, type: $type, selectedId: $selectedId, selectedIds: $selectedIds, items: $items, globalKey: $globalKey)';
  }

  /// Create a copy of MealOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealOptionModelImplCopyWith<_$MealOptionModelImpl> get copyWith =>
      __$$MealOptionModelImplCopyWithImpl<_$MealOptionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MealOptionModelImplToJson(this);
  }
}

abstract class _MealOptionModel extends MealOptionModel {
  factory _MealOptionModel({
    String id,
    String nameEn,
    String nameAr,
    String type,
    String? selectedId,
    List<String> selectedIds,
    List<OptionItemModel> items,
    @JsonKey(includeToJson: false, includeFromJson: false) Object? globalKey,
  }) = _$MealOptionModelImpl;
  _MealOptionModel._() : super._();

  factory _MealOptionModel.fromJson(Map<String, dynamic> json) =
      _$MealOptionModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  String get type;
  set type(String value);
  @override
  String? get selectedId;
  set selectedId(String? value);
  @override
  List<String> get selectedIds;
  set selectedIds(List<String> value);
  @override
  List<OptionItemModel> get items;
  set items(List<OptionItemModel> value);
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? get globalKey;
  @JsonKey(includeToJson: false, includeFromJson: false)
  set globalKey(Object? value);

  /// Create a copy of MealOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealOptionModelImplCopyWith<_$MealOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionItemModel _$OptionItemModelFromJson(Map<String, dynamic> json) {
  return _OptionItemModel.fromJson(json);
}

/// @nodoc
mixin _$OptionItemModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  set price(double value) => throw _privateConstructorUsedError;

  /// Serializes this OptionItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionItemModelCopyWith<OptionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionItemModelCopyWith<$Res> {
  factory $OptionItemModelCopyWith(
    OptionItemModel value,
    $Res Function(OptionItemModel) then,
  ) = _$OptionItemModelCopyWithImpl<$Res, OptionItemModel>;
  @useResult
  $Res call({String id, String nameEn, String nameAr, double price});
}

/// @nodoc
class _$OptionItemModelCopyWithImpl<$Res, $Val extends OptionItemModel>
    implements $OptionItemModelCopyWith<$Res> {
  _$OptionItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? price = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OptionItemModelImplCopyWith<$Res>
    implements $OptionItemModelCopyWith<$Res> {
  factory _$$OptionItemModelImplCopyWith(
    _$OptionItemModelImpl value,
    $Res Function(_$OptionItemModelImpl) then,
  ) = __$$OptionItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nameEn, String nameAr, double price});
}

/// @nodoc
class __$$OptionItemModelImplCopyWithImpl<$Res>
    extends _$OptionItemModelCopyWithImpl<$Res, _$OptionItemModelImpl>
    implements _$$OptionItemModelImplCopyWith<$Res> {
  __$$OptionItemModelImplCopyWithImpl(
    _$OptionItemModelImpl _value,
    $Res Function(_$OptionItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OptionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? price = null,
  }) {
    return _then(
      _$OptionItemModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OptionItemModelImpl extends _OptionItemModel {
  _$OptionItemModelImpl({
    this.id = '',
    this.nameEn = '',
    this.nameAr = '',
    this.price = 0.0,
  }) : super._();

  factory _$OptionItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionItemModelImplFromJson(json);

  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String nameEn;
  @override
  @JsonKey()
  String nameAr;
  @override
  @JsonKey()
  double price;

  @override
  String toString() {
    return 'OptionItemModel(id: $id, nameEn: $nameEn, nameAr: $nameAr, price: $price)';
  }

  /// Create a copy of OptionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionItemModelImplCopyWith<_$OptionItemModelImpl> get copyWith =>
      __$$OptionItemModelImplCopyWithImpl<_$OptionItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionItemModelImplToJson(this);
  }
}

abstract class _OptionItemModel extends OptionItemModel {
  factory _OptionItemModel({
    String id,
    String nameEn,
    String nameAr,
    double price,
  }) = _$OptionItemModelImpl;
  _OptionItemModel._() : super._();

  factory _OptionItemModel.fromJson(Map<String, dynamic> json) =
      _$OptionItemModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get nameEn;
  set nameEn(String value);
  @override
  String get nameAr;
  set nameAr(String value);
  @override
  double get price;
  set price(double value);

  /// Create a copy of OptionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionItemModelImplCopyWith<_$OptionItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  String get id => throw _privateConstructorUsedError;
  String get hex => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError; // optional override
  double get discountPrice => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  List<String> get sizeIds => throw _privateConstructorUsedError;

  /// Serializes this ColorOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
    ColorOption value,
    $Res Function(ColorOption) then,
  ) = _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call({
    String id,
    String hex,
    String name,
    List<String> images,
    double price,
    double discountPrice,
    int stockQuantity,
    bool active,
    List<String> sizeIds,
  });
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hex = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? stockQuantity = null,
    Object? active = null,
    Object? sizeIds = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            hex: null == hex
                ? _value.hex
                : hex // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPrice: null == discountPrice
                ? _value.discountPrice
                : discountPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            stockQuantity: null == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            sizeIds: null == sizeIds
                ? _value.sizeIds
                : sizeIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
    _$ColorOptionImpl value,
    $Res Function(_$ColorOptionImpl) then,
  ) = __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String hex,
    String name,
    List<String> images,
    double price,
    double discountPrice,
    int stockQuantity,
    bool active,
    List<String> sizeIds,
  });
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
    _$ColorOptionImpl _value,
    $Res Function(_$ColorOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hex = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? stockQuantity = null,
    Object? active = null,
    Object? sizeIds = null,
  }) {
    return _then(
      _$ColorOptionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        hex: null == hex
            ? _value.hex
            : hex // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPrice: null == discountPrice
            ? _value.discountPrice
            : discountPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        stockQuantity: null == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        sizeIds: null == sizeIds
            ? _value._sizeIds
            : sizeIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorOptionImpl implements _ColorOption {
  _$ColorOptionImpl({
    this.id = '',
    this.hex = '',
    this.name = '',
    final List<String> images = const [],
    this.price = 0.0,
    this.discountPrice = 0.0,
    this.stockQuantity = 0,
    this.active = true,
    final List<String> sizeIds = const [],
  }) : _images = images,
       _sizeIds = sizeIds;

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String hex;
  @override
  @JsonKey()
  final String name;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final double price;
  // optional override
  @override
  @JsonKey()
  final double discountPrice;
  @override
  @JsonKey()
  final int stockQuantity;
  @override
  @JsonKey()
  final bool active;
  final List<String> _sizeIds;
  @override
  @JsonKey()
  List<String> get sizeIds {
    if (_sizeIds is EqualUnmodifiableListView) return _sizeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizeIds);
  }

  @override
  String toString() {
    return 'ColorOption(id: $id, hex: $hex, name: $name, images: $images, price: $price, discountPrice: $discountPrice, stockQuantity: $stockQuantity, active: $active, sizeIds: $sizeIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hex, hex) || other.hex == hex) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other._sizeIds, _sizeIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hex,
    name,
    const DeepCollectionEquality().hash(_images),
    price,
    discountPrice,
    stockQuantity,
    active,
    const DeepCollectionEquality().hash(_sizeIds),
  );

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(this);
  }
}

abstract class _ColorOption implements ColorOption {
  factory _ColorOption({
    final String id,
    final String hex,
    final String name,
    final List<String> images,
    final double price,
    final double discountPrice,
    final int stockQuantity,
    final bool active,
    final List<String> sizeIds,
  }) = _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get hex;
  @override
  String get name;
  @override
  List<String> get images;
  @override
  double get price; // optional override
  @override
  double get discountPrice;
  @override
  int get stockQuantity;
  @override
  bool get active;
  @override
  List<String> get sizeIds;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeOption _$SizeOptionFromJson(Map<String, dynamic> json) {
  return _SizeOption.fromJson(json);
}

/// @nodoc
mixin _$SizeOption {
  String get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPrice => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  /// Serializes this SizeOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeOptionCopyWith<SizeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeOptionCopyWith<$Res> {
  factory $SizeOptionCopyWith(
    SizeOption value,
    $Res Function(SizeOption) then,
  ) = _$SizeOptionCopyWithImpl<$Res, SizeOption>;
  @useResult
  $Res call({
    String id,
    String size,
    double price,
    double discountPrice,
    int stockQuantity,
    bool active,
  });
}

/// @nodoc
class _$SizeOptionCopyWithImpl<$Res, $Val extends SizeOption>
    implements $SizeOptionCopyWith<$Res> {
  _$SizeOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? stockQuantity = null,
    Object? active = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPrice: null == discountPrice
                ? _value.discountPrice
                : discountPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            stockQuantity: null == stockQuantity
                ? _value.stockQuantity
                : stockQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SizeOptionImplCopyWith<$Res>
    implements $SizeOptionCopyWith<$Res> {
  factory _$$SizeOptionImplCopyWith(
    _$SizeOptionImpl value,
    $Res Function(_$SizeOptionImpl) then,
  ) = __$$SizeOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String size,
    double price,
    double discountPrice,
    int stockQuantity,
    bool active,
  });
}

/// @nodoc
class __$$SizeOptionImplCopyWithImpl<$Res>
    extends _$SizeOptionCopyWithImpl<$Res, _$SizeOptionImpl>
    implements _$$SizeOptionImplCopyWith<$Res> {
  __$$SizeOptionImplCopyWithImpl(
    _$SizeOptionImpl _value,
    $Res Function(_$SizeOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? stockQuantity = null,
    Object? active = null,
  }) {
    return _then(
      _$SizeOptionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPrice: null == discountPrice
            ? _value.discountPrice
            : discountPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        stockQuantity: null == stockQuantity
            ? _value.stockQuantity
            : stockQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeOptionImpl implements _SizeOption {
  _$SizeOptionImpl({
    this.id = '',
    this.size = '',
    this.price = 0.0,
    this.discountPrice = 0.0,
    this.stockQuantity = 0,
    this.active = true,
  });

  factory _$SizeOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeOptionImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String size;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final double discountPrice;
  @override
  @JsonKey()
  final int stockQuantity;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'SizeOption(id: $id, size: $size, price: $price, discountPrice: $discountPrice, stockQuantity: $stockQuantity, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    size,
    price,
    discountPrice,
    stockQuantity,
    active,
  );

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      __$$SizeOptionImplCopyWithImpl<_$SizeOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeOptionImplToJson(this);
  }
}

abstract class _SizeOption implements SizeOption {
  factory _SizeOption({
    final String id,
    final String size,
    final double price,
    final double discountPrice,
    final int stockQuantity,
    final bool active,
  }) = _$SizeOptionImpl;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$SizeOptionImpl.fromJson;

  @override
  String get id;
  @override
  String get size;
  @override
  double get price;
  @override
  double get discountPrice;
  @override
  int get stockQuantity;
  @override
  bool get active;

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DimensionModel _$DimensionModelFromJson(Map<String, dynamic> json) {
  return _DimensionModel.fromJson(json);
}

/// @nodoc
mixin _$DimensionModel {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get depth => throw _privateConstructorUsedError;

  /// Serializes this DimensionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DimensionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionModelCopyWith<DimensionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionModelCopyWith<$Res> {
  factory $DimensionModelCopyWith(
    DimensionModel value,
    $Res Function(DimensionModel) then,
  ) = _$DimensionModelCopyWithImpl<$Res, DimensionModel>;
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class _$DimensionModelCopyWithImpl<$Res, $Val extends DimensionModel>
    implements $DimensionModelCopyWith<$Res> {
  _$DimensionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DimensionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _value.copyWith(
            width: null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                      as double,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as double,
            depth: null == depth
                ? _value.depth
                : depth // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DimensionModelImplCopyWith<$Res>
    implements $DimensionModelCopyWith<$Res> {
  factory _$$DimensionModelImplCopyWith(
    _$DimensionModelImpl value,
    $Res Function(_$DimensionModelImpl) then,
  ) = __$$DimensionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class __$$DimensionModelImplCopyWithImpl<$Res>
    extends _$DimensionModelCopyWithImpl<$Res, _$DimensionModelImpl>
    implements _$$DimensionModelImplCopyWith<$Res> {
  __$$DimensionModelImplCopyWithImpl(
    _$DimensionModelImpl _value,
    $Res Function(_$DimensionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DimensionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _$DimensionModelImpl(
        width: null == width
            ? _value.width
            : width // ignore: cast_nullable_to_non_nullable
                  as double,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as double,
        depth: null == depth
            ? _value.depth
            : depth // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionModelImpl implements _DimensionModel {
  _$DimensionModelImpl({this.width = 0.0, this.height = 0.0, this.depth = 0.0});

  factory _$DimensionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionModelImplFromJson(json);

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double depth;

  @override
  String toString() {
    return 'DimensionModel(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionModelImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  /// Create a copy of DimensionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionModelImplCopyWith<_$DimensionModelImpl> get copyWith =>
      __$$DimensionModelImplCopyWithImpl<_$DimensionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionModelImplToJson(this);
  }
}

abstract class _DimensionModel implements DimensionModel {
  factory _DimensionModel({
    final double width,
    final double height,
    final double depth,
  }) = _$DimensionModelImpl;

  factory _DimensionModel.fromJson(Map<String, dynamic> json) =
      _$DimensionModelImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  double get depth;

  /// Create a copy of DimensionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionModelImplCopyWith<_$DimensionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) {
  return _BrandModel.fromJson(json);
}

/// @nodoc
mixin _$BrandModel {
  String get id => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;

  /// Serializes this BrandModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandModelCopyWith<BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelCopyWith<$Res> {
  factory $BrandModelCopyWith(
    BrandModel value,
    $Res Function(BrandModel) then,
  ) = _$BrandModelCopyWithImpl<$Res, BrandModel>;
  @useResult
  $Res call({String id, String logo, String nameEn, String nameAr});
}

/// @nodoc
class _$BrandModelCopyWithImpl<$Res, $Val extends BrandModel>
    implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? nameEn = null,
    Object? nameAr = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            logo: null == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                      as String,
            nameEn: null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: null == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BrandModelImplCopyWith<$Res>
    implements $BrandModelCopyWith<$Res> {
  factory _$$BrandModelImplCopyWith(
    _$BrandModelImpl value,
    $Res Function(_$BrandModelImpl) then,
  ) = __$$BrandModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String logo, String nameEn, String nameAr});
}

/// @nodoc
class __$$BrandModelImplCopyWithImpl<$Res>
    extends _$BrandModelCopyWithImpl<$Res, _$BrandModelImpl>
    implements _$$BrandModelImplCopyWith<$Res> {
  __$$BrandModelImplCopyWithImpl(
    _$BrandModelImpl _value,
    $Res Function(_$BrandModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BrandModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo = null,
    Object? nameEn = null,
    Object? nameAr = null,
  }) {
    return _then(
      _$BrandModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        logo: null == logo
            ? _value.logo
            : logo // ignore: cast_nullable_to_non_nullable
                  as String,
        nameEn: null == nameEn
            ? _value.nameEn
            : nameEn // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: null == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandModelImpl extends _BrandModel {
  _$BrandModelImpl({
    this.id = "",
    this.logo = "",
    this.nameEn = "",
    this.nameAr = "",
  }) : super._();

  factory _$BrandModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandModelImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String logo;
  @override
  @JsonKey()
  final String nameEn;
  @override
  @JsonKey()
  final String nameAr;

  @override
  String toString() {
    return 'BrandModel(id: $id, logo: $logo, nameEn: $nameEn, nameAr: $nameAr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, logo, nameEn, nameAr);

  /// Create a copy of BrandModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandModelImplCopyWith<_$BrandModelImpl> get copyWith =>
      __$$BrandModelImplCopyWithImpl<_$BrandModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandModelImplToJson(this);
  }
}

abstract class _BrandModel extends BrandModel {
  factory _BrandModel({
    final String id,
    final String logo,
    final String nameEn,
    final String nameAr,
  }) = _$BrandModelImpl;
  _BrandModel._() : super._();

  factory _BrandModel.fromJson(Map<String, dynamic> json) =
      _$BrandModelImpl.fromJson;

  @override
  String get id;
  @override
  String get logo;
  @override
  String get nameEn;
  @override
  String get nameAr;

  /// Create a copy of BrandModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandModelImplCopyWith<_$BrandModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
