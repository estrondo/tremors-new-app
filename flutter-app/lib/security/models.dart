import 'package:tremors/auth/models.dart';
import 'package:tremors/models/auth.dart';

sealed class SecurityState {
  final bool isLogged;

  SecurityState(this.isLogged);
}

class ValuedSecurityState extends SecurityState {
  static const notLoggedState = 0;
  static const waitingLoggedState = 1;

  final int value;

  ValuedSecurityState(this.value) : super(false);

  factory ValuedSecurityState.notLogged() =>
      ValuedSecurityState(notLoggedState);

  factory ValuedSecurityState.waiting() =>
      ValuedSecurityState(waitingLoggedState);
}

class LoggedSecurityState extends SecurityState {
  final AuthorisedUser user;

  LoggedSecurityState({
    required this.user,
  }) : super(true);
}

class FailedSecurityState extends SecurityState {
  final Exception cause;
  final AuthProvider provider;

  FailedSecurityState({
    required this.cause,
    required this.provider,
  }) : super(false);
}
