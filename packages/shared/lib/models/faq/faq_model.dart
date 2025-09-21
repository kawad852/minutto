import '../../shared.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@unfreezed
class FAQModel with _$FAQModel {
  @JsonSerializable(explicitToJson: true)
  factory FAQModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String question,
    @Default('') String answer,
  }) = _FAQModel;

  factory FAQModel.fromJson(Map<String, dynamic> json) => _$FAQModelFromJson(json);
}
