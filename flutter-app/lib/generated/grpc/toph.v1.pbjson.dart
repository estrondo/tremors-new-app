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
    {'1': 'device', '3': 3, '4': 1, '5': 9, '10': 'device'},
  ],
};

/// Descriptor for `GrpcOpenIdTokenAuthorisationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcOpenIdTokenAuthorisationRequestDescriptor = $convert.base64Decode(
    'CiNHcnBjT3BlbklkVG9rZW5BdXRob3Jpc2F0aW9uUmVxdWVzdBIaCghwcm92aWRlchgBIAEoCV'
    'IIcHJvdmlkZXISFAoFdG9rZW4YAiABKAlSBXRva2VuEhYKBmRldmljZRgDIAEoCVIGZGV2aWNl');

@$core.Deprecated('Use grpcAuthorisationResponseDescriptor instead')
const GrpcAuthorisationResponse$json = {
  '1': 'GrpcAuthorisationResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 12, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `GrpcAuthorisationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcAuthorisationResponseDescriptor = $convert.base64Decode(
    'ChlHcnBjQXV0aG9yaXNhdGlvblJlc3BvbnNlEiEKDGFjY2Vzc190b2tlbhgBIAEoDFILYWNjZX'
    'NzVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use grpcRefreshAuthorisationDescriptor instead')
const GrpcRefreshAuthorisation$json = {
  '1': 'GrpcRefreshAuthorisation',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'device', '3': 3, '4': 1, '5': 9, '10': 'device'},
  ],
};

