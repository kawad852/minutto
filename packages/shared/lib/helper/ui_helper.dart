import '../shared.dart';

class UiHelper {
  static String translate({
    required String? textEN,
    required String? textAR,
    String? textUr,
    String? textFr,
    String? textTr,
    String? textFa,
  }) {
    const language = 'en';
    switch (language) {
      case LanguageEnum.arabic:
        return textAR ?? textEN ?? '';
      default:
        return textEN ?? textAR ?? '';
    }
  }

  static String? getPhoneNumber(BuildContext context, String? code, String? phoneNum) {
    if (code == null || phoneNum == null) {
      return null;
    }
    return "${context.getDialCode(code)}$phoneNum";
  }

  static String getDisplayName(String? firstName, String? lastName) {
    if (firstName == null) return '';
    if (lastName == null || lastName.trim().isEmpty) return firstName;
    return '$firstName $lastName';
  }

  static IconData getBuildingIcon(String value) {
    final type = BuildingType.values.firstWhere((e) => e.value == value);
    switch (type) {
      case BuildingType.apartment:
        return FontAwesomeIcons.apartment;
      case BuildingType.office:
        return FontAwesomeIcons.chairOffice;
      default:
        return FontAwesomeIcons.house;
    }
  }
}
