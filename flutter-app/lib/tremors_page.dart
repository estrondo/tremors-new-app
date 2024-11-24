import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tremors/extensions.dart';

const destinations = ['/', '/layers', '/search', '/settings'];

class TremorsPage extends StatelessWidget {
  final Widget child;

  const TremorsPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.surface,
      child: Column(
        children: [
          Expanded(child: Center(child: child)),
          _createNavigationBar(context),
        ],
      ),
    );
  }

  void _go(BuildContext context, int current) {
    context.go(destinations[current]);
  }

  NavigationBar _createNavigationBar(BuildContext context) {
    final routeState = GoRouterState.of(context);

    final index = destinations.indexOf(routeState.matchedLocation);

    NavigationDestination destination(
      IconData icon,
      IconData selectedIcon,
      String label,
    ) =>
        NavigationDestination(
          icon: Icon(icon),
          selectedIcon: Icon(selectedIcon),
          label: label,
        );

    return NavigationBar(
      onDestinationSelected: (i) => _go(context, i),
      selectedIndex: index >= 0 ? index : 0,
      destinations: [
        destination(
          Icons.map_outlined,
          Icons.map,
          'Home',
        ),
        destination(
          Icons.layers_outlined,
          Icons.layers,
          'Layers',
        ),
        destination(
          Icons.search_outlined,
          Icons.search,
          'Search',
        ),
        destination(
          Icons.settings_outlined,
          Icons.settings,
          'Settings',
        ),
      ],
    );
  }
}
