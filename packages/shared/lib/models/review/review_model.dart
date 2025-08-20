import '../../shared.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@unfreezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    String? comment,
    @Default(0) double stars,
    @Default('') String userId,
    @Default('') String firstName,
    @Default('') String orderId,
    String? lastName,
    @Default(false) bool published,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);
}
