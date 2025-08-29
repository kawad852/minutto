// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_advance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalaryAdvanceModelImpl _$$SalaryAdvanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$SalaryAdvanceModelImpl(
  createdAt: DateTime.parse(json['createdAt'] as String),
  id: json['id'] as String? ?? "",
  status: json['status'] as String? ?? StatusEnum.defaultValue,
  userId: json['userId'] as String? ?? "",
  companyId: json['companyId'] as String? ?? "",
  notes: json['notes'] as String?,
  amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
  attachments:
      (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$SalaryAdvanceModelImplToJson(
  _$SalaryAdvanceModelImpl instance,
) => <String, dynamic>{
  'createdAt': instance.createdAt.toIso8601String(),
  'id': instance.id,
  'status': instance.status,
  'userId': instance.userId,
  'companyId': instance.companyId,
  'notes': instance.notes,
  'amount': instance.amount,
  'attachments': instance.attachments.map((e) => e.toJson()).toList(),
};
