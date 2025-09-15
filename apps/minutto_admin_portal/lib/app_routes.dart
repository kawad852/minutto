import 'package:shared/shared.dart';

import 'minutto_admin_portal.dart';

part 'app_routes.g.dart';

// this is the commit where to get back to in case you want shellRoutes again

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();
final companiesRouteKey = GlobalKey<NavigatorState>();
final usersRouteKey = GlobalKey<NavigatorState>();
final adminsRouteKey = GlobalKey<NavigatorState>();
final rolesRouteKey = GlobalKey<NavigatorState>();
final policiesRouteKey = GlobalKey<NavigatorState>();

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const PortalLoginScreen();
  }
}

@TypedGoRoute<NoAccessRoute>(path: '/no-access')
class NoAccessRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const NoAccessScreen();
  }
}

/// AppNavBar
@TypedStatefulShellRoute<AppNavBarRoute>(
  branches: [
    ///Manage
    TypedStatefulShellBranch<CompaniesTableBranch>(
      routes: [TypedGoRoute<CompaniesTableRoute>(path: '/companies')],
    ),
    TypedStatefulShellBranch<UsersTableBranch>(
      routes: [TypedGoRoute<UsersTableRoute>(path: '/users')],
    ),

    ///Config
    TypedStatefulShellBranch<AdminsTableBranch>(
      routes: [TypedGoRoute<AdminsTableRoute>(path: '/admins')],
    ),
    TypedStatefulShellBranch<RolesTableBranch>(
      routes: [TypedGoRoute<RolesTableRoute>(path: '/roles')],
    ),
    TypedStatefulShellBranch<PoliciesTableBranch>(
      routes: [TypedGoRoute<PoliciesTableRoute>(path: '/policies')],
    ),
  ],
)
class AppNavBarRoute extends StatefulShellRouteData {
  const AppNavBarRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  builder(BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
    return AppNavRail(navigationShell: navigationShell);
  }
}

///Manage ...

//companies
class CompaniesTableBranch extends StatefulShellBranchData {
  const CompaniesTableBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = companiesRouteKey;
}

class CompaniesTableRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const CompaniesTable();
  }
}

//users
class UsersTableBranch extends StatefulShellBranchData {
  const UsersTableBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = usersRouteKey;
}

class UsersTableRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const UsersTable();
  }
}

///....

///Config

//Admins
class AdminsTableBranch extends StatefulShellBranchData {
  const AdminsTableBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = adminsRouteKey;
}

class AdminsTableRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const AdminsTable();
  }
}

//roles
class RolesTableBranch extends StatefulShellBranchData {
  const RolesTableBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = rolesRouteKey;
}

class RolesTableRoute extends GoRouteData {
  @override
  build(BuildContext context, GoRouterState state) {
    return const RolesTable();
  }
}

//policies
class PoliciesTableBranch extends StatefulShellBranchData {
  const PoliciesTableBranch();
  static final GlobalKey<NavigatorState> $navigatorKey = policiesRouteKey;
}

class PoliciesTableRoute extends GoRouteData {
  PoliciesTableRoute();

  @override
  build(BuildContext context, GoRouterState state) {
    return const PoliciesTable();
  }
}
