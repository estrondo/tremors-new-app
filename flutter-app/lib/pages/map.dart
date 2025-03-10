import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:provider/provider.dart';
import 'package:tremors/components/moment_display.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/tremors_icons.dart';

const _spacer = SizedBox(width: 5);

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State createState() => _MapPage();
}

class _MapPage extends State<MapPage> {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = context.l10n;
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Moment");
                  },
                  child: const Row(
                    children: [
                      Icon(
                        TremorsIcons.time,
                        size: 20,
                      ),
                      _spacer,
                      MomentDisplay()
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("+Info");
                  },
                  child: Row(
                    children: [
                      const Icon(
                        TremorsIcons.histogram,
                        size: 20,
                      ),
                      Text(
                        l10n.mapPlusInfoLabel,
                        style: textTheme.bodyMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(child: Consumer<MapManager>(builder: _buildMap)),
      ],
    );
  }

  Widget _buildMap(
    BuildContext context,
    MapManager mapManager,
    Widget? child,
  ) =>
      FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          onMapReady: () => mapManager.resolve(_mapController),
        ),
        children: const [],
      );
}
