import 'dart:convert';

import 'package:cbor/cbor.dart';
import 'package:tremors/format/cbor.dart';
import 'package:tremors/models/mapping.dart';

final mappingConfigurationDecoder = MappingConfigurationDecoder();

class MappingConfigurationDecoder with ObjectCborDecoder<MappingConfiguration> {
  @override
  MappingConfiguration fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final defaultMapType),
          CborList defaultMapInfo,
          CborList mapTypes,
          CborList mapInfo
        ] =>
          MappingConfiguration(
            defaultMapType: utf8.decode(defaultMapType),
            defaultMapInfo: decodeStringList(defaultMapInfo),
            mapType: mapTypes.map(mapTypeDecoder.fromCbor).toList(),
            mapInfo: mapInfo.map(mapInfoDecoder.fromCbor).toList(),
          ),
        _ => throw "Invalid CBOR for MappingConfiguration!"
      };
}

final mapTypeDecoder = MapTypeDecoder();

class MapTypeDecoder with ObjectCborDecoder<MapType> {
  @override
  MapType fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final id),
          CborList title,
          CborList description,
          CborString(utf8Bytes: final icon),
          CborList layer
        ] =>
          MapType(
            id: utf8.decode(id),
            title: localisedMessageCborDecoder.fromCbor(title),
            description: localisedMessageCborDecoder.fromCbor(description),
            icon: base64.decode(utf8.decode(icon)),
            layer: layerDescriptorDecoder.fromCbor(layer),
          ),
        _ => throw "Invalid CBOR for MapType!"
      };
}

final mapInfoDecoder = MapInfoDecoder();

class MapInfoDecoder with ObjectCborDecoder<MapInfo> {
  @override
  MapInfo fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final id),
          CborList title,
          CborList description,
          CborSmallInt(value: final weight),
          CborString(utf8Bytes: final icon),
          CborList layer,
        ] =>
          MapInfo(
            id: utf8.decode(id),
            title: localisedMessageCborDecoder.fromCbor(title),
            description: localisedMessageCborDecoder.fromCbor(description),
            weight: weight,
            icon: base64.decode(utf8.decode(icon)),
            layer: layerDescriptorDecoder.fromCbor(layer),
          ),
        _ => throw "Invalid CBOR for MapInfo!",
      };
}

final layerDescriptorDecoder = LayerDescriptorDecoder();

class LayerDescriptorDecoder with ObjectCborDecoder<LayerDescriptor> {
  @override
  LayerDescriptor fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final type),
          ...final rest,
        ] =>
          switch (utf8.decode(type)) {
            "tile" => tileLayerDescriptorDecoder
                .fromCbor(CborList(rest as List<CborValue>)),
            final name => throw "Unknown $name layer type!"
          },
        _ => throw "Invalid CBOR for LayerDescriptor!",
      };
}

final tileLayerDescriptorDecoder = TileLayerDescriptorDecoder();

class TileLayerDescriptorDecoder with ObjectCborDecoder<TileLayerDescriptor> {
  @override
  TileLayerDescriptor fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final templateUrl),
          CborString(utf8Bytes: final provider),
          CborString(utf8Bytes: final providerUrl)
        ] =>
          TileLayerDescriptor(
            templateUrl: utf8.decode(templateUrl),
            provider: utf8.decode(provider),
            providerUrl: utf8.decode(providerUrl),
          ),
        _ => throw "Invalid CBOR for TileLayerDescriptor!"
      };
}

final mapStateCodec = MapStateCodec();

class MapStateCodec with ObjectCborCodec<MapState> {
  @override
  MapState fromCbor(CborValue value) => switch (value) {
        [
          CborString(utf8Bytes: final mapType),
          CborList mapInfo,
        ] =>
          MapState(
            mapType: utf8.decode(mapType),
            mapInfo: decodeStringList(mapInfo),
          ),
        _ => throw "Invalid CBOR for MapState!",
      };

  @override
  CborValue toCbor(MapState value) => CborList([
        CborString(value.mapType),
        encodeStringList(value.mapInfo),
      ]);
}

final cameraCodec = CameraCodec();

class CameraCodec with ObjectCborCodec<Camera> {
  @override
  Camera fromCbor(CborValue value) => switch (value) {
        [
          CborFloat(value: final lat),
          CborFloat(value: final lon),
          CborFloat(value: final zoom),
          CborFloat(value: final rotation),
        ] =>
          Camera(lat: lat, lon: lon, zoom: zoom, rotation: rotation),
        _ => throw "Invalid Cbor for Camera!",
      };

  @override
  CborValue toCbor(Camera camera) => CborList([
        CborFloat(camera.lat),
        CborFloat(camera.lon),
        CborFloat(camera.zoom),
        CborFloat(camera.rotation),
      ]);
}
