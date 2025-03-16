
abstract class ObjectDecoder<A> {
  A decode(List<int> bytes);
}

abstract class ObjectEncoder<A> {
  List<int> encode(A object);
}

abstract class ObjectCodec<A> implements ObjectEncoder<A>, ObjectDecoder<A> {}

