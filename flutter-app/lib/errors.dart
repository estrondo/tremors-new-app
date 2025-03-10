sealed class TremorsException implements Exception {
  final String message;
  final dynamic source;

  TremorsException(this.message, this.source);

  @override
  String toString() => "$runtimeType: $message";
}

class SecurityException extends TremorsException {
  SecurityException(super.message, [super.source]);
}

class UnexpectedException extends TremorsException {
  UnexpectedException(super.message, [super.source]);
}

class IllegalArgumentException extends TremorsException {
  IllegalArgumentException(super.message, [super.source]);
}