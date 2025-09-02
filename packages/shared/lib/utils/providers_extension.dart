import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared/providers/drawer_provider.dart';
import 'package:shared/providers/portal_provider.dart';

import '../providers/app_provider.dart';
import '../providers/location_provider.dart';
import '../providers/user_provider.dart';

extension ProvidersExtension on BuildContext {
  UserProvider get userProvider => read<UserProvider>();
  AppProvider get appProvider => read<AppProvider>();
  LocationProvider get locationProvider => read<LocationProvider>();
  PortalProvider get portalProvider => read<PortalProvider>();
  DrawerProvider get drawerProvider => read<DrawerProvider>();
}
