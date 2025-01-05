//
//  Generated code. Do not modify.
//  source: toph.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'toph.pb.dart' as $0;

export 'toph.pb.dart';

@$pb.GrpcServiceName('toph.AccountService')
class AccountServiceClient extends $grpc.Client {
  static final _$update = $grpc.ClientMethod<$0.GRPCUpdateAccount, $0.GRPCAccount>(
      '/toph.AccountService/Update',
      ($0.GRPCUpdateAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRPCAccount.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GRPCAccount> update($0.GRPCUpdateAccount request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('toph.AccountService')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'toph.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GRPCUpdateAccount, $0.GRPCAccount>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRPCUpdateAccount.fromBuffer(value),
        ($0.GRPCAccount value) => value.writeToBuffer()));
  }

  $async.Future<$0.GRPCAccount> update_Pre($grpc.ServiceCall call, $async.Future<$0.GRPCUpdateAccount> request) async {
    return update(call, await request);
  }

  $async.Future<$0.GRPCAccount> update($grpc.ServiceCall call, $0.GRPCUpdateAccount request);
}
@$pb.GrpcServiceName('toph.SecurityService')
class SecurityServiceClient extends $grpc.Client {
  static final _$authorise = $grpc.ClientMethod<$0.GRPCAuthorisationRequest, $0.GRPCAuthorisationResponse>(
      '/toph.SecurityService/Authorise',
      ($0.GRPCAuthorisationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GRPCAuthorisationResponse.fromBuffer(value));

  SecurityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GRPCAuthorisationResponse> authorise($0.GRPCAuthorisationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorise, request, options: options);
  }
}

@$pb.GrpcServiceName('toph.SecurityService')
abstract class SecurityServiceBase extends $grpc.Service {
  $core.String get $name => 'toph.SecurityService';

  SecurityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GRPCAuthorisationRequest, $0.GRPCAuthorisationResponse>(
        'Authorise',
        authorise_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GRPCAuthorisationRequest.fromBuffer(value),
        ($0.GRPCAuthorisationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GRPCAuthorisationResponse> authorise_Pre($grpc.ServiceCall call, $async.Future<$0.GRPCAuthorisationRequest> request) async {
    return authorise(call, await request);
  }

  $async.Future<$0.GRPCAuthorisationResponse> authorise($grpc.ServiceCall call, $0.GRPCAuthorisationRequest request);
}
