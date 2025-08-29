import '../../../shared.dart';

part 'salary_advance_model.freezed.dart';
part 'salary_advance_model.g.dart';

@unfreezed
class SalaryAdvanceModel with _$SalaryAdvanceModel {
  @JsonSerializable(explicitToJson: true)
  factory SalaryAdvanceModel({
    @TimestampSerializer() required DateTime createdAt,
    @Default("") String id,
    @Default(StatusEnum.defaultValue) String status,
    @Default("") String userId,
    @Default("") String companyId,
    String? notes,
    @Default(0.0) double amount,
    @Default([]) List<AttachmentModel> attachments,
  }) = _SalaryAdvanceModel;

  factory SalaryAdvanceModel.fromJson(Map<String, dynamic> json) =>
      _$SalaryAdvanceModelFromJson(json);
}
