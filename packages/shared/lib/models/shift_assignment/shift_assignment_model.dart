import '../../shared.dart';

part 'shift_assignment_model.freezed.dart';
part 'shift_assignment_model.g.dart';

@unfreezed
class ShiftAssignmentModel with _$ShiftAssignmentModel {
  @JsonSerializable(explicitToJson: true)
  factory ShiftAssignmentModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String userId,
    @Default('') String shiftId,
  }) = _ShiftAssignmentModel;

  factory ShiftAssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftAssignmentModelFromJson(json);
}