/// Descriptor for `GrpcRefreshAuthorisation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcRefreshAuthorisationDescriptor = $convert.base64Decode(
    'ChhHcnBjUmVmcmVzaEF1dGhvcmlzYXRpb24SFAoFdG9rZW4YASABKAxSBXRva2VuEiMKDXJlZn'
    'Jlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhIWCgZkZXZpY2UYAyABKAlSBmRldmljZQ==');

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject$json = {
  '1': 'GrpcObject',
  '3': [GrpcObject_Request$json, GrpcObject_ReadRequest$json, GrpcObject_UpdateRequest$json, GrpcObject_UpdateOperation$json, GrpcObject_ReadOperation$json, GrpcObject_Response$json, GrpcObject_UpdateObjectOperation$json, GrpcObject_RemoveObjectOperation$json, GrpcObject_RemoveFolderOperation$json, GrpcObject_FetchObjectOperation$json, GrpcObject_FetchFolderOperation$json, GrpcObject_Result$json, GrpcObject_Error$json, GrpcObject_FetchObjectResult$json, GrpcObject_FetchFolderResult$json, GrpcObject_Item$json, GrpcObject_UpdateObjectResult$json, GrpcObject_RemoveObjectResult$json, GrpcObject_RemoveFolderResult$json],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'read_request', '3': 1, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.ReadRequest', '9': 0, '10': 'readRequest'},
    {'1': 'update_request', '3': 2, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.UpdateRequest', '9': 0, '10': 'updateRequest'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_ReadRequest$json = {
  '1': 'ReadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'operations', '3': 2, '4': 3, '5': 11, '6': '.toph.v1.GrpcObject.ReadOperation', '10': 'operations'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'operations', '3': 2, '4': 3, '5': 11, '6': '.toph.v1.GrpcObject.UpdateOperation', '10': 'operations'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_UpdateOperation$json = {
  '1': 'UpdateOperation',
  '2': [
    {'1': 'update_object', '3': 1, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.UpdateObjectOperation', '9': 0, '10': 'updateObject'},
    {'1': 'remove_object', '3': 2, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.RemoveObjectOperation', '9': 0, '10': 'removeObject'},
    {'1': 'remove_folder', '3': 3, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.RemoveFolderOperation', '9': 0, '10': 'removeFolder'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_ReadOperation$json = {
  '1': 'ReadOperation',
  '2': [
    {'1': 'fetch_object', '3': 1, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.FetchObjectOperation', '9': 0, '10': 'fetchObject'},
    {'1': 'fetch_folder', '3': 2, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.FetchFolderOperation', '9': 0, '10': 'fetchFolder'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'results', '3': 2, '4': 3, '5': 11, '6': '.toph.v1.GrpcObject.Result', '10': 'results'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_UpdateObjectOperation$json = {
  '1': 'UpdateObjectOperation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 3, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'should_return_content', '3': 4, '4': 1, '5': 8, '10': 'shouldReturnContent'},
    {'1': 'content_type', '3': 5, '4': 1, '5': 9, '10': 'contentType'},
    {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_RemoveObjectOperation$json = {
  '1': 'RemoveObjectOperation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'folder', '3': 2, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'should_return_content', '3': 4, '4': 1, '5': 8, '10': 'shouldReturnContent'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_RemoveFolderOperation$json = {
  '1': 'RemoveFolderOperation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'should_return_content', '3': 3, '4': 1, '5': 8, '10': 'shouldReturnContent'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_FetchObjectOperation$json = {
  '1': 'FetchObjectOperation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 3, '4': 1, '5': 9, '10': 'folder'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_FetchFolderOperation$json = {
  '1': 'FetchFolderOperation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.Error', '9': 0, '10': 'error'},
    {'1': 'fetch_object', '3': 2, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.FetchObjectResult', '9': 0, '10': 'fetchObject'},
    {'1': 'fetch_folder', '3': 3, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.FetchFolderResult', '9': 0, '10': 'fetchFolder'},
    {'1': 'update_object', '3': 4, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.UpdateObjectResult', '9': 0, '10': 'updateObject'},
    {'1': 'remove_object', '3': 5, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.RemoveObjectResult', '9': 0, '10': 'removeObject'},
    {'1': 'remove_folder', '3': 6, '4': 1, '5': 11, '6': '.toph.v1.GrpcObject.RemoveFolderResult', '9': 0, '10': 'removeFolder'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_Error$json = {
  '1': 'Error',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'causes', '3': 4, '4': 3, '5': 9, '10': 'causes'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_FetchObjectResult$json = {
  '1': 'FetchObjectResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 3, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'content_type', '3': 4, '4': 1, '5': 9, '10': 'contentType'},
    {'1': 'exists', '3': 5, '4': 1, '5': 8, '10': 'exists'},
    {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_FetchFolderResult$json = {
  '1': 'FetchFolderResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.toph.v1.GrpcObject.Item', '10': 'items'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 2, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'content_type', '3': 3, '4': 1, '5': 9, '10': 'contentType'},
    {'1': 'created_at', '3': 4, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_UpdateObjectResult$json = {
  '1': 'UpdateObjectResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 3, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'content_type', '3': 4, '4': 1, '5': 9, '10': 'contentType'},
    {'1': 'content', '3': 5, '4': 1, '5': 12, '10': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_RemoveObjectResult$json = {
  '1': 'RemoveObjectResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'folder', '3': 3, '4': 1, '5': 9, '10': 'folder'},
    {'1': 'existed', '3': 4, '4': 1, '5': 8, '10': 'existed'},
    {'1': 'content', '3': 5, '4': 1, '5': 12, '10': 'content'},
  ],
};

@$core.Deprecated('Use grpcObjectDescriptor instead')
const GrpcObject_RemoveFolderResult$json = {
  '1': 'RemoveFolderResult',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.toph.v1.GrpcObject.Item', '10': 'items'},
  ],
};

/// Descriptor for `GrpcObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grpcObjectDescriptor = $convert.base64Decode(
    'CgpHcnBjT2JqZWN0GqYBCgdSZXF1ZXN0EkQKDHJlYWRfcmVxdWVzdBgBIAEoCzIfLnRvcGgudj'
    'EuR3JwY09iamVjdC5SZWFkUmVxdWVzdEgAUgtyZWFkUmVxdWVzdBJKCg51cGRhdGVfcmVxdWVz'
    'dBgCIAEoCzIhLnRvcGgudjEuR3JwY09iamVjdC5VcGRhdGVSZXF1ZXN0SABSDXVwZGF0ZVJlcX'
    'Vlc3RCCQoHY29udGVudBpgCgtSZWFkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSQQoKb3BlcmF0'
    'aW9ucxgCIAMoCzIhLnRvcGgudjEuR3JwY09iamVjdC5SZWFkT3BlcmF0aW9uUgpvcGVyYXRpb2'
    '5zGmQKDVVwZGF0ZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEkMKCm9wZXJhdGlvbnMYAiADKAsy'
    'Iy50b3BoLnYxLkdycGNPYmplY3QuVXBkYXRlT3BlcmF0aW9uUgpvcGVyYXRpb25zGpICCg9VcG'
    'RhdGVPcGVyYXRpb24SUAoNdXBkYXRlX29iamVjdBgBIAEoCzIpLnRvcGgudjEuR3JwY09iamVj'
    'dC5VcGRhdGVPYmplY3RPcGVyYXRpb25IAFIMdXBkYXRlT2JqZWN0ElAKDXJlbW92ZV9vYmplY3'
    'QYAiABKAsyKS50b3BoLnYxLkdycGNPYmplY3QuUmVtb3ZlT2JqZWN0T3BlcmF0aW9uSABSDHJl'
    'bW92ZU9iamVjdBJQCg1yZW1vdmVfZm9sZGVyGAMgASgLMikudG9waC52MS5HcnBjT2JqZWN0Ll'
    'JlbW92ZUZvbGRlck9wZXJhdGlvbkgAUgxyZW1vdmVGb2xkZXJCCQoHY29udGVudBq4AQoNUmVh'
    'ZE9wZXJhdGlvbhJNCgxmZXRjaF9vYmplY3QYASABKAsyKC50b3BoLnYxLkdycGNPYmplY3QuRm'
    'V0Y2hPYmplY3RPcGVyYXRpb25IAFILZmV0Y2hPYmplY3QSTQoMZmV0Y2hfZm9sZGVyGAIgASgL'
    'MigudG9waC52MS5HcnBjT2JqZWN0LkZldGNoRm9sZGVyT3BlcmF0aW9uSABSC2ZldGNoRm9sZG'
    'VyQgkKB2NvbnRlbnQaUAoIUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjQKB3Jlc3VsdHMYAiAD'
    'KAsyGi50b3BoLnYxLkdycGNPYmplY3QuUmVzdWx0UgdyZXN1bHRzGsQBChVVcGRhdGVPYmplY3'
    'RPcGVyYXRpb24SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGZm9sZGVy'
    'GAMgASgJUgZmb2xkZXISMgoVc2hvdWxkX3JldHVybl9jb250ZW50GAQgASgIUhNzaG91bGRSZX'
    'R1cm5Db250ZW50EiEKDGNvbnRlbnRfdHlwZRgFIAEoCVILY29udGVudFR5cGUSGAoHY29udGVu'
    'dBgGIAEoDFIHY29udGVudBqHAQoVUmVtb3ZlT2JqZWN0T3BlcmF0aW9uEg4KAmlkGAEgASgJUg'
    'JpZBIWCgZmb2xkZXIYAiABKAlSBmZvbGRlchISCgRuYW1lGAMgASgJUgRuYW1lEjIKFXNob3Vs'
    'ZF9yZXR1cm5fY29udGVudBgEIAEoCFITc2hvdWxkUmV0dXJuQ29udGVudBpvChVSZW1vdmVGb2'
    'xkZXJPcGVyYXRpb24SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSMgoVc2hv'
    'dWxkX3JldHVybl9jb250ZW50GAMgASgIUhNzaG91bGRSZXR1cm5Db250ZW50GlIKFEZldGNoT2'
    'JqZWN0T3BlcmF0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmZv'
    'bGRlchgDIAEoCVIGZm9sZGVyGjoKFEZldGNoRm9sZGVyT3BlcmF0aW9uEg4KAmlkGAEgASgJUg'
    'JpZBISCgRuYW1lGAIgASgJUgRuYW1lGssDCgZSZXN1bHQSMQoFZXJyb3IYASABKAsyGS50b3Bo'
    'LnYxLkdycGNPYmplY3QuRXJyb3JIAFIFZXJyb3ISSgoMZmV0Y2hfb2JqZWN0GAIgASgLMiUudG'
    '9waC52MS5HcnBjT2JqZWN0LkZldGNoT2JqZWN0UmVzdWx0SABSC2ZldGNoT2JqZWN0EkoKDGZl'
    'dGNoX2ZvbGRlchgDIAEoCzIlLnRvcGgudjEuR3JwY09iamVjdC5GZXRjaEZvbGRlclJlc3VsdE'
    'gAUgtmZXRjaEZvbGRlchJNCg11cGRhdGVfb2JqZWN0GAQgASgLMiYudG9waC52MS5HcnBjT2Jq'
    'ZWN0LlVwZGF0ZU9iamVjdFJlc3VsdEgAUgx1cGRhdGVPYmplY3QSTQoNcmVtb3ZlX29iamVjdB'
    'gFIAEoCzImLnRvcGgudjEuR3JwY09iamVjdC5SZW1vdmVPYmplY3RSZXN1bHRIAFIMcmVtb3Zl'
    'T2JqZWN0Ek0KDXJlbW92ZV9mb2xkZXIYBiABKAsyJi50b3BoLnYxLkdycGNPYmplY3QuUmVtb3'
    'ZlRm9sZGVyUmVzdWx0SABSDHJlbW92ZUZvbGRlckIJCgdjb250ZW50Gl0KBUVycm9yEg4KAmlk'
    'GAEgASgJUgJpZBISCgRjb2RlGAIgASgJUgRjb2RlEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2'
    'USFgoGY2F1c2VzGAQgAygJUgZjYXVzZXMapAEKEUZldGNoT2JqZWN0UmVzdWx0Eg4KAmlkGAEg'
    'ASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmZvbGRlchgDIAEoCVIGZm9sZGVyEiEKDG'
    'NvbnRlbnRfdHlwZRgEIAEoCVILY29udGVudFR5cGUSFgoGZXhpc3RzGAUgASgIUgZleGlzdHMS'
    'GAoHY29udGVudBgGIAEoDFIHY29udGVudBpnChFGZXRjaEZvbGRlclJlc3VsdBIOCgJpZBgBIA'
    'EoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIuCgVpdGVtcxgEIAMoCzIYLnRvcGgudjEuR3Jw'
    'Y09iamVjdC5JdGVtUgVpdGVtcxqTAQoESXRlbRISCgRuYW1lGAEgASgJUgRuYW1lEhYKBmZvbG'
    'RlchgCIAEoCVIGZm9sZGVyEiEKDGNvbnRlbnRfdHlwZRgDIAEoCVILY29udGVudFR5cGUSHQoK'
    'Y3JlYXRlZF9hdBgEIAEoA1IJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBSABKANSCXVwZGF0ZW'
    'RBdBqNAQoSVXBkYXRlT2JqZWN0UmVzdWx0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJ'
    'UgRuYW1lEhYKBmZvbGRlchgDIAEoCVIGZm9sZGVyEiEKDGNvbnRlbnRfdHlwZRgEIAEoCVILY2'
    '9udGVudFR5cGUSGAoHY29udGVudBgFIAEoDFIHY29udGVudBqEAQoSUmVtb3ZlT2JqZWN0UmVz'
    'dWx0Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmZvbGRlchgDIAEoCV'
    'IGZm9sZGVyEhgKB2V4aXN0ZWQYBCABKAhSB2V4aXN0ZWQSGAoHY29udGVudBgFIAEoDFIHY29u'
    'dGVudBpoChJSZW1vdmVGb2xkZXJSZXN1bHQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSLgoFaXRlbXMYAyADKAsyGC50b3BoLnYxLkdycGNPYmplY3QuSXRlbVIFaXRlbXM=');

