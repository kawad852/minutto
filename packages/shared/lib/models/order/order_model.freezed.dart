// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get statusUpdateTime => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set statusUpdateTime(DateTime? value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  set paymentMethod(String? value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  List<BasketModel>? get basket => throw _privateConstructorUsedError;
  set basket(List<BasketModel>? value) => throw _privateConstructorUsedError;
  PromoCodeModel? get promoCode => throw _privateConstructorUsedError;
  set promoCode(PromoCodeModel? value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  set deliveryFee(double value) => throw _privateConstructorUsedError;
  double get rewardsDiscount => throw _privateConstructorUsedError;
  set rewardsDiscount(double value) => throw _privateConstructorUsedError;
  double get promoCodeDiscount => throw _privateConstructorUsedError;
  set promoCodeDiscount(double value) => throw _privateConstructorUsedError;
  double get totalDiscount => throw _privateConstructorUsedError;
  set totalDiscount(double value) => throw _privateConstructorUsedError;
  double get basketTotal => throw _privateConstructorUsedError;
  set basketTotal(double value) => throw _privateConstructorUsedError;
  double get orderTotal => throw _privateConstructorUsedError;
  set orderTotal(double value) => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  set driverId(String? value) => throw _privateConstructorUsedError;
  double? get storeProfit => throw _privateConstructorUsedError;
  set storeProfit(double? value) => throw _privateConstructorUsedError;
  bool get rated => throw _privateConstructorUsedError;
  set rated(bool value) => throw _privateConstructorUsedError;
  int get rewardPoints => throw _privateConstructorUsedError;
  set rewardPoints(int value) => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;
  set user(UserModel? value) => throw _privateConstructorUsedError;
  RiderModel? get rider => throw _privateConstructorUsedError;
  set rider(RiderModel? value) => throw _privateConstructorUsedError;
  FoodStoreModel? get foodStore => throw _privateConstructorUsedError;
  set foodStore(FoodStoreModel? value) => throw _privateConstructorUsedError;
  CallCenterModel? get callCenter => throw _privateConstructorUsedError;
  set callCenter(CallCenterModel? value) => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
    OrderModel value,
    $Res Function(OrderModel) then,
  ) = _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusUpdateTime,
    String? id,
    String? paymentMethod,
    String type,
    List<BasketModel>? basket,
    PromoCodeModel? promoCode,
    String status,
    double deliveryFee,
    double rewardsDiscount,
    double promoCodeDiscount,
    double totalDiscount,
    double basketTotal,
    double orderTotal,
    String? driverId,
    double? storeProfit,
    bool rated,
    int rewardPoints,
    UserModel? user,
    RiderModel? rider,
    FoodStoreModel? foodStore,
    CallCenterModel? callCenter,
  });

  $PromoCodeModelCopyWith<$Res>? get promoCode;
  $UserModelCopyWith<$Res>? get user;
  $RiderModelCopyWith<$Res>? get rider;
  $FoodStoreModelCopyWith<$Res>? get foodStore;
  $CallCenterModelCopyWith<$Res>? get callCenter;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? statusUpdateTime = freezed,
    Object? id = freezed,
    Object? paymentMethod = freezed,
    Object? type = null,
    Object? basket = freezed,
    Object? promoCode = freezed,
    Object? status = null,
    Object? deliveryFee = null,
    Object? rewardsDiscount = null,
    Object? promoCodeDiscount = null,
    Object? totalDiscount = null,
    Object? basketTotal = null,
    Object? orderTotal = null,
    Object? driverId = freezed,
    Object? storeProfit = freezed,
    Object? rated = null,
    Object? rewardPoints = null,
    Object? user = freezed,
    Object? rider = freezed,
    Object? foodStore = freezed,
    Object? callCenter = freezed,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            statusUpdateTime: freezed == statusUpdateTime
                ? _value.statusUpdateTime
                : statusUpdateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentMethod: freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            basket: freezed == basket
                ? _value.basket
                : basket // ignore: cast_nullable_to_non_nullable
                      as List<BasketModel>?,
            promoCode: freezed == promoCode
                ? _value.promoCode
                : promoCode // ignore: cast_nullable_to_non_nullable
                      as PromoCodeModel?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            deliveryFee: null == deliveryFee
                ? _value.deliveryFee
                : deliveryFee // ignore: cast_nullable_to_non_nullable
                      as double,
            rewardsDiscount: null == rewardsDiscount
                ? _value.rewardsDiscount
                : rewardsDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            promoCodeDiscount: null == promoCodeDiscount
                ? _value.promoCodeDiscount
                : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            totalDiscount: null == totalDiscount
                ? _value.totalDiscount
                : totalDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            basketTotal: null == basketTotal
                ? _value.basketTotal
                : basketTotal // ignore: cast_nullable_to_non_nullable
                      as double,
            orderTotal: null == orderTotal
                ? _value.orderTotal
                : orderTotal // ignore: cast_nullable_to_non_nullable
                      as double,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            storeProfit: freezed == storeProfit
                ? _value.storeProfit
                : storeProfit // ignore: cast_nullable_to_non_nullable
                      as double?,
            rated: null == rated
                ? _value.rated
                : rated // ignore: cast_nullable_to_non_nullable
                      as bool,
            rewardPoints: null == rewardPoints
                ? _value.rewardPoints
                : rewardPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserModel?,
            rider: freezed == rider
                ? _value.rider
                : rider // ignore: cast_nullable_to_non_nullable
                      as RiderModel?,
            foodStore: freezed == foodStore
                ? _value.foodStore
                : foodStore // ignore: cast_nullable_to_non_nullable
                      as FoodStoreModel?,
            callCenter: freezed == callCenter
                ? _value.callCenter
                : callCenter // ignore: cast_nullable_to_non_nullable
                      as CallCenterModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromoCodeModelCopyWith<$Res>? get promoCode {
    if (_value.promoCode == null) {
      return null;
    }

    return $PromoCodeModelCopyWith<$Res>(_value.promoCode!, (value) {
      return _then(_value.copyWith(promoCode: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RiderModelCopyWith<$Res>? get rider {
    if (_value.rider == null) {
      return null;
    }

    return $RiderModelCopyWith<$Res>(_value.rider!, (value) {
      return _then(_value.copyWith(rider: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodStoreModelCopyWith<$Res>? get foodStore {
    if (_value.foodStore == null) {
      return null;
    }

    return $FoodStoreModelCopyWith<$Res>(_value.foodStore!, (value) {
      return _then(_value.copyWith(foodStore: value) as $Val);
    });
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallCenterModelCopyWith<$Res>? get callCenter {
    if (_value.callCenter == null) {
      return null;
    }

    return $CallCenterModelCopyWith<$Res>(_value.callCenter!, (value) {
      return _then(_value.copyWith(callCenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
    _$OrderModelImpl value,
    $Res Function(_$OrderModelImpl) then,
  ) = __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusUpdateTime,
    String? id,
    String? paymentMethod,
    String type,
    List<BasketModel>? basket,
    PromoCodeModel? promoCode,
    String status,
    double deliveryFee,
    double rewardsDiscount,
    double promoCodeDiscount,
    double totalDiscount,
    double basketTotal,
    double orderTotal,
    String? driverId,
    double? storeProfit,
    bool rated,
    int rewardPoints,
    UserModel? user,
    RiderModel? rider,
    FoodStoreModel? foodStore,
    CallCenterModel? callCenter,
  });

  @override
  $PromoCodeModelCopyWith<$Res>? get promoCode;
  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $RiderModelCopyWith<$Res>? get rider;
  @override
  $FoodStoreModelCopyWith<$Res>? get foodStore;
  @override
  $CallCenterModelCopyWith<$Res>? get callCenter;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
    _$OrderModelImpl _value,
    $Res Function(_$OrderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? statusUpdateTime = freezed,
    Object? id = freezed,
    Object? paymentMethod = freezed,
    Object? type = null,
    Object? basket = freezed,
    Object? promoCode = freezed,
    Object? status = null,
    Object? deliveryFee = null,
    Object? rewardsDiscount = null,
    Object? promoCodeDiscount = null,
    Object? totalDiscount = null,
    Object? basketTotal = null,
    Object? orderTotal = null,
    Object? driverId = freezed,
    Object? storeProfit = freezed,
    Object? rated = null,
    Object? rewardPoints = null,
    Object? user = freezed,
    Object? rider = freezed,
    Object? foodStore = freezed,
    Object? callCenter = freezed,
  }) {
    return _then(
      _$OrderModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        statusUpdateTime: freezed == statusUpdateTime
            ? _value.statusUpdateTime
            : statusUpdateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentMethod: freezed == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        basket: freezed == basket
            ? _value.basket
            : basket // ignore: cast_nullable_to_non_nullable
                  as List<BasketModel>?,
        promoCode: freezed == promoCode
            ? _value.promoCode
            : promoCode // ignore: cast_nullable_to_non_nullable
                  as PromoCodeModel?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        deliveryFee: null == deliveryFee
            ? _value.deliveryFee
            : deliveryFee // ignore: cast_nullable_to_non_nullable
                  as double,
        rewardsDiscount: null == rewardsDiscount
            ? _value.rewardsDiscount
            : rewardsDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        promoCodeDiscount: null == promoCodeDiscount
            ? _value.promoCodeDiscount
            : promoCodeDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        totalDiscount: null == totalDiscount
            ? _value.totalDiscount
            : totalDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        basketTotal: null == basketTotal
            ? _value.basketTotal
            : basketTotal // ignore: cast_nullable_to_non_nullable
                  as double,
        orderTotal: null == orderTotal
            ? _value.orderTotal
            : orderTotal // ignore: cast_nullable_to_non_nullable
                  as double,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        storeProfit: freezed == storeProfit
            ? _value.storeProfit
            : storeProfit // ignore: cast_nullable_to_non_nullable
                  as double?,
        rated: null == rated
            ? _value.rated
            : rated // ignore: cast_nullable_to_non_nullable
                  as bool,
        rewardPoints: null == rewardPoints
            ? _value.rewardPoints
            : rewardPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserModel?,
        rider: freezed == rider
            ? _value.rider
            : rider // ignore: cast_nullable_to_non_nullable
                  as RiderModel?,
        foodStore: freezed == foodStore
            ? _value.foodStore
            : foodStore // ignore: cast_nullable_to_non_nullable
                  as FoodStoreModel?,
        callCenter: freezed == callCenter
            ? _value.callCenter
            : callCenter // ignore: cast_nullable_to_non_nullable
                  as CallCenterModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl extends _OrderModel {
  _$OrderModelImpl({
    @TimestampSerializer() this.createdAt,
    @TimestampSerializer() this.statusUpdateTime,
    this.id,
    this.paymentMethod,
    this.type = "DELIVERY",
    this.basket,
    this.promoCode,
    this.status = OrderStatusEnum.defaultValue,
    this.deliveryFee = 0.0,
    this.rewardsDiscount = 0.0,
    this.promoCodeDiscount = 0.0,
    this.totalDiscount = 0.0,
    this.basketTotal = 0.0,
    this.orderTotal = 0.0,
    this.driverId,
    this.storeProfit,
    this.rated = false,
    this.rewardPoints = 0,
    this.user,
    this.rider,
    this.foodStore,
    this.callCenter,
  }) : super._();

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  @TimestampSerializer()
  DateTime? statusUpdateTime;
  @override
  String? id;
  @override
  String? paymentMethod;
  @override
  @JsonKey()
  String type;
  @override
  List<BasketModel>? basket;
  @override
  PromoCodeModel? promoCode;
  @override
  @JsonKey()
  String status;
  @override
  @JsonKey()
  double deliveryFee;
  @override
  @JsonKey()
  double rewardsDiscount;
  @override
  @JsonKey()
  double promoCodeDiscount;
  @override
  @JsonKey()
  double totalDiscount;
  @override
  @JsonKey()
  double basketTotal;
  @override
  @JsonKey()
  double orderTotal;
  @override
  String? driverId;
  @override
  double? storeProfit;
  @override
  @JsonKey()
  bool rated;
  @override
  @JsonKey()
  int rewardPoints;
  @override
  UserModel? user;
  @override
  RiderModel? rider;
  @override
  FoodStoreModel? foodStore;
  @override
  CallCenterModel? callCenter;

  @override
  String toString() {
    return 'OrderModel(createdAt: $createdAt, statusUpdateTime: $statusUpdateTime, id: $id, paymentMethod: $paymentMethod, type: $type, basket: $basket, promoCode: $promoCode, status: $status, deliveryFee: $deliveryFee, rewardsDiscount: $rewardsDiscount, promoCodeDiscount: $promoCodeDiscount, totalDiscount: $totalDiscount, basketTotal: $basketTotal, orderTotal: $orderTotal, driverId: $driverId, storeProfit: $storeProfit, rated: $rated, rewardPoints: $rewardPoints, user: $user, rider: $rider, foodStore: $foodStore, callCenter: $callCenter)';
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(this);
  }
}

abstract class _OrderModel extends OrderModel {
  factory _OrderModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? statusUpdateTime,
    String? id,
    String? paymentMethod,
    String type,
    List<BasketModel>? basket,
    PromoCodeModel? promoCode,
    String status,
    double deliveryFee,
    double rewardsDiscount,
    double promoCodeDiscount,
    double totalDiscount,
    double basketTotal,
    double orderTotal,
    String? driverId,
    double? storeProfit,
    bool rated,
    int rewardPoints,
    UserModel? user,
    RiderModel? rider,
    FoodStoreModel? foodStore,
    CallCenterModel? callCenter,
  }) = _$OrderModelImpl;
  _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  @TimestampSerializer()
  DateTime? get statusUpdateTime;
  @TimestampSerializer()
  set statusUpdateTime(DateTime? value);
  @override
  String? get id;
  set id(String? value);
  @override
  String? get paymentMethod;
  set paymentMethod(String? value);
  @override
  String get type;
  set type(String value);
  @override
  List<BasketModel>? get basket;
  set basket(List<BasketModel>? value);
  @override
  PromoCodeModel? get promoCode;
  set promoCode(PromoCodeModel? value);
  @override
  String get status;
  set status(String value);
  @override
  double get deliveryFee;
  set deliveryFee(double value);
  @override
  double get rewardsDiscount;
  set rewardsDiscount(double value);
  @override
  double get promoCodeDiscount;
  set promoCodeDiscount(double value);
  @override
  double get totalDiscount;
  set totalDiscount(double value);
  @override
  double get basketTotal;
  set basketTotal(double value);
  @override
  double get orderTotal;
  set orderTotal(double value);
  @override
  String? get driverId;
  set driverId(String? value);
  @override
  double? get storeProfit;
  set storeProfit(double? value);
  @override
  bool get rated;
  set rated(bool value);
  @override
  int get rewardPoints;
  set rewardPoints(int value);
  @override
  UserModel? get user;
  set user(UserModel? value);
  @override
  RiderModel? get rider;
  set rider(RiderModel? value);
  @override
  FoodStoreModel? get foodStore;
  set foodStore(FoodStoreModel? value);
  @override
  CallCenterModel? get callCenter;
  set callCenter(CallCenterModel? value);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiderModel _$RiderModelFromJson(Map<String, dynamic> json) {
  return _RiderModel.fromJson(json);
}

/// @nodoc
mixin _$RiderModel {
  @TimestampSerializer()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampSerializer()
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  set firstName(String value) => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  set lastName(String value) => throw _privateConstructorUsedError;

  /// Serializes this RiderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RiderModelCopyWith<RiderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiderModelCopyWith<$Res> {
  factory $RiderModelCopyWith(
    RiderModel value,
    $Res Function(RiderModel) then,
  ) = _$RiderModelCopyWithImpl<$Res, RiderModel>;
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String firstName,
    String lastName,
  });
}

/// @nodoc
class _$RiderModelCopyWithImpl<$Res, $Val extends RiderModel>
    implements $RiderModelCopyWith<$Res> {
  _$RiderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RiderModelImplCopyWith<$Res>
    implements $RiderModelCopyWith<$Res> {
  factory _$$RiderModelImplCopyWith(
    _$RiderModelImpl value,
    $Res Function(_$RiderModelImpl) then,
  ) = __$$RiderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String firstName,
    String lastName,
  });
}

/// @nodoc
class __$$RiderModelImplCopyWithImpl<$Res>
    extends _$RiderModelCopyWithImpl<$Res, _$RiderModelImpl>
    implements _$$RiderModelImplCopyWith<$Res> {
  __$$RiderModelImplCopyWithImpl(
    _$RiderModelImpl _value,
    $Res Function(_$RiderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(
      _$RiderModelImpl(
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RiderModelImpl extends _RiderModel {
  _$RiderModelImpl({
    @TimestampSerializer() this.createdAt,
    this.id,
    this.firstName = "",
    this.lastName = "",
  }) : super._();

  factory _$RiderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiderModelImplFromJson(json);

  @override
  @TimestampSerializer()
  DateTime? createdAt;
  @override
  String? id;
  @override
  @JsonKey()
  String firstName;
  @override
  @JsonKey()
  String lastName;

  @override
  String toString() {
    return 'RiderModel(createdAt: $createdAt, id: $id, firstName: $firstName, lastName: $lastName)';
  }

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RiderModelImplCopyWith<_$RiderModelImpl> get copyWith =>
      __$$RiderModelImplCopyWithImpl<_$RiderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiderModelImplToJson(this);
  }
}

abstract class _RiderModel extends RiderModel {
  factory _RiderModel({
    @TimestampSerializer() DateTime? createdAt,
    String? id,
    String firstName,
    String lastName,
  }) = _$RiderModelImpl;
  _RiderModel._() : super._();

  factory _RiderModel.fromJson(Map<String, dynamic> json) =
      _$RiderModelImpl.fromJson;

  @override
  @TimestampSerializer()
  DateTime? get createdAt;
  @TimestampSerializer()
  set createdAt(DateTime? value);
  @override
  String? get id;
  set id(String? value);
  @override
  String get firstName;
  set firstName(String value);
  @override
  String get lastName;
  set lastName(String value);

  /// Create a copy of RiderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RiderModelImplCopyWith<_$RiderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
