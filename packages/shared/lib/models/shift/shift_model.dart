import '../../shared.dart';

part 'shift_model.freezed.dart';
part 'shift_model.g.dart';

@unfreezed
class ShiftModel with _$ShiftModel {
  @JsonSerializable(explicitToJson: true)
  factory ShiftModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String companyId,
    @Default('') String name,
    @Default('') String startHour,
    @Default('') String endHour,
    @Default([]) List<int> days,
    @Default([]) List<String> branchIds,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);
}
