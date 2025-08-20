import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

class GuestHelper {
  static late Widget registrationScreen;

  static void openSheet(BuildContext context, {required VoidCallback action}) {
    if (context.userProvider.isAuthenticated) {
      action();
    } else {
      showCupertinoSheet<void>(
        context: context,
        useNestedNavigation: true,
        pageBuilder: (BuildContext context) {
          return registrationScreen;
        },
      ).then((value) {
        if (context.mounted && context.userProvider.isAuthenticated) {
          action();
        }
      });
    }
  }
}
