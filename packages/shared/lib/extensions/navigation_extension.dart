import '../shared.dart';

extension NavigationExtension on BuildContext {
  Future<T?> navigate<T>(WidgetBuilder builder, {bool fullscreenDialog = false}) {
    return Navigator.push<T?>(
      this,
      MaterialPageRoute(builder: builder, fullscreenDialog: fullscreenDialog),
    ).then((value) => value);
  }

  Future<T?> navigateReplacement<T>(WidgetBuilder builder, {bool fullscreenDialog = false}) {
    return Navigator.pushReplacement<T?, dynamic>(
      this,
      MaterialPageRoute(builder: builder, fullscreenDialog: fullscreenDialog),
    ).then((value) => value);
  }

  Future<T?> navigateAndRemoveUntil<T>(WidgetBuilder builder) {
    return Navigator.pushAndRemoveUntil<T?>(
      this,
      MaterialPageRoute(builder: builder),
      (route) => false,
    ).then((value) => value);
  }
}
