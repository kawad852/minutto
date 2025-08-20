import '../../shared.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@unfreezed
class BrandModel with _$BrandModel {
  factory BrandModel({
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default('') String logo,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) => _$BrandModelFromJson(json);
}
