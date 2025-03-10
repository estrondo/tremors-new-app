// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_field, unused_import, public_member_api_docs, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import 'dart:core';
import 'package:dogs_core/dogs_core.dart' as gen;
import 'package:lyell/lyell.dart' as gen;
import 'dart:core' as gen0;
import 'package:tremors/models/mapping.dart' as gen1;
import 'package:tremors/models/mapping.dart';

class CameraConverter extends gen.DefaultStructureConverter<gen1.Camera> {
  CameraConverter()
      : super(
            struct: const gen.DogStructure<gen1.Camera>(
                'Camera',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.double>(), gen.TypeToken<gen0.double>(), null, gen.IterableKind.none, 'lat', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.double>(), gen.TypeToken<gen0.double>(), null, gen.IterableKind.none, 'lon', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.double>(), gen.TypeToken<gen0.double>(), null, gen.IterableKind.none, 'zoom', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.double>(), gen.TypeToken<gen0.double>(), null, gen.IterableKind.none, 'rotation', false, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.Camera>(_activator, [_$lat, _$lon, _$zoom, _$rotation], _values, _hash, _equals)));

  static dynamic _$lat(gen1.Camera obj) => obj.lat;

  static dynamic _$lon(gen1.Camera obj) => obj.lon;

  static dynamic _$zoom(gen1.Camera obj) => obj.zoom;

  static dynamic _$rotation(gen1.Camera obj) => obj.rotation;

  static List<dynamic> _values(gen1.Camera obj) => [obj.lat, obj.lon, obj.zoom, obj.rotation];

  static gen1.Camera _activator(List list) {
    return gen1.Camera(lat: list[0], lon: list[1], zoom: list[2], rotation: list[3]);
  }

  static int _hash(gen1.Camera obj) => obj.lat.hashCode ^ obj.lon.hashCode ^ obj.zoom.hashCode ^ obj.rotation.hashCode;

  static bool _equals(
    gen1.Camera a,
    gen1.Camera b,
  ) =>
      (a.lat == b.lat && a.lon == b.lon && a.zoom == b.zoom && a.rotation == b.rotation);
}

class CameraBuilder {
  CameraBuilder([gen1.Camera? $src]) {
    if ($src == null) {
      $values = List.filled(4, null);
    } else {
      $values = CameraConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen1.Camera? $src;

  set lat(gen0.double value) {
    $values[0] = value;
  }

  gen0.double get lat => $values[0];

  set lon(gen0.double value) {
    $values[1] = value;
  }

  gen0.double get lon => $values[1];

  set zoom(gen0.double value) {
    $values[2] = value;
  }

  gen0.double get zoom => $values[2];

  set rotation(gen0.double value) {
    $values[3] = value;
  }

  gen0.double get rotation => $values[3];

  gen1.Camera build() {
    var instance = CameraConverter._activator($values);

    return instance;
  }
}

extension CameraDogsExtension on gen1.Camera {
  gen1.Camera rebuild(Function(CameraBuilder b) f) {
    var builder = CameraBuilder(this);
    f(builder);
    return builder.build();
  }

  CameraBuilder toBuilder() {
    return CameraBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.Camera);
  }
}

class MapStateConverter extends gen.DefaultStructureConverter<gen1.MapState> {
  MapStateConverter()
      : super(
            struct: const gen.DogStructure<gen1.MapState>(
                'MapState',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTypeTreeN<gen0.List<gen0.String>, gen0.List<dynamic>>([gen.QualifiedTerminal<gen0.String>()]), gen.TypeToken<gen0.String>(), null,
                      gen.IterableKind.list, 'activeMapTypes', false, false, []),
                  gen.DogStructureField(gen.QualifiedTypeTreeN<gen0.List<gen0.String>, gen0.List<dynamic>>([gen.QualifiedTerminal<gen0.String>()]), gen.TypeToken<gen0.String>(), null,
                      gen.IterableKind.list, 'activeMapInfo', false, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.MapState>(_activator, [_$activeMapTypes, _$activeMapInfo], _values, _hash, _equals)));

  static dynamic _$activeMapTypes(gen1.MapState obj) => obj.activeMapTypes;

  static dynamic _$activeMapInfo(gen1.MapState obj) => obj.activeMapInfo;

  static List<dynamic> _values(gen1.MapState obj) => [obj.activeMapTypes, obj.activeMapInfo];

  static gen1.MapState _activator(List list) {
    return gen1.MapState(activeMapTypes: list[0].cast<gen0.String>(), activeMapInfo: list[1].cast<gen0.String>());
  }

  static int _hash(gen1.MapState obj) => gen.deepEquality.hash(obj.activeMapTypes) ^ gen.deepEquality.hash(obj.activeMapInfo);

