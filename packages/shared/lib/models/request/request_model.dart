import '../../shared.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

@unfreezed
class RequestModel with _$RequestModel {
  @JsonSerializable(explicitToJson: true)
  factory RequestModel({
    @TimestampSerializer() required DateTime createdAt,
    @TimestampSerializer() DateTime? fromDate,
    @TimestampSerializer() DateTime? toDate,
    @TimestampSerializer() DateTime? date,
    @Default('') String id,
    @Default('') String userId,
    @Default('') String type,
    @Default('') String companyId,
    String? reason,
    @Default(StatusEnum.defaultValue) String status,
    String? notes,
    String? adminNotes,
    @Default([]) List<AttachmentModel> attachments,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}
