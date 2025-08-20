import '../../shared.dart';

part 'basket_model.freezed.dart';
part 'basket_model.g.dart';

@unfreezed
class BasketModel with _$BasketModel {
  factory BasketModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    String? storeId,
    ProductModel? product,
    @JsonKey(includeToJson: false, includeFromJson: false) Object? globalKey,
  }) = _BasketModel;

  factory BasketModel.fromJson(Map<String, dynamic> json) =>
      _$BasketModelFromJson(json);
}
