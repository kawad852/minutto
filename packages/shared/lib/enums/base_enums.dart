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

enum OrderTypeEnum { vacation, leave, overtime }

enum FeedBackType { alarm, rewards }

enum RewardsType { allowance, incentive }

enum StatusEnum {
  pending(defaultValue),
  rejected("rejected");

  static const defaultValue = "pending";
  final String value;

  const StatusEnum(this.value);

  String label(String status) {
    final value = values.firstWhere((e) => e.value == status);
    switch (value) {
      case StatusEnum.rejected:
        return '';
      default:
        return '';
    }
  }
}

enum PrivacyType { policy, app }
