import 'package:flutter/material.dart';

enum AuthProvider {
  google("google", "Google"),
  wechat("wechat", "Wechat"),
  microsoft("microsoft", "Microsoft"),
  apple("apple", "Apple"),
  vk("vk", "VK");

  final String id;
  final String title;

  const AuthProvider(this.id, this.title);
}

const _NotLoggedValue = 0,
    _WaitingValue = 1,
    _LoggedValue = 2,
    _FailedValue = 3;

sealed class AuthState {
  /// 0 Not Logged, 1 Waiting, 2 Logged, 3 Failed.
  final int type;
  const AuthState(this.type);
}

class Logged extends AuthState {
  final String id;
  final String email;
  final String name;

  Logged({required this.id, required this.email, required this.name})
      : super(_LoggedValue);
}

class _P extends AuthState {
  const _P(super.type);
}

class Failed extends AuthState {
  final String message;
  final Exception exception;

  Failed({required this.message, required this.exception})
      : super(_FailedValue);
}

class AuthService extends ChangeNotifier {
  AuthService();

  static const notLoggedState = _P(_NotLoggedValue);
  static const waitingState = _P(_WaitingValue);

  AuthState _state = notLoggedState;

  AuthState get state => _state;

  factory AuthService.create(BuildContext context) {
    return AuthService();
  }

  get isLogged => _state.type == _LoggedValue;

  void call(AuthProvider provider) async {
    _state = waitingState;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 5));

    _state = Logged(id: "aaa", email: "a@b.c", name: "Abc Def");
    notifyListeners();
  }

  void reset() {
    _state = notLoggedState;
    notifyListeners();
  }
}
