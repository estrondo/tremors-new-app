import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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

  Logged({required this.id, required this.email, required this.name})
      : super(_loggedValue);
}

class _P extends AuthState {
  const _P(super.type);
}

class Failed extends AuthState {
  final String message;
  final Exception exception;

  Failed({required this.message, required this.exception})
      : super(_failedValue);
}

class AuthService extends ChangeNotifier {
  AuthService();

  static const notLoggedState = _P(_notLoggedValue);
  static const waitingState = _P(_waitingValue);

  final logger = Logger();

  AuthState _state = notLoggedState;

  AuthState get state => _state;

  factory AuthService.create(BuildContext context) {
    return AuthService();
  }

  get isLogged => _state.type == _loggedValue;

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
