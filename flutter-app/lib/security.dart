import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tremors/security/storage.dart';

class SecurityModule {
  final SecurityStorage securityStorage;

  SecurityModule(this.securityStorage);

  static FutureOr<SecurityModule> create() async {
    return SecurityModule(SecurityStorage(SharedPreferencesAsync()));
  }
}
