import '../../shared.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@unfreezed
class DepartmentModel with _$DepartmentModel {
  @JsonSerializable(explicitToJson: true)
  factory DepartmentModel({
    @TimestampSerializer() required DateTime createdAt,
    @Default('') String id,
    @Default('') String name,
    @Default('') String companyId,
    @Default('') String branchId,
    @Default('') String managerId,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);
}
