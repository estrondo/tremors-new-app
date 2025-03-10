import 'package:dogs_core/dogs_core.dart';

@serializable
class Camera with Dataclass<Camera> {
  final double lat;
  final double lon;
  final double zoom;
  final double rotation;

  Camera({
    required this.lat,
    required this.lon,
    required this.zoom,
    required this.rotation,
  });
}

@serializable
class MapState with Dataclass<MapState> {
  final List<String> activeMapTypes;
  final List<String> activeMapInfo;

  MapState({
    required this.activeMapTypes,
    required this.activeMapInfo,
  });
}

sealed class LayerDescriptor {}

@serializable
class TileLayerDescriptor extends LayerDescriptor
    with Dataclass<TileLayerDescriptor> {
  final String url;
  final String provider;

  TileLayerDescriptor({
    required this.url,
    required this.provider,
  });
}

@serializable
class MapType with Dataclass<MapType> {
  final String id;
  final String title;
  final String description;
  final bool active;
  final LayerDescriptor layer;

  MapType({
    required this.id,
    required this.title,
    required this.description,
    required this.active,
    required this.layer,
  });
}

@serializable
class MapInfo with Dataclass<MapInfo> {
  final String id;
  final String title;
  final String description;
  final bool active;
  final LayerDescriptor layer;

  MapInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.active,
    required this.layer,
  });
}
