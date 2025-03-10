import 'dart:async';
import 'dart:convert';

import 'package:tremors/models/auth.dart';
import 'package:tremors/ref.dart';

class AccessTokenMetadataProvider {
  final Ref<AuthorisedUser> _ref;

  AccessTokenMetadataProvider(this._ref);

  FutureOr<void> call(Map<String, String> metadata, String uri) {
    if (_ref.value != null) {
      metadata["token-bin"] = base64Encode(_ref.value!.accessToken);
    }
  }
}
