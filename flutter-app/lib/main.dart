import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:tremors/auth/auth_service.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/navigation.dart';
import 'package:tremors/theme.dart';
import 'package:tremors/tremors_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final tremorsTheme = createTheme();

  final localKey = UniqueKey();
  final rootKey = GlobalKey<NavigatorState>();
  final shellKey = GlobalKey<NavigatorState>();

  final app = MaterialApp.router(
      theme: (await tremorsTheme).themeData,
      routerConfig: GoRouter(
        navigatorKey: rootKey,
        routes: [
          StatefulShellRoute.indexedStack(
            builder: (context, state, child) => TremorsPage(child: child),
            redirect: (context, goRouterState) {
              if (context.read<AuthService>().isLogged) {
                return null;
              } else {
                logger.i("User is not logged, redirecting them to login page.");
                return "/login";
              }
            },
            branches: [
              StatefulShellBranch(
                routes: [GoRoute(path: '/', builder: mapPage)],
              ),
              StatefulShellBranch(
                routes: [GoRoute(path: '/layers', builder: layersPage)],
              ),
              StatefulShellBranch(
                routes: [GoRoute(path: '/search', builder: searchPage)],
              ),
              StatefulShellBranch(
                routes: [GoRoute(path: '/settings', builder: settingsPage)],
              ),
            ],
          ),
          GoRoute(path: '/login', builder: loginPage),
        ],
      ));

  runApp(Provider.value(
    value: tremorsTheme,
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: MapManager.create),
        ChangeNotifierProvider(create: AuthService.create)
      ],
      child: SafeArea(child: app),
    ),
  ));
}
