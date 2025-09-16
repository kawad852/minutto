import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

import 'firebase_options.dart';

WidgetBuilder get kLogoutBuilder =>
    (context) => LoginScreen();

void main() async {
  await MyAppHelper().init(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    builder: (bool isAuthenticated) {
      print("isAuthenticated:: $isAuthenticated");
      if (isAuthenticated) {
        return AppNavBar();
      } else if (MySharedPreferences.passedIntro) {
        return LoginScreen();
      } else {
        return IntroScreen();
      }
    },
    logoutBuilder: kLogoutBuilder,
    providers: (context) => [
      if (context.userProvider.isAuthenticated)
        StreamProvider<VersionModel>.value(
          value: FirebaseFirestore.instance.versionsDoc.snapshots().map(
            (event) => event.data() ?? VersionModel(),
          ),
          initialData: MySharedPreferences.versions ?? VersionModel(),
          lazy: false,
          updateShouldNotify: (initialValue, value) {
            CacheService.instance.fetchVersions();
            return true;
          },
        ),
    ],
  );
}
