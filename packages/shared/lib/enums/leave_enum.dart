import 'package:flutter/cupertino.dart';
import 'package:shared/helper/translation_extension.dart';

enum LeaveRequestType {
  vacation('vacation'),
  leave('leave');

  final String value;

  const LeaveRequestType(this.value);
}

enum LeaveReason {
  sick('sick'),
  bereavement('bereavement');

  final String value;

  const LeaveReason(this.value);

  static label(BuildContext context, String reason) {
    final value = LeaveReason.values.firstWhere((e) => e.value == reason);
    switch (value) {
      case LeaveReason.sick:
        return context.appLocalization.sickLeave;
      case LeaveReason.bereavement:
        return context.appLocalization.bereavementLeave;
    }
  }
}
