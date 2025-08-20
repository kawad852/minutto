// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FoodStoreModel _$FoodStoreModelFromJson(Map<String, dynamic> json) {
  return _FoodStoreModel.fromJson(json);
}

/// @nodoc
mixin _$FoodStoreModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  String get descriptionEn => throw _privateConstructorUsedError;
  set descriptionEn(String value) => throw _privateConstructorUsedError;
  String get descriptionAr => throw _privateConstructorUsedError;
  set descriptionAr(String value) => throw _privateConstructorUsedError;
  String get stateId => throw _privateConstructorUsedError;
  set stateId(String value) => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  set cityId(String value) => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  set address(String value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  set thumbnail(String value) => throw _privateConstructorUsedError;
  String get addressEn => throw _privateConstructorUsedError;
  set addressEn(String value) => throw _privateConstructorUsedError;
  String get addressAr => throw _privateConstructorUsedError;
  set addressAr(String value) => throw _privateConstructorUsedError;
  String get startWorkingHour => throw _privateConstructorUsedError;
  set startWorkingHour(String value) => throw _privateConstructorUsedError;
  String get closeWorkingHour => throw _privateConstructorUsedError;
  set closeWorkingHour(String value) => throw _privateConstructorUsedError;
  String get deliveryAreasVersion => throw _privateConstructorUsedError;
  set deliveryAreasVersion(String value) => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  set phoneNumber(String? value) => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  set images(List<String> value) => throw _privateConstructorUsedError;
  List<MenuCategoryModel> get menuCategories =>
      throw _privateConstructorUsedError;
  set menuCategories(List<MenuCategoryModel> value) =>
      throw _privateConstructorUsedError;
  List<String> get categoryIds => throw _privateConstructorUsedError;
  set categoryIds(List<String> value) => throw _privateConstructorUsedError;
  String get phoneCountryCode => throw _privateConstructorUsedError;
  set phoneCountryCode(String value) => throw _privateConstructorUsedError;
  double get minOrderValue => throw _privateConstructorUsedError;
  set minOrderValue(double value) => throw _privateConstructorUsedError;
  double get maxDeliveryDistance => throw _privateConstructorUsedError;
  set maxDeliveryDistance(double value) => throw _privateConstructorUsedError;
  bool get freeDelivery => throw _privateConstructorUsedError;
  set freeDelivery(bool value) => throw _privateConstructorUsedError;
  bool get canOrderAnyTime => throw _privateConstructorUsedError;
  set canOrderAnyTime(bool value) => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  set isOpened(bool value) => throw _privateConstructorUsedError;
  List<DeliveryFeeModel>? get deliveryFees =>
      throw _privateConstructorUsedError;
  set deliveryFees(List<DeliveryFeeModel>? value) =>
      throw _privateConstructorUsedError;
  RatingModel? get rating => throw _privateConstructorUsedError;
  set rating(RatingModel? value) => throw _privateConstructorUsedError;
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel get geoLoc => throw _privateConstructorUsedError;
  @JsonKey(name: MyFields.geoloc)
  set geoLoc(GeoLocModel value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? get review => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set review(ReviewModel? value) => throw _privateConstructorUsedError;

  /// Serializes this FoodStoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodStoreModelCopyWith<FoodStoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStoreModelCopyWith<$Res> {
  factory $FoodStoreModelCopyWith(
    FoodStoreModel value,
    $Res Function(FoodStoreModel) then,
  ) = _$FoodStoreModelCopyWithImpl<$Res, FoodStoreModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String email,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String stateId,
    String cityId,
    String address,
    String status,
    String type,
    String thumbnail,
    String addressEn,
    String addressAr,
    String startWorkingHour,
    String closeWorkingHour,
    String deliveryAreasVersion,
    String? phoneNumber,
    List<String> images,
    List<MenuCategoryModel> menuCategories,
    List<String> categoryIds,
    String phoneCountryCode,
    double minOrderValue,
    double maxDeliveryDistance,
    bool freeDelivery,
    bool canOrderAnyTime,
    bool isOpened,
    List<DeliveryFeeModel>? deliveryFees,
    RatingModel? rating,
    @JsonKey(name: MyFields.geoloc) GeoLocModel geoLoc,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  });

  $RatingModelCopyWith<$Res>? get rating;
  $GeoLocModelCopyWith<$Res> get geoLoc;
  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$FoodStoreModelCopyWithImpl<$Res, $Val extends FoodStoreModel>
    implements $FoodStoreModelCopyWith<$Res> {
  _$FoodStoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? email = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? stateId = null,
    Object? cityId = null,
    Object? address = null,
    Object? status = null,
    Object? type = null,
    Object? thumbnail = null,
    Object? addressEn = null,
    Object? addressAr = null,
    Object? startWorkingHour = null,
    Object? closeWorkingHour = null,
    Object? deliveryAreasVersion = null,
    Object? phoneNumber = freezed,
    Object? images = null,
    Object? menuCategories = null,
    Object? categoryIds = null,
    Object? phoneCountryCode = null,
    Object? minOrderValue = null,
    Object? maxDeliveryDistance = null,
    Object? freeDelivery = null,
    Object? canOrderAnyTime = null,
    Object? isOpened = null,
    Object? deliveryFees = freezed,
    Object? rating = freezed,
    Object? geoLoc = null,
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
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
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
            stateId: null == stateId
                ? _value.stateId
                : stateId // ignore: cast_nullable_to_non_nullable
                      as String,
            cityId: null == cityId
                ? _value.cityId
                : cityId // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
            addressEn: null == addressEn
                ? _value.addressEn
                : addressEn // ignore: cast_nullable_to_non_nullable
                      as String,
            addressAr: null == addressAr
                ? _value.addressAr
                : addressAr // ignore: cast_nullable_to_non_nullable
                      as String,
            startWorkingHour: null == startWorkingHour
                ? _value.startWorkingHour
                : startWorkingHour // ignore: cast_nullable_to_non_nullable
                      as String,
            closeWorkingHour: null == closeWorkingHour
                ? _value.closeWorkingHour
                : closeWorkingHour // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryAreasVersion: null == deliveryAreasVersion
                ? _value.deliveryAreasVersion
                : deliveryAreasVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            menuCategories: null == menuCategories
                ? _value.menuCategories
                : menuCategories // ignore: cast_nullable_to_non_nullable
                      as List<MenuCategoryModel>,
            categoryIds: null == categoryIds
                ? _value.categoryIds
                : categoryIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            phoneCountryCode: null == phoneCountryCode
                ? _value.phoneCountryCode
                : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            minOrderValue: null == minOrderValue
                ? _value.minOrderValue
                : minOrderValue // ignore: cast_nullable_to_non_nullable
                      as double,
            maxDeliveryDistance: null == maxDeliveryDistance
                ? _value.maxDeliveryDistance
                : maxDeliveryDistance // ignore: cast_nullable_to_non_nullable
                      as double,
            freeDelivery: null == freeDelivery
                ? _value.freeDelivery
                : freeDelivery // ignore: cast_nullable_to_non_nullable
                      as bool,
            canOrderAnyTime: null == canOrderAnyTime
                ? _value.canOrderAnyTime
                : canOrderAnyTime // ignore: cast_nullable_to_non_nullable
                      as bool,
            isOpened: null == isOpened
                ? _value.isOpened
                : isOpened // ignore: cast_nullable_to_non_nullable
                      as bool,
            deliveryFees: freezed == deliveryFees
                ? _value.deliveryFees
                : deliveryFees // ignore: cast_nullable_to_non_nullable
                      as List<DeliveryFeeModel>?,
            rating: freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as RatingModel?,
            geoLoc: null == geoLoc
                ? _value.geoLoc
                : geoLoc // ignore: cast_nullable_to_non_nullable
                      as GeoLocModel,
            review: freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as ReviewModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of FoodStoreModel
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

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocModelCopyWith<$Res> get geoLoc {
    return $GeoLocModelCopyWith<$Res>(_value.geoLoc, (value) {
      return _then(_value.copyWith(geoLoc: value) as $Val);
    });
  }

  /// Create a copy of FoodStoreModel
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
abstract class _$$FoodStoreModelImplCopyWith<$Res>
    implements $FoodStoreModelCopyWith<$Res> {
  factory _$$FoodStoreModelImplCopyWith(
    _$FoodStoreModelImpl value,
    $Res Function(_$FoodStoreModelImpl) then,
  ) = __$$FoodStoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String email,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String stateId,
    String cityId,
    String address,
    String status,
    String type,
    String thumbnail,
    String addressEn,
    String addressAr,
    String startWorkingHour,
    String closeWorkingHour,
    String deliveryAreasVersion,
    String? phoneNumber,
    List<String> images,
    List<MenuCategoryModel> menuCategories,
    List<String> categoryIds,
    String phoneCountryCode,
    double minOrderValue,
    double maxDeliveryDistance,
    bool freeDelivery,
    bool canOrderAnyTime,
    bool isOpened,
    List<DeliveryFeeModel>? deliveryFees,
    RatingModel? rating,
    @JsonKey(name: MyFields.geoloc) GeoLocModel geoLoc,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  });

  @override
  $RatingModelCopyWith<$Res>? get rating;
  @override
  $GeoLocModelCopyWith<$Res> get geoLoc;
  @override
  $ReviewModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$$FoodStoreModelImplCopyWithImpl<$Res>
    extends _$FoodStoreModelCopyWithImpl<$Res, _$FoodStoreModelImpl>
    implements _$$FoodStoreModelImplCopyWith<$Res> {
  __$$FoodStoreModelImplCopyWithImpl(
    _$FoodStoreModelImpl _value,
    $Res Function(_$FoodStoreModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = null,
    Object? email = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? descriptionEn = null,
    Object? descriptionAr = null,
    Object? stateId = null,
    Object? cityId = null,
    Object? address = null,
    Object? status = null,
    Object? type = null,
    Object? thumbnail = null,
    Object? addressEn = null,
    Object? addressAr = null,
    Object? startWorkingHour = null,
    Object? closeWorkingHour = null,
    Object? deliveryAreasVersion = null,
    Object? phoneNumber = freezed,
    Object? images = null,
    Object? menuCategories = null,
    Object? categoryIds = null,
    Object? phoneCountryCode = null,
    Object? minOrderValue = null,
    Object? maxDeliveryDistance = null,
    Object? freeDelivery = null,
    Object? canOrderAnyTime = null,
    Object? isOpened = null,
    Object? deliveryFees = freezed,
    Object? rating = freezed,
    Object? geoLoc = null,
    Object? review = freezed,
  }) {
    return _then(
      _$FoodStoreModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
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
        stateId: null == stateId
            ? _value.stateId
            : stateId // ignore: cast_nullable_to_non_nullable
                  as String,
        cityId: null == cityId
            ? _value.cityId
            : cityId // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
        addressEn: null == addressEn
            ? _value.addressEn
            : addressEn // ignore: cast_nullable_to_non_nullable
                  as String,
        addressAr: null == addressAr
            ? _value.addressAr
            : addressAr // ignore: cast_nullable_to_non_nullable
                  as String,
        startWorkingHour: null == startWorkingHour
            ? _value.startWorkingHour
            : startWorkingHour // ignore: cast_nullable_to_non_nullable
                  as String,
        closeWorkingHour: null == closeWorkingHour
            ? _value.closeWorkingHour
            : closeWorkingHour // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryAreasVersion: null == deliveryAreasVersion
            ? _value.deliveryAreasVersion
            : deliveryAreasVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value.images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        menuCategories: null == menuCategories
            ? _value.menuCategories
            : menuCategories // ignore: cast_nullable_to_non_nullable
                  as List<MenuCategoryModel>,
        categoryIds: null == categoryIds
            ? _value.categoryIds
            : categoryIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        phoneCountryCode: null == phoneCountryCode
            ? _value.phoneCountryCode
            : phoneCountryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        minOrderValue: null == minOrderValue
            ? _value.minOrderValue
            : minOrderValue // ignore: cast_nullable_to_non_nullable
                  as double,
        maxDeliveryDistance: null == maxDeliveryDistance
            ? _value.maxDeliveryDistance
            : maxDeliveryDistance // ignore: cast_nullable_to_non_nullable
                  as double,
        freeDelivery: null == freeDelivery
            ? _value.freeDelivery
            : freeDelivery // ignore: cast_nullable_to_non_nullable
                  as bool,
        canOrderAnyTime: null == canOrderAnyTime
            ? _value.canOrderAnyTime
            : canOrderAnyTime // ignore: cast_nullable_to_non_nullable
                  as bool,
        isOpened: null == isOpened
            ? _value.isOpened
            : isOpened // ignore: cast_nullable_to_non_nullable
                  as bool,
        deliveryFees: freezed == deliveryFees
            ? _value.deliveryFees
            : deliveryFees // ignore: cast_nullable_to_non_nullable
                  as List<DeliveryFeeModel>?,
        rating: freezed == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as RatingModel?,
        geoLoc: null == geoLoc
            ? _value.geoLoc
            : geoLoc // ignore: cast_nullable_to_non_nullable
                  as GeoLocModel,
        review: freezed == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as ReviewModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodStoreModelImpl extends _FoodStoreModel {
  _$FoodStoreModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id = "",
    this.email = "",
    this.nameEn = "",
    this.nameAr = "",
    this.descriptionEn = "",
    this.descriptionAr = "",
    this.stateId = "",
    this.cityId = "",
    this.address = "",
    this.status = "PENDING",
    this.type = "",
    this.thumbnail = "",
    this.addressEn = "",
    this.addressAr = "",
    this.startWorkingHour = "",
    this.closeWorkingHour = "",
    this.deliveryAreasVersion = "",
    this.phoneNumber,
    this.images = const [],
    this.menuCategories = const [],
    this.categoryIds = const [],
    this.phoneCountryCode = kFallBackCountryCode,
    this.minOrderValue = 0.0,
    this.maxDeliveryDistance = 0.0,
    this.freeDelivery = false,
    this.canOrderAnyTime = false,
    this.isOpened = false,
    this.deliveryFees,
    this.rating,
    @JsonKey(name: MyFields.geoloc) required this.geoLoc,
    @JsonKey(includeFromJson: false, includeToJson: false) this.review,
  }) : super._();

  factory _$FoodStoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodStoreModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @JsonKey()
  String id;
  @override
  @JsonKey()
  String email;
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
  String stateId;
  @override
  @JsonKey()
  String cityId;
  @override
  @JsonKey()
  String address;
  @override
  @JsonKey()
  String status;
  @override
  @JsonKey()
  String type;
  @override
  @JsonKey()
  String thumbnail;
  @override
  @JsonKey()
  String addressEn;
  @override
  @JsonKey()
  String addressAr;
  @override
  @JsonKey()
  String startWorkingHour;
  @override
  @JsonKey()
  String closeWorkingHour;
  @override
  @JsonKey()
  String deliveryAreasVersion;
  @override
  String? phoneNumber;
  @override
  @JsonKey()
  List<String> images;
  @override
  @JsonKey()
  List<MenuCategoryModel> menuCategories;
  @override
  @JsonKey()
  List<String> categoryIds;
  @override
  @JsonKey()
  String phoneCountryCode;
  @override
  @JsonKey()
  double minOrderValue;
  @override
  @JsonKey()
  double maxDeliveryDistance;
  @override
  @JsonKey()
  bool freeDelivery;
  @override
  @JsonKey()
  bool canOrderAnyTime;
  @override
  @JsonKey()
  bool isOpened;
  @override
  List<DeliveryFeeModel>? deliveryFees;
  @override
  RatingModel? rating;
  @override
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel geoLoc;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? review;

  @override
  String toString() {
    return 'FoodStoreModel(createdAt: $createdAt, id: $id, email: $email, nameEn: $nameEn, nameAr: $nameAr, descriptionEn: $descriptionEn, descriptionAr: $descriptionAr, stateId: $stateId, cityId: $cityId, address: $address, status: $status, type: $type, thumbnail: $thumbnail, addressEn: $addressEn, addressAr: $addressAr, startWorkingHour: $startWorkingHour, closeWorkingHour: $closeWorkingHour, deliveryAreasVersion: $deliveryAreasVersion, phoneNumber: $phoneNumber, images: $images, menuCategories: $menuCategories, categoryIds: $categoryIds, phoneCountryCode: $phoneCountryCode, minOrderValue: $minOrderValue, maxDeliveryDistance: $maxDeliveryDistance, freeDelivery: $freeDelivery, canOrderAnyTime: $canOrderAnyTime, isOpened: $isOpened, deliveryFees: $deliveryFees, rating: $rating, geoLoc: $geoLoc, review: $review)';
  }

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodStoreModelImplCopyWith<_$FoodStoreModelImpl> get copyWith =>
      __$$FoodStoreModelImplCopyWithImpl<_$FoodStoreModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodStoreModelImplToJson(this);
  }
}

