import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tremors/extensions.dart';

class TremorsPage extends StatefulWidget {
  final Widget child;

  const TremorsPage({super.key, required this.child});

  @override
  State<TremorsPage> createState() => _TremorsPage();
}

const destinations = ['/layers', '/search', '/settings'];

class _TremorsPage extends State<TremorsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.surface,
      child: Column(
        children: [
          Expanded(child: Center(child: widget.child)),
          _createNavigationBar(context),
        ],
      ),
    );
  }

  void _selectDestination(BuildContext context, int current) {
    setState(() {
      _current = current;
      context.go(destinations[current]);
    });
  }

  NavigationBar _createNavigationBar(BuildContext context) {
    final colorScheme = context.colorScheme;

    return NavigationBar(
      onDestinationSelected: (i) => _selectDestination(context, i),
      selectedIndex: _current,
      indicatorColor: colorScheme.outline,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.layers_outlined),
          selectedIcon: Icon(Icons.layers),
          label: 'Layers',
        ),
        NavigationDestination(
          icon: Icon(Icons.search_outlined),
          selectedIcon: Icon(Icons.search),
          label: 'Search',
        ),
        NavigationDestination(
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
