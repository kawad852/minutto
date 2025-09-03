import '../../shared.dart';

class AppProvider extends ChangeNotifier {
  Locale appLocale = Locale(MySharedPreferences.language);
  String appTheme = MySharedPreferences.theme;
  static String countryCode = MySharedPreferences.countryCode;

  void setLanguage(BuildContext context, {required String languageCode}) async {
    MySharedPreferences.language = languageCode;
    appLocale = Locale(languageCode);
    notifyListeners();
  }

  void setTheme(BuildContext context) async {
    final isLight = appTheme == ThemeEnum.light;
    final themeEnum = isLight ? ThemeEnum.dark : ThemeEnum.light;
    MySharedPreferences.theme = themeEnum;
    appTheme = themeEnum;

    ThemeSwitcher.of(context).changeTheme(
      theme: MyTheme().materialTheme(context, appTheme == ThemeEnum.light),
      // isReversed: appTheme != ThemeEnum.light,
    );

    // notifyListeners();
  }

  static Future<void> getCountryCode() async {
    try {
      final response = await get(Uri.https('api.country.is'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        final countryCodeModel = CountryCodeModel.fromJson(body);
        countryCode = countryCodeModel.countryCode ?? kFallBackCountryCode;
        MySharedPreferences.countryCode = countryCode;
      } else {
        countryCode = kFallBackCountryCode;
      }
    } catch (e) {
      countryCode = kFallBackCountryCode;
    } finally {
      debugPrint('countryCode:: $countryCode');
    }
  }
}
