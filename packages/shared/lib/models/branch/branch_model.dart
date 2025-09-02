import '../../shared.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@unfreezed
class BranchModel with _$BranchModel {
  @JsonSerializable(explicitToJson: true)
  factory BranchModel({
    @TimestampSerializer() required DateTime createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String companyId,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) => _$BranchModelFromJson(json);
}
