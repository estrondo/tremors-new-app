import 'package:flutter/material.dart';
import 'package:tremors/auth/google.dart';
import 'package:tremors/auth/models.dart';
import 'package:tremors/errors.dart';
import 'package:tremors/logger.dart';

const _notLoggedValue = 0,
    _waitingValue = 1,
    _loggedValue = 2,
    _failedValue = 3;

sealed class AuthState {
  /// 0 Not Logged, 1 Waiting, 2 Logged, 3 Failed.
  final int type;
  const AuthState(this.type);
}

class Logged extends AuthState {
  final String id;
  final String email;
  final String name;
  final AuthProvider provider;

  Logged({
    required this.id,
    required this.email,
    required this.name,
    required this.provider,
  }) : super(_loggedValue);
}

class _P extends AuthState {
  const _P(super.type);
}

class Failed extends AuthState {
  final String message;
  final Exception exception;
  final AuthProvider provider;

  Failed({
    required this.message,
    required this.exception,
    required this.provider,
  }) : super(_failedValue);
}

class AuthService extends ChangeNotifier {
  AuthService();

  static const notLoggedState = _P(_notLoggedValue);
  static const waitingState = _P(_waitingValue);

  final _logger = namedLogger("AuthService");

  AuthState _state = notLoggedState;

  AuthState get state => _state;

  factory AuthService.create(BuildContext context) {
    return AuthService();
  }

  get isLogged => _state.type == _loggedValue;

  void call(AuthProvider provider) async {
    _state = waitingState;
    notifyListeners();

    final notImplemented = Future.error(SecurityException("Not implemented!"));

    final idTokenFuture = switch (provider) {
      AuthProvider.google => loginWithGoogle(provider),
      AuthProvider.wechat => notImplemented,
      AuthProvider.microsoft => notImplemented,
      AuthProvider.apple => notImplemented,
      AuthProvider.vk => notImplemented,
    };

    _logger.d("Using ${provider.title}.");
    late final String idToken;
    try {
      idToken = await idTokenFuture;
      _state = Logged(
        id: idToken,
        email: idToken,
        name: idToken,
        provider: provider,
      );
      _logger.t("IdToken: $idToken");
    } on SecurityException catch (cause) {
      _logger.e("Sign process has failed:", error: cause.source ?? cause);
      _state = Failed(
        message: "Login with ${provider.title} has failed.",
        exception: cause,
        provider: provider,
      );
    }

    notifyListeners();
  }

  void reset() {
    _state = notLoggedState;
    notifyListeners();
  }
}
