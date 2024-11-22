import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tremors/navigation.dart';
import 'package:tremors/theme.dart';
import 'package:tremors/tremors_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final tremorsTheme = createTremorsTheme();

  final localKey = UniqueKey();
  final rootKey = GlobalKey<NavigatorState>();
  final shellKey = GlobalKey<NavigatorState>();

  final app = MaterialApp.router(
      theme: tremorsTheme.themeData,
      routerConfig: GoRouter(
        navigatorKey: rootKey,
        routes: [
          ShellRoute(
            builder: (context, state, child) => TremorsPage(child: child),
            routes: [
              GoRoute(path: '/', builder: mainPage),
              GoRoute(path: '/layers', builder: layersPage),
              GoRoute(path: '/search', builder: searchPage),
              GoRoute(path: '/settings', builder: settingsPage),
            ],
          )
        ],
      ));

  runApp(Provider.value(
    value: tremorsTheme,
    child: app,
  ));
}
