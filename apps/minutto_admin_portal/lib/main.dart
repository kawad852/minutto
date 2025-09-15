import 'package:shared/shared.dart';

import 'firebase_options.dart';
import 'minutto_admin_portal.dart';

void main() async {
  await MyAppHelper().init(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    onInit: (context) {},
    goRouter: (user, role) {
      return GoRouter(
        routes: $appRoutes,
        initialLocation: user?.id != null ? role?.initialLocation : LoginRoute().location,
        navigatorKey: rootNavigatorKey,
        redirect: (context, state) {
          if (context.userProvider.isAuthenticated) {
            final hasPermission = context.portalProvider.hasLocationPermission(
              state.matchedLocation,
            );
            if (!hasPermission) {
              return NoAccessRoute().location;
            }
            return null;
          } else if (!context.userProvider.isAuthenticated) {
            return LoginRoute().location;
          } else {
            return null;
          }
        },
      );
    },
    builder: (bool isAuthenticated) {
      return Placeholder();
    },
    logoutBuilder: (context) => PortalLoginScreen(),
  );
}
