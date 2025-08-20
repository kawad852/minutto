import '../../shared.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@unfreezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String nameEn,
    @Default('') String nameAr,
    @Default('') String thumbnail,
    @Default('') String parentId,
    @Default(true) bool published,
    @Default(false) bool showOnHome,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default(false) bool selected,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  CategoryModel._();

  String get name {
    return UiHelper.translate(textEN: nameEn, textAR: nameAr);
  }

  factory CategoryModel.mock() {
    return CategoryModel(nameEn: BoneMock.name, nameAr: BoneMock.name);
  }
}
