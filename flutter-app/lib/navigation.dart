import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/login_page.dart';
import 'package:tremors/map/tremors_map.dart';
import 'package:tremors/pages/search.dart';

Widget mapPage(BuildContext context, GoRouterState state) {
  return const TremorsMap();
}

final back = Builder(
  builder: (context) => OutlinedButton(
    onPressed: () => context.go('/'),
    child: const Text('Go back!'),
  ),
);

Widget layersPage(BuildContext context, GoRouterState state) {
  return Column(children: [
    Center(child: Text(context.l10n.mainMenuLayers.toUpperCase())),
    back
  ]);
}

Widget searchPage(BuildContext context, GoRouterState state) {
  return const TremorsSearchPage();
}

Widget settingsPage(BuildContext context, GoRouterState state) {
  return Column(children: [
    Center(child: Text(context.l10n.mainMenuSettings.toUpperCase())),
    back
  ]);
}

Widget loginPage(BuildContext context, GoRouterState state) {
  return const LoginPage();
}