  static bool _equals(
    gen1.MapState a,
    gen1.MapState b,
  ) =>
      (gen.deepEquality.equals(a.activeMapTypes, b.activeMapTypes) && gen.deepEquality.equals(a.activeMapInfo, b.activeMapInfo));
}

class MapStateBuilder {
  MapStateBuilder([gen1.MapState? $src]) {
    if ($src == null) {
      $values = List.filled(2, null);
    } else {
      $values = MapStateConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen1.MapState? $src;

  set activeMapTypes(gen0.List<gen0.String> value) {
    $values[0] = value;
  }

  gen0.List<gen0.String> get activeMapTypes => $values[0];

  set activeMapInfo(gen0.List<gen0.String> value) {
    $values[1] = value;
  }

  gen0.List<gen0.String> get activeMapInfo => $values[1];

  gen1.MapState build() {
    var instance = MapStateConverter._activator($values);

    return instance;
  }
}

extension MapStateDogsExtension on gen1.MapState {
  gen1.MapState rebuild(Function(MapStateBuilder b) f) {
    var builder = MapStateBuilder(this);
    f(builder);
    return builder.build();
  }

  MapStateBuilder toBuilder() {
    return MapStateBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.MapState);
  }
}

class TileLayerDescriptorConverter extends gen.DefaultStructureConverter<gen1.TileLayerDescriptor> {
  TileLayerDescriptorConverter()
      : super(
            struct: const gen.DogStructure<gen1.TileLayerDescriptor>(
                'TileLayerDescriptor',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'url', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'provider', false, false, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.TileLayerDescriptor>(_activator, [_$url, _$provider], _values, _hash, _equals)));

  static dynamic _$url(gen1.TileLayerDescriptor obj) => obj.url;

  static dynamic _$provider(gen1.TileLayerDescriptor obj) => obj.provider;

  static List<dynamic> _values(gen1.TileLayerDescriptor obj) => [obj.url, obj.provider];

  static gen1.TileLayerDescriptor _activator(List list) {
    return gen1.TileLayerDescriptor(url: list[0], provider: list[1]);
  }

  static int _hash(gen1.TileLayerDescriptor obj) => obj.url.hashCode ^ obj.provider.hashCode;

