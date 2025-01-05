import 'dart:typed_data';

import 'package:pro_binary/pro_binary.dart';
import 'package:tremors/format/io.dart';
import 'package:tremors/models/auth.dart';

AuthorisedUser readAuthorisedUser(List<int> bytes) {
  final reader = BinaryReader(Uint8List.fromList(bytes));
  final version = reader.readUint8();
  final expiration = reader.readInt64();
  final offset = reader.readUint16();
  final reserved = reader.readUint32();
  final key = reader.readJavaUTF8();
  final email = reader.readJavaUTF8();
  final name = reader.readJavaUTF8();

  return AuthorisedUser(
    token: bytes,
    email: email,
  );
}
