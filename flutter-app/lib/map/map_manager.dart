import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tremors/format/mapping.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/models/mapping.dart';
import 'package:tremors/models/value_state.dart';
import 'package:tremors/service/object_service.dart';
import 'package:tremors/throttle.dart';

final _logger = typedLogger(MapManager);

typedef LayerList = ValueState<String, List<Widget>>;

const _shouldLoadState = 0;
const _loadingState = 1;
const _shouldBeReadyState = 2;
const _failedState = 3;
const _readyState = 4;

const _defaultThrottle = 5;

class MapManager extends ChangeNotifier {
  int _state = _shouldLoadState;
  final ObjectService _objectService;
  final MapController mapController = MapController();

  late Throttle<MapEvent> _updateCameraThrottle;
  late Throttle<MapState> _updateMapStateThrottle;

  late MappingConfiguration? _configuration;

  List<MapType> _availableMapType = [];

  late Map<String, MapType> _mapTypeMap;
  late Map<String, MapInfo> _mapInfoMap;

  List<MapInfo> _availableMapInfo = [];

  MapType? _activeMapType;
  HashSet<MapInfo> _activeMapInfo = HashSet();
  List<Widget> _activeLayers = [];
  Widget? _attributionLayer;

  LayerList _layerLst = Undefined("");

  LayerList get layerList => _layerLst;

  MapManager(this._objectService) {
    _updateCameraThrottle = Throttle(
      const Duration(seconds: _defaultThrottle),
      action: _onMapEvent,
    );
    _updateMapStateThrottle = Throttle(
      const Duration(seconds: _defaultThrottle),
      action: _updateMapState,
    );
  }

  factory MapManager.create(BuildContext context, ObjectService objectService) {
    return MapManager(objectService);
  }

  List<MapTypeState> get mapTypes => [
        for (final mapType in _availableMapType)
          MapTypeState(mapType, mapType == _activeMapType, this)
      ];

  List<MapInfoState> get mapInfo => [
        for (final mapInfo in _availableMapInfo)
          MapInfoState(mapInfo, _activeMapInfo.contains(mapInfo), this)
      ];

  List<Widget> get activeLayers => UnmodifiableListView(_activeLayers);

  FutureOr<void> load() async {
    if (_state != _shouldLoadState) {
      return;
    }

    _state = _loadingState;

    try {
      _layerLst = LoadingState("Loading...");

      _configuration = await _objectService.fetchSystemObject(
        "mapping/configuration",
        mappingConfigurationDecoder,
      );

      final defaultMapState = _configuration != null
          ? MapState(
              mapType: _configuration!.defaultMapType,
              mapInfo: _configuration!.defaultMapInfo,
            )
          : null;

      final mapState = await _objectService.fetchUserObject(
        "main-map/state",
        mapStateCodec,
        defaultMapState,
      );

      mapController.mapEventStream.forEach(_updateCameraThrottle.call);

      _activeLayers = [];

      if (_configuration != null) {
        _logger.d("Using mapping configuration.");

        _availableMapType = _configuration!.mapType;
        _availableMapInfo = _configuration!.mapInfo;

        _mapTypeMap = Map.fromEntries([
          for (final mapType in _configuration!.mapType)
            MapEntry(mapType.id, mapType)
        ]);

        _mapInfoMap = Map.fromEntries([
          for (final mapInfo in _configuration!.mapInfo)
            MapEntry(mapInfo.id, mapInfo)
        ]);

        if (mapState != null) {
          _logger.d("Applying map state.");
          final currentMapType = _mapTypeMap[mapState.mapType];
          if (currentMapType != null) {
            _logger.d("Setting ${currentMapType.id} as map type.");
            _activeLayers.addAll(currentMapType.layer.createLayer());
            _attributionLayer = currentMapType.layer.createAttribution();
            _activeMapType = currentMapType;
          }

          for (final mapInfo in mapState.mapInfo) {
            final currentMapInfo = _mapInfoMap[mapInfo];
            if (currentMapInfo != null) {
              _logger.d("Adding ${currentMapInfo.id} as map info.");
              _activeLayers.addAll(_convertMapInfo(currentMapInfo));
              _activeMapInfo.add(currentMapInfo);
            }
          }
        }
      }

      _layerLst = SuccessState(
        _attributionLayer != null
            ? [..._activeLayers, _attributionLayer!]
            : _activeLayers,
      );

      _state = _shouldBeReadyState;
    } catch (error, stack) {
      _layerLst = FailedState(error.toString());
      _logger.e("Unexpected error!", error: error, stackTrace: stack);
      _state = _failedState;
    }

    notifyListeners();
  }

  void setMapType(String mapTypeId) {
    if (_state != _readyState) {
      return;
    }

    final mapType = _mapTypeMap[mapTypeId];
    if (mapType != null && !identical(mapType, _activeMapType)) {
      _activeMapType = mapType;
      _updateLayers();
    }
  }

  void toggleMapInfo(String mapInfoId) {
    if (_state != _readyState) {
      return;
    }

    final mapInfo = _mapInfoMap[mapInfoId];
    if (mapInfo == null) {
      return;
    }

    if (_activeMapInfo.contains(mapInfo)) {
      _activeMapInfo.remove(mapInfo);
    } else {
      _activeMapInfo.add(mapInfo);
    }

    _updateLayers();
  }

  void _updateLayers() {
    _activeLayers = [];
    _activeLayers.addAll(_activeMapType!.layer.createLayer());
    _attributionLayer = _activeMapType!.layer.createAttribution();

    final mapInfos = _activeMapInfo.toList();
    mapInfos.sort(MapInfo.comparator());

    for (final mapInfo in mapInfos) {
      _activeLayers.addAll(mapInfo.layer.createLayer());
    }

    _layerLst = SuccessState(
      _attributionLayer != null
          ? [..._activeLayers, _attributionLayer!]
          : _activeLayers,
    );

    _updateMapStateThrottle(MapState(
      mapType: _activeMapType!.id,
      mapInfo: mapInfos.map((e) => e.id).toList(),
    ));

    notifyListeners();
  }

  void ready() async {
    if (_state != _shouldBeReadyState) {
      return;
    }
    _state = _readyState;

    final camera = (await _objectService.fetchUserObject(
      "main-map/camera",
      cameraCodec,
      _defaultCamera(),
    ))!;

    mapController.moveAndRotate(
      LatLng(camera.lat, camera.lon),
      camera.zoom,
      camera.rotation,
    );
  }

  void _onMapEvent(MapEvent event) async {
    try {
      await _objectService.updateUserObject(
        "main-map/camera",
        cameraCodec,
        Camera(
          lat: event.camera.center.latitude,
          lon: event.camera.center.longitude,
          zoom: event.camera.zoom,
          rotation: event.camera.rotation,
        ),
      );
      _logger.d("Camera updated.");
    } catch (error, stack) {
      _logger.e(
        "Unable to update the camera!",
        error: error,
        stackTrace: stack,
      );
    }
  }

  void _updateMapState(MapState mapState) async {
    try {
      await _objectService.updateUserObject(
        "main-map/state",
        mapStateCodec,
        mapState,
      );
      _logger.d("Map state updated.");
    } catch (error, stack) {
      _logger.e(
        "Unable to update the map state!",
        error: error,
        stackTrace: stack,
      );
    }
  }

  List<Widget> _convertMapInfo(MapInfo mapInfo) => [];
}

Camera _defaultCamera() => Camera(
      lat: 0,
      lon: 0,
      zoom: 10,
      rotation: 0,
    );
