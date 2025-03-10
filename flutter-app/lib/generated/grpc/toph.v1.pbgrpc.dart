//
//  Generated code. Do not modify.
//  source: toph.v1.proto
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

import 'toph.v1.pb.dart' as $0;

export 'toph.v1.pb.dart';

@$pb.GrpcServiceName('toph.v1.AccountService')
class AccountServiceClient extends $grpc.Client {
  static final _$update = $grpc.ClientMethod<$0.GrpcUpdateAccount, $0.GrpcAccount>(
      '/toph.v1.AccountService/Update',
      ($0.GrpcUpdateAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GrpcAccount.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GrpcAccount> update($0.GrpcUpdateAccount request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }
}

@$pb.GrpcServiceName('toph.v1.AccountService')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'toph.v1.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GrpcUpdateAccount, $0.GrpcAccount>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GrpcUpdateAccount.fromBuffer(value),
        ($0.GrpcAccount value) => value.writeToBuffer()));
  }

  $async.Future<$0.GrpcAccount> update_Pre($grpc.ServiceCall call, $async.Future<$0.GrpcUpdateAccount> request) async {
    return update(call, await request);
  }

  $async.Future<$0.GrpcAccount> update($grpc.ServiceCall call, $0.GrpcUpdateAccount request);
}
@$pb.GrpcServiceName('toph.v1.ObjectStorageService')
class ObjectStorageServiceClient extends $grpc.Client {
  static final _$system = $grpc.ClientMethod<$0.GrpcObject_ReadRequest, $0.GrpcObject_Response>(
      '/toph.v1.ObjectStorageService/System',
      ($0.GrpcObject_ReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GrpcObject_Response.fromBuffer(value));
  static final _$user = $grpc.ClientMethod<$0.GrpcObject_Request, $0.GrpcObject_Response>(
      '/toph.v1.ObjectStorageService/User',
      ($0.GrpcObject_Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GrpcObject_Response.fromBuffer(value));

  ObjectStorageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.GrpcObject_Response> system($async.Stream<$0.GrpcObject_ReadRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$system, request, options: options);
  }

  $grpc.ResponseStream<$0.GrpcObject_Response> user($async.Stream<$0.GrpcObject_Request> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$user, request, options: options);
  }
}

@$pb.GrpcServiceName('toph.v1.ObjectStorageService')
abstract class ObjectStorageServiceBase extends $grpc.Service {
  $core.String get $name => 'toph.v1.ObjectStorageService';

  ObjectStorageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GrpcObject_ReadRequest, $0.GrpcObject_Response>(
        'System',
        system,
        true,
        true,
        ($core.List<$core.int> value) => $0.GrpcObject_ReadRequest.fromBuffer(value),
        ($0.GrpcObject_Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GrpcObject_Request, $0.GrpcObject_Response>(
        'User',
        user,
        true,
        true,
        ($core.List<$core.int> value) => $0.GrpcObject_Request.fromBuffer(value),
        ($0.GrpcObject_Response value) => value.writeToBuffer()));
  }

  $async.Stream<$0.GrpcObject_Response> system($grpc.ServiceCall call, $async.Stream<$0.GrpcObject_ReadRequest> request);
  $async.Stream<$0.GrpcObject_Response> user($grpc.ServiceCall call, $async.Stream<$0.GrpcObject_Request> request);
}
@$pb.GrpcServiceName('toph.v1.SecurityService')
class SecurityServiceClient extends $grpc.Client {
  static final _$authorise = $grpc.ClientMethod<$0.GrpcAuthorisationRequest, $0.GrpcAuthorisationResponse>(
      '/toph.v1.SecurityService/Authorise',
      ($0.GrpcAuthorisationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GrpcAuthorisationResponse.fromBuffer(value));
  static final _$refresh = $grpc.ClientMethod<$0.GrpcRefreshAuthorisation, $0.GrpcAuthorisationResponse>(
      '/toph.v1.SecurityService/Refresh',
      ($0.GrpcRefreshAuthorisation value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GrpcAuthorisationResponse.fromBuffer(value));

  SecurityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GrpcAuthorisationResponse> authorise($0.GrpcAuthorisationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorise, request, options: options);
  }

  $grpc.ResponseFuture<$0.GrpcAuthorisationResponse> refresh($0.GrpcRefreshAuthorisation request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refresh, request, options: options);
  }
}

@$pb.GrpcServiceName('toph.v1.SecurityService')
abstract class SecurityServiceBase extends $grpc.Service {
  $core.String get $name => 'toph.v1.SecurityService';

  SecurityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GrpcAuthorisationRequest, $0.GrpcAuthorisationResponse>(
        'Authorise',
        authorise_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GrpcAuthorisationRequest.fromBuffer(value),
        ($0.GrpcAuthorisationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GrpcRefreshAuthorisation, $0.GrpcAuthorisationResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GrpcRefreshAuthorisation.fromBuffer(value),
        ($0.GrpcAuthorisationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GrpcAuthorisationResponse> authorise_Pre($grpc.ServiceCall call, $async.Future<$0.GrpcAuthorisationRequest> request) async {
    return authorise(call, await request);
  }

  $async.Future<$0.GrpcAuthorisationResponse> refresh_Pre($grpc.ServiceCall call, $async.Future<$0.GrpcRefreshAuthorisation> request) async {
    return refresh(call, await request);
  }

  $async.Future<$0.GrpcAuthorisationResponse> authorise($grpc.ServiceCall call, $0.GrpcAuthorisationRequest request);
  $async.Future<$0.GrpcAuthorisationResponse> refresh($grpc.ServiceCall call, $0.GrpcRefreshAuthorisation request);
}
