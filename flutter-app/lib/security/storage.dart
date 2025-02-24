import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tremors/models/auth.dart';

const _userKey = "tremors.security.v1.userData";
const _refreshTokenKey = "tremors.security.v1.refreshToken";

class SecurityStorage {
  final SharedPreferencesAsync _preferences;

  SecurityStorage(this._preferences);

  FutureOr<AuthorisedUser> store(
    AuthorisedUser user,
    String refreshToken,
  ) async {
    await _preferences.setStringList(_userKey, [
      base64.encode(user.accessToken),
      user.email,
      user.name,
    ]);

    await _preferences.setString(
      _refreshTokenKey,
      refreshToken,
    );

    return user;
  }

  FutureOr<AuthorisedUser?> loadAuthorisedUser() async {
    final values = await _preferences.getStringList(_userKey);
    return switch (values) {
      [final accessToken, final email, final name]? => _createUser(
          accessToken,
          email,
          name,
        ),
      _ => null,
    };
  }

  FutureOr<String?> loadRefreshToken() =>
      _preferences.getString(_refreshTokenKey);

  AuthorisedUser _createUser(String accessToken, String email, String name) {
    return AuthorisedUser(
      accessToken: base64.decode(accessToken),
      email: email,
      name: name,
    );
  }

  cleanUp() async {
    await _preferences.remove(_userKey);
    await _preferences.remove(_refreshTokenKey);
  }
}
