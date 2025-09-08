import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared.dart';

part 'version_model.freezed.dart';
part 'version_model.g.dart';

@unfreezed
class VersionModel with _$VersionModel {
  @JsonSerializable(explicitToJson: true)
  factory VersionModel({
    @Default(0) int branchesVersion,
    @Default(0) int departmentsVersion,
    @Default(0) int usersVersion,
    @Default(0) int citiesVersion,
    @Default(0) int shiftsVersion,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) => _$VersionModelFromJson(json);
}
