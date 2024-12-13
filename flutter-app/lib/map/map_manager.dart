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

  final _mapTypes = [
    for (final i in [
      "A",
      "OpenstreetMap (Hybrid)",
      "OpenstreetMap (Terrain)",
      "Another Map Provider",
      "C",
      "D",
      "Other",
      "Google",
      "Microsoft Bing"
    ])
      MapType(
        id: i,
        title: i,
        description: "Description of $i",
        active: i.length % 2 == 0,
      )
  ];

  final _mapInfo = Iterable.generate(
    40,
    (i) => MapInfo(
      id: "$i",
      title: "T $i",
      description: "Description of $i",
      active: i % 3 == 0,
    ),
  );

  MapManager();

  Future<MapController> get mapController => _mapControllerCompleter.future;

  List<LayerDescriptor> get layers => UnmodifiableListView(_layers);

  List<MapType> get mapTypes => UnmodifiableListView(_mapTypes);

  List<MapInfo> get mapInfo => UnmodifiableListView(_mapInfo);

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

class MapType {
  final String id;
  final String title;
  final String description;
  final bool active;

  MapType({
    required this.id,
    required this.title,
    required this.description,
    required this.active,
  });
}

class MapInfo {
  final String id;
  final String title;
  final String description;
  final bool active;

  MapInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.active,
  });
}
