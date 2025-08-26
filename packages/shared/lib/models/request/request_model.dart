import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/helper/time_stamp_serializer.dart';
import 'package:shared/models/attachment/attachment_model.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@unfreezed
class RequestModel with _$RequestModel {
  @JsonSerializable(explicitToJson: true)
  factory RequestModel({
    @TimestampSerializer() required DateTime createdAt,
    @TimestampSerializer() required DateTime fromDate,
    @TimestampSerializer() required DateTime toDate,
    @Default('') String id,
    @Default('') String userId,
    @Default('') String type,
    @Default('') String companyId,
    @Default('') String requestType,
    String? notes,
    @Default([]) List<AttachmentModel> attachments,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}
