import '../shared.dart';

extension BaseExtensions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;

  void unFocusKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
  String get currency => isRTL ? 'د.أ' : 'JD';
  String? get countryCode => AppProvider.countryCode;

  Color get opacityBackgroundColor => colorScheme.primaryContainer.withValues(alpha: 0.08);

  Size get mediaQuery => MediaQuery.sizeOf(this);

  String getDialCode(String code) => kCountries
      .singleWhere(
        (element) => element.code == code,
        orElse: () => CountryModel(code: kFallBackCountryCode),
      )
      .dialCode!;

  String get currentRoutePath => GoRouter.of(this).routeInformationProvider.value.uri.path;

  Color get variantPrimary => colorScheme.secondaryContainer.withValues(alpha: 0.20);
}
