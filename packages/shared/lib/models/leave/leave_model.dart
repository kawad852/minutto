import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/helper/time_stamp_serializer.dart';

part 'leave_model.freezed.dart';
part 'leave_model.g.dart';

@unfreezed
class LeaveModel with _$LeaveModel {
  factory LeaveModel({
    @TimestampSerializer() required DateTime createdAt,
    @TimestampSerializer() required DateTime fromDate,
    @TimestampSerializer() required DateTime toDate,
    @Default('') String id,
    @Default('') String userId,
    @Default('') String companyId,
    @Default('') String requestType,
    String? notes,
    @Default([]) List<String> attachments, // file URLs or paths
  }) = _LeaveModel;

  factory LeaveModel.fromJson(Map<String, dynamic> json) => _$LeaveModelFromJson(json);
}
