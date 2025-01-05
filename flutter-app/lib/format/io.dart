import 'package:pro_binary/pro_binary.dart';

extension BinaryReaderExt on BinaryReader {

  String readJavaUTF8() {
    return readString(readInt16());
  }
}