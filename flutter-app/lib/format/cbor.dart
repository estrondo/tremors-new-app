import 'dart:convert';

import 'package:cbor/cbor.dart';
import 'package:tremors/format/object_codec.dart';
import 'package:tremors/models/general.dart';

mixin ObjectCborDecoder<A> implements ObjectDecoder<A> {
  @override
  A decode(List<int> encoded) => fromCbor(cbor.decode(encoded));

  A fromCbor(CborValue value);
}

mixin ObjectCborEncoder<A> implements ObjectEncoder<A> {
  @override
  List<int> encode(A object) => cbor.encode(toCbor(object));

  CborValue toCbor(A value);
}

mixin ObjectCborCodec<A> implements ObjectCborEncoder<A>, ObjectCborDecoder<A> {
  @override
  List<int> encode(A object) => cbor.encode(toCbor(object));

  @override
  A decode(List<int> encoded) => fromCbor(cbor.decode(encoded));

  A fromCbor(CborValue value);

  CborValue toCbor(A value);
}

final stringCodec = StringCodec();

class StringCodec with ObjectCborCodec<String> {
  @override
  String fromCbor(CborValue value) => switch (value) {
        CborString(utf8Bytes: final bytes) => utf8.decode(bytes),
        _ => throw "Invalid Cbor for String!",
      };

  @override
  CborValue toCbor(String value) => CborString(value);
}

CborList encodeStringList(List<String> list) =>
    CborList(list.map((x) => CborString(x)).toList());

List<String> decodeStringList(CborList list) {
  return list.map((item) {
    return switch (item) {
      CborString(utf8Bytes: final bytes) => utf8.decode(bytes),
      _ => throw "Unexpected no-string item in a string list!",
    };
  }).toList();
}

Map<K, V> decodeCborMap<K, V>(CborValue encoded,
    ObjectCborDecoder<K> keyDecoder, ObjectCborDecoder<V> valueDecoder) {
  switch (encoded) {
    case CborList list:
      if (list.length % 2 == 0) {
        final result = <K, V>{};
        for (var i = 0; i < list.length; i += 2) {
          result[keyDecoder.fromCbor(list[i])] =
              valueDecoder.fromCbor(list[i + 1]);
        }
        return result;
      } else {
        throw "Invalid Cbor map!";
      }
    case _:
      throw "Unexpected CborValue for a map!";
  }
}

final localisedMessageCborDecoder = LocalisedMessageCborDecoder();

class LocalisedMessageCborDecoder with ObjectCborDecoder<LocalisedMessage> {
  @override
  LocalisedMessage fromCbor(CborValue value) =>
      LocalisedMessage(decodeCborMap(value, stringCodec, stringCodec));
}
