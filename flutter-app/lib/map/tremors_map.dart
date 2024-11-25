import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:provider/provider.dart';
import 'package:tremors/map/map_manager.dart';

class TremorsMap extends StatefulWidget {
  const TremorsMap({super.key});

  @override
  State createState() => _TremorsMap();
}

class _TremorsMap extends State<TremorsMap> {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Selector<MapManager, (List<LayerDescriptor>, MapManager)>(
      selector: (_, mapManager) => (mapManager.layers, mapManager),
      builder: _createMap,
    );
  }

  Widget _createMap(BuildContext context,
      (List<LayerDescriptor>, MapManager) record, Widget? child) {
    final (layers, mapManager) = record;

    return FlutterMap(
      options: MapOptions(
        onMapReady: () => mapManager.resolve(_mapController),
      ),
      children: _convert(layers),
    );
  }

  List<Widget> _convert(List<LayerDescriptor> layers) {
    final result = <Widget>[];

    for (final descriptor in layers) {
      switch (descriptor) {
        case final descriptor as TileLayerDescriptor:
          result.add(_createTileLayer(descriptor));
      }
    }

    return result;
  }

  Widget _createTileLayer(TileLayerDescriptor descriptor) => TileLayer(
        urlTemplate: descriptor.url,
        userAgentPackageName: descriptor.provider,
      );
}
