import '../../shared.dart';

part 'policy_model.freezed.dart';
part 'policy_model.g.dart';

@unfreezed
class PolicyModel with _$PolicyModel {
  factory PolicyModel({
    String? id,
    String? content,
    String? title,
    String? contentEn,
    String? contentAr,
    String? titleEn,
    String? titleAr,
  }) = _PolicyModel;

  factory PolicyModel.fromJson(Map<String, dynamic> json) => _$PolicyModelFromJson(json);
}
