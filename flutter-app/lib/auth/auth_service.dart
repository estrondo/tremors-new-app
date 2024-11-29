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

sealed class AuthState {
  /// 0 Not Logged, 1 Waiting, 3 Logged, 4 Failed.
  final int type;
  const AuthState(this.type);
}

class Logged extends AuthState {
  final String id;
  final String email;
  final String name;

  Logged({required this.id, required this.email, required this.name}): super(3);
}

class _P extends AuthState {
  const _P(super.type);
}

class Failed extends AuthState {
  final String message;
  final Exception exception;

  Failed({required this.message, required this.exception}):super(4);

}


class AuthService extends ChangeNotifier {
  AuthService();

  static const notLoggedState = _P(0);
  static const waitingState = _P(1);


  AuthState _state = notLoggedState;

  AuthState? get state => _state;

  factory AuthService.create(BuildContext context) {
    return AuthService();
  }

  void call(AuthProvider provider) async {
    _state = waitingState;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 5));

    _state = Failed(message: "Unable to perform the login.\nPlease try it again.", exception: Exception("Ouch!"));
    notifyListeners();
  }

  void reset() {
    _state = notLoggedState;
    notifyListeners();
  }
}
