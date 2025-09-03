import '../shared.dart';

extension SnackbarExtension on BuildContext {
  void showSnackBar(
    String msg, {
    int duration = 4,
    SnackBarAction? action,
    bool floating = true,
    Widget? contentWidget,
  }) {
    ScaffoldMessenger.of(this)
        .showSnackBar(
          SnackBar(
            content: contentWidget ?? Text(msg),
            showCloseIcon: action == null,
            behavior: floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
            duration: Duration(seconds: duration),
            action: action,
          ),
        )
        .closed
        .then((value) {
          // ScaffoldMessenger.of(rootNavigatorKey.currentContext!).removeCurrentSnackBar();
        });
  }
}