  static bool _equals(
    gen1.TileLayerDescriptor a,
    gen1.TileLayerDescriptor b,
  ) =>
      (a.url == b.url && a.provider == b.provider);
}

class TileLayerDescriptorBuilder {
  TileLayerDescriptorBuilder([gen1.TileLayerDescriptor? $src]) {
    if ($src == null) {
      $values = List.filled(2, null);
    } else {
      $values = TileLayerDescriptorConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen1.TileLayerDescriptor? $src;

  set url(gen0.String value) {
    $values[0] = value;
  }

  gen0.String get url => $values[0];

  set provider(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get provider => $values[1];

  gen1.TileLayerDescriptor build() {
    var instance = TileLayerDescriptorConverter._activator($values);

    return instance;
  }
}

extension TileLayerDescriptorDogsExtension on gen1.TileLayerDescriptor {
  gen1.TileLayerDescriptor rebuild(Function(TileLayerDescriptorBuilder b) f) {
    var builder = TileLayerDescriptorBuilder(this);
    f(builder);
    return builder.build();
  }

  TileLayerDescriptorBuilder toBuilder() {
    return TileLayerDescriptorBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.TileLayerDescriptor);
  }
}

class MapTypeConverter extends gen.DefaultStructureConverter<gen1.MapType> {
  MapTypeConverter()
      : super(
            struct: const gen.DogStructure<gen1.MapType>(
                'MapType',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'id', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'title', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'description', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.bool>(), gen.TypeToken<gen0.bool>(), null, gen.IterableKind.none, 'active', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen1.LayerDescriptor>(), gen.TypeToken<gen1.LayerDescriptor>(), null, gen.IterableKind.none, 'layer', false, true, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.MapType>(_activator, [_$id, _$title, _$description, _$active, _$layer], _values, _hash, _equals)));

  static dynamic _$id(gen1.MapType obj) => obj.id;

  static dynamic _$title(gen1.MapType obj) => obj.title;

  static dynamic _$description(gen1.MapType obj) => obj.description;

  static dynamic _$active(gen1.MapType obj) => obj.active;

  static dynamic _$layer(gen1.MapType obj) => obj.layer;

  static List<dynamic> _values(gen1.MapType obj) => [obj.id, obj.title, obj.description, obj.active, obj.layer];

  static gen1.MapType _activator(List list) {
    return gen1.MapType(id: list[0], title: list[1], description: list[2], active: list[3], layer: list[4]);
  }

  static int _hash(gen1.MapType obj) => obj.id.hashCode ^ obj.title.hashCode ^ obj.description.hashCode ^ obj.active.hashCode ^ obj.layer.hashCode;

  static bool _equals(
    gen1.MapType a,
    gen1.MapType b,
  ) =>
      (a.id == b.id && a.title == b.title && a.description == b.description && a.active == b.active && a.layer == b.layer);
}

class MapTypeBuilder {
  MapTypeBuilder([gen1.MapType? $src]) {
    if ($src == null) {
      $values = List.filled(5, null);
    } else {
      $values = MapTypeConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen1.MapType? $src;

  set id(gen0.String value) {
    $values[0] = value;
  }

  gen0.String get id => $values[0];

  set title(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get title => $values[1];

  set description(gen0.String value) {
    $values[2] = value;
  }

  gen0.String get description => $values[2];

  set active(gen0.bool value) {
    $values[3] = value;
  }

  gen0.bool get active => $values[3];

  set layer(gen1.LayerDescriptor value) {
    $values[4] = value;
  }

  gen1.LayerDescriptor get layer => $values[4];

  gen1.MapType build() {
    var instance = MapTypeConverter._activator($values);

    return instance;
  }
}

extension MapTypeDogsExtension on gen1.MapType {
  gen1.MapType rebuild(Function(MapTypeBuilder b) f) {
    var builder = MapTypeBuilder(this);
    f(builder);
    return builder.build();
  }

  MapTypeBuilder toBuilder() {
    return MapTypeBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.MapType);
  }
}

class MapInfoConverter extends gen.DefaultStructureConverter<gen1.MapInfo> {
  MapInfoConverter()
      : super(
            struct: const gen.DogStructure<gen1.MapInfo>(
                'MapInfo',
                gen.StructureConformity.dataclass,
                [
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'id', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'title', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.String>(), gen.TypeToken<gen0.String>(), null, gen.IterableKind.none, 'description', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen0.bool>(), gen.TypeToken<gen0.bool>(), null, gen.IterableKind.none, 'active', false, false, []),
                  gen.DogStructureField(gen.QualifiedTerminal<gen1.LayerDescriptor>(), gen.TypeToken<gen1.LayerDescriptor>(), null, gen.IterableKind.none, 'layer', false, true, [])
                ],
                [],
                gen.ObjectFactoryStructureProxy<gen1.MapInfo>(_activator, [_$id, _$title, _$description, _$active, _$layer], _values, _hash, _equals)));

  static dynamic _$id(gen1.MapInfo obj) => obj.id;

  static dynamic _$title(gen1.MapInfo obj) => obj.title;

  static dynamic _$description(gen1.MapInfo obj) => obj.description;

  static dynamic _$active(gen1.MapInfo obj) => obj.active;

  static dynamic _$layer(gen1.MapInfo obj) => obj.layer;

  static List<dynamic> _values(gen1.MapInfo obj) => [obj.id, obj.title, obj.description, obj.active, obj.layer];

  static gen1.MapInfo _activator(List list) {
    return gen1.MapInfo(id: list[0], title: list[1], description: list[2], active: list[3], layer: list[4]);
  }

  static int _hash(gen1.MapInfo obj) => obj.id.hashCode ^ obj.title.hashCode ^ obj.description.hashCode ^ obj.active.hashCode ^ obj.layer.hashCode;

  static bool _equals(
    gen1.MapInfo a,
    gen1.MapInfo b,
  ) =>
      (a.id == b.id && a.title == b.title && a.description == b.description && a.active == b.active && a.layer == b.layer);
}

class MapInfoBuilder {
  MapInfoBuilder([gen1.MapInfo? $src]) {
    if ($src == null) {
      $values = List.filled(5, null);
    } else {
      $values = MapInfoConverter._values($src);
      this.$src = $src;
    }
  }

  late List<dynamic> $values;

  gen1.MapInfo? $src;

  set id(gen0.String value) {
    $values[0] = value;
  }

  gen0.String get id => $values[0];

  set title(gen0.String value) {
    $values[1] = value;
  }

  gen0.String get title => $values[1];

  set description(gen0.String value) {
    $values[2] = value;
  }

  gen0.String get description => $values[2];

  set active(gen0.bool value) {
    $values[3] = value;
  }

  gen0.bool get active => $values[3];

  set layer(gen1.LayerDescriptor value) {
    $values[4] = value;
  }

  gen1.LayerDescriptor get layer => $values[4];

  gen1.MapInfo build() {
    var instance = MapInfoConverter._activator($values);

    return instance;
  }
}

extension MapInfoDogsExtension on gen1.MapInfo {
  gen1.MapInfo rebuild(Function(MapInfoBuilder b) f) {
    var builder = MapInfoBuilder(this);
    f(builder);
    return builder.build();
  }

  MapInfoBuilder toBuilder() {
    return MapInfoBuilder(this);
  }

  Map<String, dynamic> toNative() {
    return gen.dogs.convertObjectToNative(this, gen1.MapInfo);
  }
}
