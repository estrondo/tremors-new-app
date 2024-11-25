import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/tremors_icons.dart';

const destinations = ['/', '/layers', '/search', '/settings'];

class TremorsPage extends StatelessWidget {
  final Widget child;

  const TremorsPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(color: context.colorScheme.surface, child: child),
        ),
        _createNavigationBar(context),
      ],
    );
  }

  void _go(BuildContext context, int current) {
    context.go(destinations[current]);
  }

  NavigationBar _createNavigationBar(BuildContext context) {
    final routerState = GoRouterState.of(context);
    final index = destinations.indexOf(routerState.matchedLocation);

    Widget destination(
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
          TremorsIcons.world,
          TremorsIcons.worldSelected,
          'Home',
        ),
        destination(
          TremorsIcons.layers,
          TremorsIcons.layersSelected,
          'Layers',
        ),
        destination(
          TremorsIcons.search,
          TremorsIcons.searchSelected,
          'Search',
        ),
        destination(
          TremorsIcons.settings,
          TremorsIcons.settingsSelected,
          'Settings',
        ),
      ],
    );
  }
}