abstract class _FoodStoreModel extends FoodStoreModel {
  factory _FoodStoreModel({
    @TimestampSerializer() DateTime? createdAt,
    String id,
    String email,
    String nameEn,
    String nameAr,
    String descriptionEn,
    String descriptionAr,
    String stateId,
    String cityId,
    String address,
    String status,
    String type,
    String thumbnail,
    String addressEn,
    String addressAr,
    String startWorkingHour,
    String closeWorkingHour,
    String deliveryAreasVersion,
    String? phoneNumber,
    List<String> images,
    List<MenuCategoryModel> menuCategories,
    List<String> categoryIds,
    String phoneCountryCode,
    double minOrderValue,
    double maxDeliveryDistance,
    bool freeDelivery,
    bool canOrderAnyTime,
    bool isOpened,
    List<DeliveryFeeModel>? deliveryFees,
    RatingModel? rating,
    @JsonKey(name: MyFields.geoloc) required GeoLocModel geoLoc,
    @JsonKey(includeFromJson: false, includeToJson: false) ReviewModel? review,
  }) = _$FoodStoreModelImpl;
  _FoodStoreModel._() : super._();

  factory _FoodStoreModel.fromJson(Map<String, dynamic> json) =
      _$FoodStoreModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String get id;
  set id(String value);
  @override
  String get email;
  set email(String value);
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
  String get stateId;
  set stateId(String value);
  @override
  String get cityId;
  set cityId(String value);
  @override
  String get address;
  set address(String value);
  @override
  String get status;
  set status(String value);
  @override
  String get type;
  set type(String value);
  @override
  String get thumbnail;
  set thumbnail(String value);
  @override
  String get addressEn;
  set addressEn(String value);
  @override
  String get addressAr;
  set addressAr(String value);
  @override
  String get startWorkingHour;
  set startWorkingHour(String value);
  @override
  String get closeWorkingHour;
  set closeWorkingHour(String value);
  @override
  String get deliveryAreasVersion;
  set deliveryAreasVersion(String value);
  @override
  String? get phoneNumber;
  set phoneNumber(String? value);
  @override
  List<String> get images;
  set images(List<String> value);
  @override
  List<MenuCategoryModel> get menuCategories;
  set menuCategories(List<MenuCategoryModel> value);
  @override
  List<String> get categoryIds;
  set categoryIds(List<String> value);
  @override
  String get phoneCountryCode;
  set phoneCountryCode(String value);
  @override
  double get minOrderValue;
  set minOrderValue(double value);
  @override
  double get maxDeliveryDistance;
  set maxDeliveryDistance(double value);
  @override
  bool get freeDelivery;
  set freeDelivery(bool value);
  @override
  bool get canOrderAnyTime;
  set canOrderAnyTime(bool value);
  @override
  bool get isOpened;
  set isOpened(bool value);
  @override
  List<DeliveryFeeModel>? get deliveryFees;
  set deliveryFees(List<DeliveryFeeModel>? value);
  @override
  RatingModel? get rating;
  set rating(RatingModel? value);
  @override
  @JsonKey(name: MyFields.geoloc)
  GeoLocModel get geoLoc;
  @JsonKey(name: MyFields.geoloc)
  set geoLoc(GeoLocModel value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReviewModel? get review;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set review(ReviewModel? value);

  /// Create a copy of FoodStoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodStoreModelImplCopyWith<_$FoodStoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuCategoryModel _$MenuCategoryModelFromJson(Map<String, dynamic> json) {
  return _MenuCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$MenuCategoryModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  set nameEn(String value) => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  set nameAr(String value) => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  set order(int value) => throw _privateConstructorUsedError;

  /// Serializes this MenuCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuCategoryModelCopyWith<MenuCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCategoryModelCopyWith<$Res> {
  factory $MenuCategoryModelCopyWith(
    MenuCategoryModel value,
    $Res Function(MenuCategoryModel) then,
  ) = _$MenuCategoryModelCopyWithImpl<$Res, MenuCategoryModel>;
  @useResult
  $Res call({String id, String nameEn, String nameAr, int order});
}

/// @nodoc
class _$MenuCategoryModelCopyWithImpl<$Res, $Val extends MenuCategoryModel>
    implements $MenuCategoryModelCopyWith<$Res> {
  _$MenuCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? order = null,
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
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuCategoryModelImplCopyWith<$Res>
    implements $MenuCategoryModelCopyWith<$Res> {
  factory _$$MenuCategoryModelImplCopyWith(
    _$MenuCategoryModelImpl value,
    $Res Function(_$MenuCategoryModelImpl) then,
  ) = __$$MenuCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nameEn, String nameAr, int order});
}

