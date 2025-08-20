import 'package:freezed_annotation/freezed_annotation.dart';

import '../../helper/time_stamp_serializer.dart';

part 'cancel_model.freezed.dart';
part 'cancel_model.g.dart';

@unfreezed
class CancelModel with _$CancelModel {
  factory CancelModel({
    @TimestampSerializer() DateTime? createdAt,
    String? reasonId,
    String? note,
    String? canceledBy,
    String? roleId,
  }) = _CancelModel;

  factory CancelModel.fromJson(Map<String, dynamic> json) =>
      _$CancelModelFromJson(json);
}
