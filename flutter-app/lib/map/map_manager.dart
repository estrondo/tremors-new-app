import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:tremors/models/mapping.dart';
import 'package:tremors/service/object_service.dart';

class MapManager extends ChangeNotifier {
  final ObjectService _objectService;
  final _mapControllerCompleter = Completer<MapController>();

  List<MapType> _mapTypes = [];

  List<MapInfo> _mapInfo = [];

  Map<String, MapType> _mapTypeMap = {};
  Map<String, MapInfo> _mapInfoMap = {};
  MapState? _state;

  MapManager(this._objectService);

  Future<MapController> get mapController => _mapControllerCompleter.future;

  List<MapType> get mapTypes => UnmodifiableListView(_mapTypes);

  List<MapInfo> get mapInfo => UnmodifiableListView(_mapInfo);

  factory MapManager.create(BuildContext context, ObjectService objectService) {
    return MapManager(objectService);
  }

  void resolve(MapController value) {
    if (!_mapControllerCompleter.isCompleted) {
      _mapControllerCompleter.complete(value);
      _objectService.fetchUserObject(
        "main-map/camera",
        _defaultCamera(),
      );

      Future.value(_objectService.fetchSystemObject<List<MapInfo>>(
        "mapping/map-info",
        [],
      )).then(
        _onMapInfo,
        onError: _onMapInfoError,
      );

      Future.value(_objectService.fetchSystemObject<List<MapType>>(
        "mapping/map-type",
        [],
      )).then(
        _onMapType,
        onError: _onMapTypeError,
      );

      Future.value(
        _objectService.fetchUserObject(
          "main-map/state",
          _defaultMapState(),
        ),
      ).then(
        _onMapState,
        onError: _onMapStateError,
      );
    }
  }

  void _onMapInfo(List<MapInfo> list) {
    _mapInfo = list;
    _mapInfoMap = {};
    for (final mapInfo in list) {
      _mapInfoMap[mapInfo.id] = mapInfo;
    }

    notifyListeners();
  }

  void _onMapInfoError(Object error, StackTrace stackTrace) {}

  void _onMapType(List<MapType> list) {
    _mapTypes = list;
    _mapTypeMap = {};
    for (final mapType in list) {
      _mapTypeMap[mapType.id] = mapType;
    }

    notifyListeners();
  }

  void _onMapTypeError(Object error, StackTrace stackTrace) {}

  void _onMapState(MapState state) {
    _state = state;
  }

  void _onMapStateError(Object error, StackTrace stackTrace) {}
}

Camera _defaultCamera() => Camera(
      lat: 0,
      lon: 0,
      zoom: 10,
      rotation: 0,
    );

MapState _defaultMapState() => MapState(
      activeMapTypes: [],
      activeMapInfo: [],
    );
