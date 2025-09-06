// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      code: json['code'] as String? ?? '',
      leavePolicy: json['leavePolicy'] == null
          ? null
          : LeavePolicyModel.fromJson(
              json['leavePolicy'] as Map<String, dynamic>,
            ),
      attendancePolicy: json['attendancePolicy'] == null
          ? null
          : AttendancePolicyModel.fromJson(
              json['attendancePolicy'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'leavePolicy': instance.leavePolicy?.toJson(),
      'attendancePolicy': instance.attendancePolicy?.toJson(),
    };

_$LeavePolicyModelImpl _$$LeavePolicyModelImplFromJson(
  Map<String, dynamic> json,
) => _$LeavePolicyModelImpl(
  maxDaysPerRequest: (json['maxDaysPerRequest'] as num?)?.toInt() ?? 0,
  allowCarryOver: json['allowCarryOver'] as bool? ?? false,
  maxCarryOverDays: (json['maxCarryOverDays'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$LeavePolicyModelImplToJson(
  _$LeavePolicyModelImpl instance,
) => <String, dynamic>{
  'maxDaysPerRequest': instance.maxDaysPerRequest,
  'allowCarryOver': instance.allowCarryOver,
  'maxCarryOverDays': instance.maxCarryOverDays,
};

_$AttendancePolicyModelImpl _$$AttendancePolicyModelImplFromJson(
  Map<String, dynamic> json,
) => _$AttendancePolicyModelImpl(
  shiftGraceMinutes: (json['shiftGraceMinutes'] as num?)?.toInt() ?? 0,
  lateAfterGrace: json['lateAfterGrace'] as bool? ?? true,
  lateDeductionRules: (json['lateDeductionRules'] as List<dynamic>)
      .map((e) => LateDeductionRuleModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$AttendancePolicyModelImplToJson(
  _$AttendancePolicyModelImpl instance,
) => <String, dynamic>{
  'shiftGraceMinutes': instance.shiftGraceMinutes,
  'lateAfterGrace': instance.lateAfterGrace,
  'lateDeductionRules': instance.lateDeductionRules
      .map((e) => e.toJson())
      .toList(),
};

_$LateDeductionRuleModelImpl _$$LateDeductionRuleModelImplFromJson(
  Map<String, dynamic> json,
) => _$LateDeductionRuleModelImpl(
  fromMinutes: (json['fromMinutes'] as num?)?.toInt() ?? 0,
  toMinutes: (json['toMinutes'] as num?)?.toInt() ?? 0,
  value: (json['value'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$LateDeductionRuleModelImplToJson(
  _$LateDeductionRuleModelImpl instance,
) => <String, dynamic>{
  'fromMinutes': instance.fromMinutes,
  'toMinutes': instance.toMinutes,
  'value': instance.value,
};
