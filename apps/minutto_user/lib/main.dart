import 'package:minutto_user/shared.dart';
import 'package:shared/shared.dart';

import 'firebase_options.dart';

WidgetBuilder get kLogoutBuilder =>
    (context) => Placeholder();

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
      } else {
        return IntroScreen(); 
        //LoginScreen();
      }
    },
    logoutBuilder: kLogoutBuilder,
    providers: (context) => [
      StreamProvider<List<BasketModel>>.value(
        value: context.userProvider.userBasketStream.map(
          (event) => event.docs.map((e) => e.data()).toList(),
        ),
        initialData: MySharedPreferences.basket,
        updateShouldNotify: (initialValue, value) {
          MySharedPreferences.basket = value;
          return true;
        },
      ),
    ],
  );
}
