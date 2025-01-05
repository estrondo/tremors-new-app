//
//  Generated code. Do not modify.
//  source: toph.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gRPCAccountDescriptor instead')
const GRPCAccount$json = {
  '1': 'GRPCAccount',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `GRPCAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCAccountDescriptor = $convert.base64Decode(
    'CgtHUlBDQWNjb3VudBIQCgNrZXkYASABKAlSA2tleRISCgRuYW1lGAIgASgJUgRuYW1lEhQKBW'
    'VtYWlsGAMgASgJUgVlbWFpbA==');

@$core.Deprecated('Use gRPCUpdateAccountDescriptor instead')
const GRPCUpdateAccount$json = {
  '1': 'GRPCUpdateAccount',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GRPCUpdateAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCUpdateAccountDescriptor = $convert.base64Decode(
    'ChFHUlBDVXBkYXRlQWNjb3VudBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use gRPCAuthorisationRequestDescriptor instead')
const GRPCAuthorisationRequest$json = {
  '1': 'GRPCAuthorisationRequest',
  '2': [
    {'1': 'openid', '3': 1, '4': 1, '5': 11, '6': '.toph.GRPCOpenIdTokenAuthorisationRequest', '9': 0, '10': 'openid'},
  ],
  '8': [
    {'1': 'sealed_value'},
  ],
};

/// Descriptor for `GRPCAuthorisationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCAuthorisationRequestDescriptor = $convert.base64Decode(
    'ChhHUlBDQXV0aG9yaXNhdGlvblJlcXVlc3QSQwoGb3BlbmlkGAEgASgLMikudG9waC5HUlBDT3'
    'BlbklkVG9rZW5BdXRob3Jpc2F0aW9uUmVxdWVzdEgAUgZvcGVuaWRCDgoMc2VhbGVkX3ZhbHVl');

@$core.Deprecated('Use gRPCOpenIdTokenAuthorisationRequestDescriptor instead')
const GRPCOpenIdTokenAuthorisationRequest$json = {
  '1': 'GRPCOpenIdTokenAuthorisationRequest',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GRPCOpenIdTokenAuthorisationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCOpenIdTokenAuthorisationRequestDescriptor = $convert.base64Decode(
    'CiNHUlBDT3BlbklkVG9rZW5BdXRob3Jpc2F0aW9uUmVxdWVzdBIYCgd2ZXJzaW9uGAEgASgJUg'
    'd2ZXJzaW9uEhoKCHByb3ZpZGVyGAIgASgJUghwcm92aWRlchIUCgV0b2tlbhgDIAEoCVIFdG9r'
    'ZW4=');

@$core.Deprecated('Use gRPCAuthorisationResponseDescriptor instead')
const GRPCAuthorisationResponse$json = {
  '1': 'GRPCAuthorisationResponse',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'token', '3': 2, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `GRPCAuthorisationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCAuthorisationResponseDescriptor = $convert.base64Decode(
    'ChlHUlBDQXV0aG9yaXNhdGlvblJlc3BvbnNlEhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24SFA'
    'oFdG9rZW4YAiABKAxSBXRva2Vu');

