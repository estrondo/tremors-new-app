import 'dart:async';

import 'package:tremors/auth/google.dart';
import 'package:tremors/auth/models.dart';

FutureOr<String> authorise(AuthProvider provider) async {
  return switch (provider) {
    AuthProvider.google => loginWithGoogle(provider),
    AuthProvider.wechat => throw UnimplementedError(),
    AuthProvider.microsoft => throw UnimplementedError(),
    AuthProvider.apple => throw UnimplementedError(),
    AuthProvider.vk => throw UnimplementedError(),
  };
}
