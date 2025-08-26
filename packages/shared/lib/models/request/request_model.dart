import '../../shared.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@unfreezed
class RequestModel with _$RequestModel {
  @JsonSerializable(explicitToJson: true)
  factory RequestModel({
    @TimestampSerializer() required DateTime createdAt,
    @TimestampSerializer() required DateTime fromDate,
    @TimestampSerializer() required DateTime toDate,
    @TimestampSerializer() required DateTime date,
    @Default('') String id,
    @Default('') String userId,
    @Default('') String type,
    @Default('') String companyId,
    @Default('') String reason,
    @Default(StatusEnum.defaultValue) String status,
    String? notes,
    @Default([]) List<AttachmentModel> attachments,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}
