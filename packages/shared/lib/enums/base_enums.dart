import 'package:flutter/cupertino.dart';
import 'package:shared/extensions/base_extension.dart';
import 'package:shared/helper/translation_extension.dart';

class LanguageEnum {
  static const String english = 'en';
  static const String arabic = 'ar';
}

class ThemeEnum {
  static const String light = 'light';
  static const String dark = 'dark';
}

class AuthProviders {
  static const String google = 'google';
  static const String apple = 'apple';
  static const String phone = 'phone';
  static const String email = 'email';
}

enum ActionType { add, edit, delete }

enum CheckingType { qr, location }

enum RequestTypeEnum { vacation, leave, overtime }

enum FeedBackType { alarm, rewards }

enum RewardsType { allowance, incentive }

enum StatusEnum {
  pending(defaultValue),
  accepted("accepted"),
  rejected("rejected");

  static const defaultValue = "pending";
  final String value;

  const StatusEnum(this.value);

  static (String label, Color color) info(BuildContext context, String status) {
    final value = values.firstWhere((e) => e.value == status);
    switch (value) {
      case StatusEnum.rejected:
        return (context.appLocalization.rejected, context.colorPalette.redDF0);
      case StatusEnum.accepted:
        return (context.appLocalization.accepted, context.colorPalette.green19B);
      default:
        return (context.appLocalization.pending, context.colorPalette.yellowF69);
    }
  }
}

enum PrivacyType { policy, app }

enum AdditionsType { alarm, discount, incentive}

enum ReplyType { accept, reject}
