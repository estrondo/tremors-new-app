//
//  Generated code. Do not modify.
//  source: toph.v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use grpcAccountDescriptor instead')
const GrpcAccount$json = {
  '1': 'GrpcAccount',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `GrpcAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcAccountDescriptor = $convert.base64Decode(
    'CgtHcnBjQWNjb3VudBIQCgNrZXkYASABKAlSA2tleRISCgRuYW1lGAIgASgJUgRuYW1lEhQKBW'
    'VtYWlsGAMgASgJUgVlbWFpbA==');

@$core.Deprecated('Use grpcUpdateAccountDescriptor instead')
const GrpcUpdateAccount$json = {
  '1': 'GrpcUpdateAccount',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GrpcUpdateAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcUpdateAccountDescriptor = $convert.base64Decode(
    'ChFHcnBjVXBkYXRlQWNjb3VudBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use grpcAuthorisationRequestDescriptor instead')
const GrpcAuthorisationRequest$json = {
  '1': 'GrpcAuthorisationRequest',
  '2': [
    {'1': 'openid', '3': 1, '4': 1, '5': 11, '6': '.toph.v1.GrpcOpenIdTokenAuthorisationRequest', '9': 0, '10': 'openid'},
  ],
  '8': [
    {'1': 'sealed_value'},
  ],
};

/// Descriptor for `GrpcAuthorisationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcAuthorisationRequestDescriptor = $convert.base64Decode(
    'ChhHcnBjQXV0aG9yaXNhdGlvblJlcXVlc3QSRgoGb3BlbmlkGAEgASgLMiwudG9waC52MS5Hcn'
    'BjT3BlbklkVG9rZW5BdXRob3Jpc2F0aW9uUmVxdWVzdEgAUgZvcGVuaWRCDgoMc2VhbGVkX3Zh'
    'bHVl');

@$core.Deprecated('Use grpcOpenIdTokenAuthorisationRequestDescriptor instead')
const GrpcOpenIdTokenAuthorisationRequest$json = {
  '1': 'GrpcOpenIdTokenAuthorisationRequest',
  '2': [
    {'1': 'provider', '3': 1, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GrpcOpenIdTokenAuthorisationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcOpenIdTokenAuthorisationRequestDescriptor = $convert.base64Decode(
    'CiNHcnBjT3BlbklkVG9rZW5BdXRob3Jpc2F0aW9uUmVxdWVzdBIaCghwcm92aWRlchgBIAEoCV'
    'IIcHJvdmlkZXISFAoFdG9rZW4YAiABKAlSBXRva2Vu');

@$core.Deprecated('Use grpcAuthorisationResponseDescriptor instead')
const GrpcAuthorisationResponse$json = {
  '1': 'GrpcAuthorisationResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `GrpcAuthorisationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcAuthorisationResponseDescriptor = $convert.base64Decode(
    'ChlHcnBjQXV0aG9yaXNhdGlvblJlc3BvbnNlEhQKBXRva2VuGAEgASgMUgV0b2tlbg==');

