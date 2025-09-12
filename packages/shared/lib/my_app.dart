import 'package:shared/shared.dart';

import 'shared_2.dart';

class MyApp extends StatefulWidget {
  final Widget Function(bool isAuthenticated) builder;
  final WidgetBuilder logoutBuilder;
  final List<dynamic> Function(BuildContext context)? providers;
  final Function(BuildContext context)? onInit;
  final GoRouter Function(UserModel? user, RoleModel? role)? goRouter;

  const MyApp({
    super.key,
    required this.builder,
    required this.logoutBuilder,
    this.providers,
    this.onInit,
    this.goRouter,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _goRouter;
  late Widget _builder;

  @override
  void initState() {
    super.initState();
    if (widget.onInit != null) {
      widget.onInit!(context);
    }
    if (widget.goRouter != null) {
      _goRouter = widget.goRouter!(MySharedPreferences.user, MySharedPreferences.role);
    } else {
      _builder = widget.builder(MySharedPreferences.user?.id != null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<AppProvider, UserProvider>(
      builder: (BuildContext context, appProvider, userProvider, Widget? child) {
        final isLight = appProvider.appTheme == ThemeEnum.light;
        return MultiProvider(
          providers: [
            if (userProvider.isAuthenticated)
              StreamProvider<UserModel>.value(
                value: userProvider.userDocRef.snapshots().map(
                  (event) => event.data() ?? UserModel(),
                ),
                initialData: MySharedPreferences.user ?? UserModel(),
                lazy: false,
                updateShouldNotify: (initialValue, value) {
                  MySharedPreferences.user = value;
                  Future.microtask(() {
                    if (userProvider.isAuthenticated &&
                        (value.id.isEmpty || value.status == UserStatusEnum.inactive.value)) {
                      Fluttertoast.showToast(msg: "Authorization Failed");
                      // ignore: use_build_context_synchronously
                      userProvider.logout(
                        rootNavigatorKey.currentContext!,
                        builder: widget.logoutBuilder,
                      );
                    }
                  });
                  return true;
                },
              ),
            if (widget.providers != null) ...widget.providers!(context),
            StreamProvider<bool>.value(value: null, initialData: true),
          ],
          builder: (context, _) {
            return ThemeProvider(
              initTheme: MyTheme().materialTheme(context, isLight),
              builder: (context, theme) {
                if (widget.goRouter != null) {
                  return MaterialApp.router(
                    builder: EasyLoading.init(),
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: [
                      ...AppLocalizations.localizationsDelegates,
                      FlutterQuillLocalizations.delegate,
                    ],
                    supportedLocales: AppLocalizations.supportedLocales,
                    locale: appProvider.appLocale,
                    theme: theme,
                    routerConfig: _goRouter,
                  );
                }
                return MaterialApp(
                  navigatorKey: rootNavigatorKey,
                  builder: EasyLoading.init(),
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: appProvider.appLocale,
                  theme: theme,
                  home: _builder,
                );
              },
            );
          },
        );
      },
    );
  }
}
