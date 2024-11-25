import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';
import 'package:tremors/map/tremors_map.dart';

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
  return Column(children: [const Center(child: Text('LAYERS')), back]);
}

Widget searchPage(BuildContext context, GoRouterState state) {
  return Column(children: [const Center(child: Text('SEARCH')), back]);
}

Widget settingsPage(BuildContext context, GoRouterState state) {
  return Column(children: [const Center(child: Text('SETTINGS')), back]);
}
