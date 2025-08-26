import 'package:shared/services/typesense_service.dart';

import '../shared.dart';

class MyAppHelper {
  void _logout() {
    MySharedPreferences.clearStorage();
  }

  Future<void> init({
    required FirebaseOptions firebaseOptions,
    required Widget Function(bool isAuthenticated) builder,
    required WidgetBuilder logoutBuilder,
    List<dynamic> Function(BuildContext context)? providers,
    Function(BuildContext context)? onInit,
    GoRouter Function(UserModel? user, RoleModel? role)? goRouter,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: firebaseOptions);
    await MySharedPreferences.init();
    // _logout();
    setupLocator();
    await MyStorage.init();
    await FlutterBranchSdk.init(enableLogging: true);
    await FirebaseAppCheck.instance.activate(
      // androidProvider: AndroidProvider.playIntegrity,
      // appleProvider: AppleProvider.appAttest,
      androidProvider: AndroidProvider.debug,
      appleProvider: AppleProvider.debug,
    );
    TypeSenseService.init();
    setLocaleMessages('en', EnMessages());
    setLocaleMessages('ar', ArMessages());
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => UserProvider()),
          ChangeNotifierProvider(create: (context) => AppProvider()),
          ChangeNotifierProvider(create: (context) => LocationProvider()),
          ChangeNotifierProvider(create: (context) => DrawerProvider()),
          ChangeNotifierProvider(create: (context) => PortalProvider()),
          ChangeNotifierProvider(create: (context) => OrdersProvider()),
        ],
        child: MyApp(
          builder: builder,
          logoutBuilder: logoutBuilder,
          providers: providers,
          onInit: onInit,
          goRouter: goRouter,
        ),
      ),
    );
  }
}
