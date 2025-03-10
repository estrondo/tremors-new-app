import 'dart:async';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:tremors/generated/grpc/toph.v1.pbgrpc.dart';
import 'package:tremors/logger.dart';
import 'package:tremors/models/auth.dart';
import 'package:tremors/ref.dart';
import 'package:tremors/security/grpc.dart';

final _logger = namedLogger("GrpcModule");

class GrpcModule {
  final ClientChannel _channel;
  final AccessTokenMetadataProvider accessTokenMetadataProvider;

  GrpcModule(this._channel, this.accessTokenMetadataProvider);

  static FutureOr<GrpcModule> create(Ref<AuthorisedUser> userRef) async {
    const hostname = String.fromEnvironment(
      "grpcHost",
      defaultValue: "tremors.api.estrondo.one",
    );

    const port = int.fromEnvironment(
      "grpcPort",
      defaultValue: 443,
    );

    late ChannelCredentials credentials;

    if (const bool.fromEnvironment("grpcDebug", defaultValue: false)) {
      credentials = const ChannelCredentials.insecure();
    } else if (const bool.fromEnvironment("grpcSelfSigned",
        defaultValue: false)) {
      try {
        final cert = await rootBundle.load("assets/grpc/cert");
        credentials =
            ChannelCredentials.secure(certificates: cert.buffer.asUint8List());

        _logger.i("Self signed certificate was added.");
      } on Error catch (cause, stack) {
        _logger.e(
          "Unexpected error!",
          error: cause,
          stackTrace: stack,
        );
      } on Exception catch (cause, stack) {
        _logger.w(
          "Unexpected exception!",
          error: cause,
          stackTrace: stack,
        );
      }
    } else {
      credentials = const ChannelCredentials.secure();
    }

    return GrpcModule(
      ClientChannel(
        hostname,
        port: port,
        options: ChannelOptions(
          credentials: credentials,
        ),
      ),
      AccessTokenMetadataProvider(userRef),
    );
  }

  SecurityServiceClient securityServiceClient() =>
      SecurityServiceClient(_channel);

  ObjectStorageServiceClient objectStorageServiceClient() =>
      ObjectStorageServiceClient(_channel);
}
