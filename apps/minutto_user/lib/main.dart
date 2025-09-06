import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

import 'firebase_options.dart';

WidgetBuilder get kLogoutBuilder =>
    (context) => LoginScreen();

void main() async {
  await MyAppHelper().init(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    onInit: (context) {
      // GuestHelper.registrationScreen = RegistrationScreen(showGuestButton: false);
      ScooterMarker.init(context);
    },
    builder: (bool isAuthenticated) {
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
