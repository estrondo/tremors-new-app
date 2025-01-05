import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:tremors/generated/grpc/toph.pbgrpc.dart';
import 'package:tremors/logger.dart';

final _logger = namedLogger("GrpcModule");

class GrpcModule {
  final ClientChannel _channel;

  GrpcModule(this._channel);

  static FutureOr<GrpcModule> create() async {
    const hostname = String.fromEnvironment(
      "grpcHost",
      defaultValue: "tremors.api.estrondo.one",
    );

    const port = int.fromEnvironment(
      "grpcPort",
      defaultValue: 443,
    );

    late ChannelCredentials credentials;

    if (const bool.fromEnvironment("grpcSelfSigned", defaultValue: false)) {
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
    );
  }

  SecurityServiceClient securityServiceClient(BuildContext context) =>
      SecurityServiceClient(_channel);
}
