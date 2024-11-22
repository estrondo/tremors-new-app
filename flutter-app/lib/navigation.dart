import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';

Widget mainPage(BuildContext context, GoRouterState state) {
  return const Center(child: Text('MAIN'));
}

Widget layersPage(BuildContext context, GoRouterState state) {
  return const Center(child: Text('LAYERS'));
}

Widget searchPage(BuildContext context, GoRouterState state) {
  return const Center(child: Text('SEARCH'));
}

Widget settingsPage(BuildContext context, GoRouterState state) {
  return const Center(child: Text('SETTINGS'));
}
