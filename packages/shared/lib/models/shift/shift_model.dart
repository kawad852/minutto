import '../../shared.dart';

part 'shift_model.freezed.dart';
part 'shift_model.g.dart';

@unfreezed
class ShiftModel with _$ShiftModel {
  @JsonSerializable(explicitToJson: true)
  factory ShiftModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String startHour,
    @Default('') String endHour,
    @Default([]) List<ShiftDayModel> days,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);
}

@unfreezed
class ShiftDayModel with _$ShiftDayModel {
  @JsonSerializable(explicitToJson: true)
  factory ShiftDayModel({
    @Default('') String day,
    required DateTime startDate,
    required DateTime endHour,
  }) = _ShiftDayModel;

  factory ShiftDayModel.fromJson(Map<String, dynamic> json) => _$ShiftDayModelFromJson(json);
}
