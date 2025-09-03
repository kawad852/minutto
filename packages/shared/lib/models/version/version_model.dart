import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared.dart';

part 'version_model.freezed.dart';
part 'version_model.g.dart';

@unfreezed
class VersionModel with _$VersionModel {
  @JsonSerializable(explicitToJson: true)
  factory VersionModel({
    @Default("0") String branchesVersion,
    @Default("0") String departmentsVersion,
    @Default("0") String usersVersion,
    @Default("0") String citiesVersion,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) => _$VersionModelFromJson(json);
}
