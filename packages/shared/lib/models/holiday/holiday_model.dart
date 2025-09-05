import '../../shared.dart';

part 'holiday_model.freezed.dart';
part 'holiday_model.g.dart';

@unfreezed
class HolidayModel with _$HolidayModel {
  @JsonSerializable(explicitToJson: true)
  factory HolidayModel({
    @TimestampSerializer() DateTime? createdAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    @Default('') String id,
    @Default('') String companyId,
    @Default('') String name,
    required List<String> branchIds,
    @JsonKey(includeToJson: false, includeFromJson: false) List<BranchModel>? branchModels,
  }) = _HolidayModel;

  factory HolidayModel.fromJson(Map<String, dynamic> json) => _$HolidayModelFromJson(json);

  HolidayModel._();

  List<BranchModel> get branches {
    return branchModels ??= MyStorage.branches.where((e) => branchIds.contains(e.id)).toList();
  }
}
