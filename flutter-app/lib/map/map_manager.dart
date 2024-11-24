import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class MapManager extends ChangeNotifier {
  final _mapControllerCompleter = Completer<MapController>();

  final _layers = <LayerDescriptor>[
    TileLayerDescriptor(
      url: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
      provider: "OpenStreet Map",
    )
  ];

  MapManager();

  Future<MapController> get mapController => _mapControllerCompleter.future;

  List<LayerDescriptor> get layers => UnmodifiableListView(_layers);

  factory MapManager.create(BuildContext context) {
    return MapManager();
  }

  void resolve(MapController value) {
    if (!_mapControllerCompleter.isCompleted) {
      _mapControllerCompleter.complete(value);
    }
  }
}

sealed class LayerDescriptor {}

class TileLayerDescriptor extends LayerDescriptor {
  final String url;
  final String provider;

  TileLayerDescriptor({
    required this.url,
    required this.provider,
  });
}
