import '../shared.dart';

extension TimeagoExtension on DateTime {
  String get timeAgo {
    return format(
      this,
      locale: MySharedPreferences.language,
    ).replaceAll('about an', 'An');
  }
}
