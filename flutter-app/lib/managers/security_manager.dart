import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tremors/auth/auth.dart';
import 'package:tremors/auth/models.dart';
import 'package:tremors/format/token.dart';
import 'package:tremors/generated/grpc/toph.v1.pbgrpc.dart';
import 'package:tremors/grpc.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/models/auth.dart';
import 'package:tremors/security/models.dart';
import 'package:tremors/security/storage.dart';

final _logger = typedLogger(SecurityManager);

class SecurityManager extends ChangeNotifier {
  final SecurityServiceClient _client;
  final SecurityStorage _securityStorage;

  SecurityState _state = ValuedSecurityState.waiting();
  SecurityState get state => _state;

  bool get isLogged => _state.isLogged;

  factory SecurityManager.create(
    BuildContext context,
    GrpcModule grpcModule,
    SecurityStorage securityStorage,
  ) =>
      SecurityManager(
        grpcModule.securityServiceClient(context),
        securityStorage,
      );

  SecurityManager(this._client, this._securityStorage) {
    (_securityStorage.loadAuthorisedUser() as Future<AuthorisedUser?>).then((user) {
      _logger.d("Trying to load stored authorised user.");
      if (user != null) {
        _state = LoggedSecurityState(user: user);
      } else {
        _state = ValuedSecurityState.notLogged();
      }
      notifyListeners();
    }).onError((_, __) {
      _state = ValuedSecurityState.notLogged();
    });
  }

  void call(AuthProvider provider) async {
    _state = ValuedSecurityState.waiting();
    notifyListeners();

    try {
      _logger.d("Authentication with ${provider.title}.");
      final token = await authorise(provider);
      _logger.d("Authorisation with Toph.");
      _state = await _authoriseOpenIdToken(token, provider);
    } on Exception catch (cause) {
      _logger.w("Unable to authorise!", error: cause);
      _state = FailedSecurityState(cause: cause, provider: provider);
    }

    notifyListeners();
  }

  FutureOr<void> logout() async {
    await _securityStorage.cleanUp();
    _state = ValuedSecurityState.notLogged();
    notifyListeners();
  }

  FutureOr<SecurityState> _authoriseOpenIdToken(
    String token,
    AuthProvider provider,
  ) async {
    try {
      final response = await _client.authorise(
        GrpcAuthorisationRequest(
          openid: GrpcOpenIdTokenAuthorisationRequest(
            provider: provider.id,
            token: token,
          ),
        ),
      );

      _logger.d("Toph has authorised.");
      final user = await _securityStorage.store(
        readAuthorisedUser(response.accessToken),
        response.refreshToken,
      );

      return LoggedSecurityState(
        user: user,
      );
    } on Exception catch (cause) {
      _logger.w("Unable to authorise with Toph.", error: cause);
      return FailedSecurityState(cause: cause, provider: provider);
    }
  }

  void reset() {
    _state = ValuedSecurityState.notLogged();
    notifyListeners();
  }
}