/// @nodoc
class __$$MenuCategoryModelImplCopyWithImpl<$Res>
    extends _$MenuCategoryModelCopyWithImpl<$Res, _$MenuCategoryModelImpl>
    implements _$$MenuCategoryModelImplCopyWith<$Res> {
  __$$MenuCategoryModelImplCopyWithImpl(
    _$MenuCategoryModelImpl _value,
    $Res Function(_$MenuCategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameEn = null,
    Object? nameAr = null,
    Object? order = null,
  }) {
    return _then(
      _$MenuCategoryModelImpl(
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
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuCategoryModelImpl extends _MenuCategoryModel {
  _$MenuCategoryModelImpl({
    this.id = '',
    this.nameEn = '',
    this.nameAr = '',
    this.order = 0,
  }) : super._();

  factory _$MenuCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuCategoryModelImplFromJson(json);

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
  int order;

  @override
  String toString() {
    return 'MenuCategoryModel(id: $id, nameEn: $nameEn, nameAr: $nameAr, order: $order)';
  }

  /// Create a copy of MenuCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuCategoryModelImplCopyWith<_$MenuCategoryModelImpl> get copyWith =>
      __$$MenuCategoryModelImplCopyWithImpl<_$MenuCategoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuCategoryModelImplToJson(this);
  }
}

abstract class _MenuCategoryModel extends MenuCategoryModel {
  factory _MenuCategoryModel({
    String id,
    String nameEn,
    String nameAr,
    int order,
  }) = _$MenuCategoryModelImpl;
  _MenuCategoryModel._() : super._();

  factory _MenuCategoryModel.fromJson(Map<String, dynamic> json) =
      _$MenuCategoryModelImpl.fromJson;

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
  int get order;
  set order(int value);

  /// Create a copy of MenuCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuCategoryModelImplCopyWith<_$MenuCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoLocModel _$GeoLocModelFromJson(Map<String, dynamic> json) {
  return _GeoLocModel.fromJson(json);
}

/// @nodoc
mixin _$GeoLocModel {
  double get lat => throw _privateConstructorUsedError;
  set lat(double value) => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  set lng(double value) => throw _privateConstructorUsedError;

  /// Serializes this GeoLocModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoLocModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoLocModelCopyWith<GeoLocModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocModelCopyWith<$Res> {
  factory $GeoLocModelCopyWith(
    GeoLocModel value,
    $Res Function(GeoLocModel) then,
  ) = _$GeoLocModelCopyWithImpl<$Res, GeoLocModel>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$GeoLocModelCopyWithImpl<$Res, $Val extends GeoLocModel>
    implements $GeoLocModelCopyWith<$Res> {
  _$GeoLocModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoLocModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _value.copyWith(
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GeoLocModelImplCopyWith<$Res>
    implements $GeoLocModelCopyWith<$Res> {
  factory _$$GeoLocModelImplCopyWith(
    _$GeoLocModelImpl value,
    $Res Function(_$GeoLocModelImpl) then,
  ) = __$$GeoLocModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$GeoLocModelImplCopyWithImpl<$Res>
    extends _$GeoLocModelCopyWithImpl<$Res, _$GeoLocModelImpl>
    implements _$$GeoLocModelImplCopyWith<$Res> {
  __$$GeoLocModelImplCopyWithImpl(
    _$GeoLocModelImpl _value,
    $Res Function(_$GeoLocModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeoLocModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? lat = null, Object? lng = null}) {
    return _then(
      _$GeoLocModelImpl(
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoLocModelImpl implements _GeoLocModel {
  _$GeoLocModelImpl({this.lat = 0.0, this.lng = 0.0});

  factory _$GeoLocModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoLocModelImplFromJson(json);

  @override
  @JsonKey()
  double lat;
  @override
  @JsonKey()
  double lng;

  @override
  String toString() {
    return 'GeoLocModel(lat: $lat, lng: $lng)';
  }

  /// Create a copy of GeoLocModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocModelImplCopyWith<_$GeoLocModelImpl> get copyWith =>
      __$$GeoLocModelImplCopyWithImpl<_$GeoLocModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoLocModelImplToJson(this);
  }
}

abstract class _GeoLocModel implements GeoLocModel {
  factory _GeoLocModel({double lat, double lng}) = _$GeoLocModelImpl;

  factory _GeoLocModel.fromJson(Map<String, dynamic> json) =
      _$GeoLocModelImpl.fromJson;

  @override
  double get lat;
  set lat(double value);
  @override
  double get lng;
  set lng(double value);

  /// Create a copy of GeoLocModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoLocModelImplCopyWith<_$GeoLocModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
