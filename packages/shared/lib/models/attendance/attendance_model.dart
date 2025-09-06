import '../../shared.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@unfreezed
class AttendanceModel with _$AttendanceModel {
  @JsonSerializable(explicitToJson: true)
  factory AttendanceModel({
    @TimestampSerializer() DateTime? date,
    @Default('') String id,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);
}
