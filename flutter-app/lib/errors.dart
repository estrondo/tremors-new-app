
sealed class TremorsException {
  final String message;

  TremorsException(this.message);
}

class SecurityException extends TremorsException {

  SecurityException(super.message);
}