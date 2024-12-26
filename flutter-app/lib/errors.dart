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
