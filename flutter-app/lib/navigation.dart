import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';
import 'package:tremors/login_page.dart';
import 'package:tremors/pages/map_page.dart';
import 'package:tremors/pages/layers_page.dart';
import 'package:tremors/pages/search.dart';
import 'package:tremors/pages/settings.dart';

Widget mapPage(BuildContext context, GoRouterState state) {
  return const MapPage();
}

final back = Builder(
  builder: (context) => OutlinedButton(
    onPressed: () => context.go('/'),
    child: const Text('Go back!'),
  ),
);

Widget layersPage(BuildContext context, GoRouterState state) {
  return const LayersPage();
}

Widget searchPage(BuildContext context, GoRouterState state) {
  return const TremorsSearchPage();
}

Widget settingsPage(BuildContext context, GoRouterState state) {
  return const SettingsPage();
}

Widget loginPage(BuildContext context, GoRouterState state) {
  return const LoginPage();
}
