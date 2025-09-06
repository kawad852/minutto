import '../../shared.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@unfreezed
class AttendanceModel with _$AttendanceModel {
  @JsonSerializable(explicitToJson: true)
  factory AttendanceModel({
    @TimestampSerializer() DateTime? createdAt,
    @Default('') String id,
    @Default('') String type,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);
}
