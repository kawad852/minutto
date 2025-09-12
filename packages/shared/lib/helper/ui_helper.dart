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
}
