import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:tremors/extensions.dart';
import 'package:tremors/map/map_manager.dart';
import 'package:tremors/models/general.dart';
import 'package:url_launcher/url_launcher.dart';

class Camera {
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

class MapState {
  final String mapType;
  final List<String> mapInfo;

  MapState({
    required this.mapType,
    required this.mapInfo,
  });
}

sealed class LayerDescriptor {
  const LayerDescriptor();

  Widget createAttribution();

  List<Widget> createLayer();
}

class TileLayerDescriptor extends LayerDescriptor {
  final String templateUrl;
  final String provider;
  final String providerUrl;

  TileLayerDescriptor({
    required this.templateUrl,
    required this.provider,
    required this.providerUrl,
  });

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : switch (other) {
          final TileLayerDescriptor other =>
            other.templateUrl == templateUrl && other.provider == provider,
          _ => false
        };

  @override
  List<Widget> createLayer() => [
        TileLayer(
          urlTemplate: templateUrl,
        ),
      ];

  @override
  Widget createAttribution() => Builder(builder: (context) {
        final textTheme = context.textTheme;
        final colorScheme = context.colorScheme;
        return RichAttributionWidget(
          showFlutterMapAttribution: false,
          popupBorderRadius: BorderRadius.circular(10),
          permanentHeight: 20,
          attributions: [
            TextSourceAttribution(
              provider,
              prependCopyright: true,
              onTap: () => launchUrl(Uri.parse(providerUrl)),
              textStyle: textTheme.labelMedium!.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ],
        );
      });
}

class MappingConfiguration {
  final String defaultMapType;
  final List<String> defaultMapInfo;

  final List<MapType> mapType;
  final List<MapInfo> mapInfo;

  MappingConfiguration({
    required this.defaultMapType,
    required this.defaultMapInfo,
    required this.mapType,
    required this.mapInfo,
  });
}

class MapTypeState {
  final MapType mapType;
  final bool active;
  final MapManager _mapManager;

  MapTypeState(this.mapType, this.active, this._mapManager);

  LocalisedMessage get description => mapType.description;
  String get id => mapType.id;
  LayerDescriptor get layer => mapType.layer;
  LocalisedMessage get title => mapType.title;
  Uint8List get icon => mapType.icon;

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : switch (other) {
          final MapTypeState other =>
            active == other.active && mapType == other.mapType,
          _ => false
        };

  void activate() {
    _mapManager.setMapType(mapType.id);
  }
}

class MapType {
  final String id;
  final LocalisedMessage title;
  final LocalisedMessage description;
  final Uint8List icon;
  final LayerDescriptor layer;

  MapType({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.layer,
  });

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : switch (other) {
          final MapType other => other.id == id && other.layer == layer,
          _ => false,
        };
}

class MapInfoState {
  final MapInfo mapInfo;
  final bool active;
  final MapManager _mapManager;

  MapInfoState(this.mapInfo, this.active, this._mapManager);

  String get id => mapInfo.id;
  LocalisedMessage get title => mapInfo.title;
  LocalisedMessage get description => mapInfo.description;
  LayerDescriptor get layer => mapInfo.layer;
  Uint8List get icon => mapInfo.icon;

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : switch (other) {
          final MapInfoState other =>
            active == other.active && mapInfo == other.mapInfo,
          _ => false
        };

  void toggle() {
    _mapManager.toggleMapInfo(mapInfo.id);
  }
}

class MapInfo {
  final String id;
  final LocalisedMessage title;
  final LocalisedMessage description;
  final int weight;
  final Uint8List icon;
  final LayerDescriptor layer;

  MapInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.weight,
    required this.icon,
    required this.layer,
  });

  @override
  bool operator ==(Object other) => identical(this, other)
      ? true
      : switch (other) {
          final MapInfo other => other.id == id && other.layer == layer,
          _ => false
        };

  @override
  int get hashCode => id.hashCode;

  static Comparator<MapInfo> comparator() => (a, b) => a.weight - b.weight;
}
