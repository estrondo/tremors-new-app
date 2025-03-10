//
//  Generated code. Do not modify.
//  source: toph.v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class GrpcAccount extends $pb.GeneratedMessage {
  factory GrpcAccount({
    $core.String? key,
    $core.String? name,
    $core.String? email,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (name != null) {
      $result.name = name;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  GrpcAccount._() : super();
  factory GrpcAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcAccount clone() => GrpcAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcAccount copyWith(void Function(GrpcAccount) updates) => super.copyWith((message) => updates(message as GrpcAccount)) as GrpcAccount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcAccount create() => GrpcAccount._();
  GrpcAccount createEmptyInstance() => create();
  static $pb.PbList<GrpcAccount> createRepeated() => $pb.PbList<GrpcAccount>();
  @$core.pragma('dart2js:noInline')
  static GrpcAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcAccount>(create);
  static GrpcAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);
}

class GrpcUpdateAccount extends $pb.GeneratedMessage {
  factory GrpcUpdateAccount({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GrpcUpdateAccount._() : super();
  factory GrpcUpdateAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcUpdateAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcUpdateAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcUpdateAccount clone() => GrpcUpdateAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcUpdateAccount copyWith(void Function(GrpcUpdateAccount) updates) => super.copyWith((message) => updates(message as GrpcUpdateAccount)) as GrpcUpdateAccount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcUpdateAccount create() => GrpcUpdateAccount._();
  GrpcUpdateAccount createEmptyInstance() => create();
  static $pb.PbList<GrpcUpdateAccount> createRepeated() => $pb.PbList<GrpcUpdateAccount>();
  @$core.pragma('dart2js:noInline')
  static GrpcUpdateAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcUpdateAccount>(create);
  static GrpcUpdateAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum GrpcAuthorisationRequest_SealedValue {
  openid, 
  notSet
}

class GrpcAuthorisationRequest extends $pb.GeneratedMessage {
  factory GrpcAuthorisationRequest({
    GrpcOpenIdTokenAuthorisationRequest? openid,
  }) {
    final $result = create();
    if (openid != null) {
      $result.openid = openid;
    }
    return $result;
  }
  GrpcAuthorisationRequest._() : super();
  factory GrpcAuthorisationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcAuthorisationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GrpcAuthorisationRequest_SealedValue> _GrpcAuthorisationRequest_SealedValueByTag = {
    1 : GrpcAuthorisationRequest_SealedValue.openid,
    0 : GrpcAuthorisationRequest_SealedValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcAuthorisationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<GrpcOpenIdTokenAuthorisationRequest>(1, _omitFieldNames ? '' : 'openid', subBuilder: GrpcOpenIdTokenAuthorisationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcAuthorisationRequest clone() => GrpcAuthorisationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcAuthorisationRequest copyWith(void Function(GrpcAuthorisationRequest) updates) => super.copyWith((message) => updates(message as GrpcAuthorisationRequest)) as GrpcAuthorisationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcAuthorisationRequest create() => GrpcAuthorisationRequest._();
  GrpcAuthorisationRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcAuthorisationRequest> createRepeated() => $pb.PbList<GrpcAuthorisationRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcAuthorisationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcAuthorisationRequest>(create);
  static GrpcAuthorisationRequest? _defaultInstance;

  GrpcAuthorisationRequest_SealedValue whichSealedValue() => _GrpcAuthorisationRequest_SealedValueByTag[$_whichOneof(0)]!;
  void clearSealedValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GrpcOpenIdTokenAuthorisationRequest get openid => $_getN(0);
  @$pb.TagNumber(1)
  set openid(GrpcOpenIdTokenAuthorisationRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpenid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenid() => clearField(1);
  @$pb.TagNumber(1)
  GrpcOpenIdTokenAuthorisationRequest ensureOpenid() => $_ensure(0);
}

class GrpcOpenIdTokenAuthorisationRequest extends $pb.GeneratedMessage {
  factory GrpcOpenIdTokenAuthorisationRequest({
    $core.String? provider,
    $core.String? token,
    $core.String? device,
  }) {
    final $result = create();
    if (provider != null) {
      $result.provider = provider;
    }
    if (token != null) {
      $result.token = token;
    }
    if (device != null) {
      $result.device = device;
    }
    return $result;
  }
  GrpcOpenIdTokenAuthorisationRequest._() : super();
  factory GrpcOpenIdTokenAuthorisationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcOpenIdTokenAuthorisationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcOpenIdTokenAuthorisationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'provider')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'device')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcOpenIdTokenAuthorisationRequest clone() => GrpcOpenIdTokenAuthorisationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcOpenIdTokenAuthorisationRequest copyWith(void Function(GrpcOpenIdTokenAuthorisationRequest) updates) => super.copyWith((message) => updates(message as GrpcOpenIdTokenAuthorisationRequest)) as GrpcOpenIdTokenAuthorisationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcOpenIdTokenAuthorisationRequest create() => GrpcOpenIdTokenAuthorisationRequest._();
  GrpcOpenIdTokenAuthorisationRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcOpenIdTokenAuthorisationRequest> createRepeated() => $pb.PbList<GrpcOpenIdTokenAuthorisationRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcOpenIdTokenAuthorisationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcOpenIdTokenAuthorisationRequest>(create);
  static GrpcOpenIdTokenAuthorisationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get provider => $_getSZ(0);
  @$pb.TagNumber(1)
  set provider($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get device => $_getSZ(2);
  @$pb.TagNumber(3)
  set device($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => clearField(3);
}

class GrpcAuthorisationResponse extends $pb.GeneratedMessage {
  factory GrpcAuthorisationResponse({
    $core.List<$core.int>? accessToken,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  GrpcAuthorisationResponse._() : super();
  factory GrpcAuthorisationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcAuthorisationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcAuthorisationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'accessToken', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcAuthorisationResponse clone() => GrpcAuthorisationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcAuthorisationResponse copyWith(void Function(GrpcAuthorisationResponse) updates) => super.copyWith((message) => updates(message as GrpcAuthorisationResponse)) as GrpcAuthorisationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcAuthorisationResponse create() => GrpcAuthorisationResponse._();
  GrpcAuthorisationResponse createEmptyInstance() => create();
  static $pb.PbList<GrpcAuthorisationResponse> createRepeated() => $pb.PbList<GrpcAuthorisationResponse>();
  @$core.pragma('dart2js:noInline')
  static GrpcAuthorisationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcAuthorisationResponse>(create);
  static GrpcAuthorisationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get accessToken => $_getN(0);
  @$pb.TagNumber(1)
  set accessToken($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

class GrpcRefreshAuthorisation extends $pb.GeneratedMessage {
  factory GrpcRefreshAuthorisation({
    $core.List<$core.int>? token,
    $core.String? refreshToken,
    $core.String? device,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (device != null) {
      $result.device = device;
    }
    return $result;
  }
  GrpcRefreshAuthorisation._() : super();
  factory GrpcRefreshAuthorisation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcRefreshAuthorisation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcRefreshAuthorisation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'token', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'device')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcRefreshAuthorisation clone() => GrpcRefreshAuthorisation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcRefreshAuthorisation copyWith(void Function(GrpcRefreshAuthorisation) updates) => super.copyWith((message) => updates(message as GrpcRefreshAuthorisation)) as GrpcRefreshAuthorisation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcRefreshAuthorisation create() => GrpcRefreshAuthorisation._();
  GrpcRefreshAuthorisation createEmptyInstance() => create();
  static $pb.PbList<GrpcRefreshAuthorisation> createRepeated() => $pb.PbList<GrpcRefreshAuthorisation>();
  @$core.pragma('dart2js:noInline')
  static GrpcRefreshAuthorisation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcRefreshAuthorisation>(create);
  static GrpcRefreshAuthorisation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get device => $_getSZ(2);
  @$pb.TagNumber(3)
  set device($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => clearField(3);
}

enum GrpcObject_Request_Content {
  readRequest, 
  updateRequest, 
  notSet
}

class GrpcObject_Request extends $pb.GeneratedMessage {
  factory GrpcObject_Request({
    GrpcObject_ReadRequest? readRequest,
    GrpcObject_UpdateRequest? updateRequest,
  }) {
    final $result = create();
    if (readRequest != null) {
      $result.readRequest = readRequest;
    }
    if (updateRequest != null) {
      $result.updateRequest = updateRequest;
    }
    return $result;
  }
  GrpcObject_Request._() : super();
  factory GrpcObject_Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GrpcObject_Request_Content> _GrpcObject_Request_ContentByTag = {
    1 : GrpcObject_Request_Content.readRequest,
    2 : GrpcObject_Request_Content.updateRequest,
    0 : GrpcObject_Request_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.Request', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<GrpcObject_ReadRequest>(1, _omitFieldNames ? '' : 'readRequest', subBuilder: GrpcObject_ReadRequest.create)
    ..aOM<GrpcObject_UpdateRequest>(2, _omitFieldNames ? '' : 'updateRequest', subBuilder: GrpcObject_UpdateRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_Request clone() => GrpcObject_Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_Request copyWith(void Function(GrpcObject_Request) updates) => super.copyWith((message) => updates(message as GrpcObject_Request)) as GrpcObject_Request;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_Request create() => GrpcObject_Request._();
  GrpcObject_Request createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_Request> createRepeated() => $pb.PbList<GrpcObject_Request>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_Request>(create);
  static GrpcObject_Request? _defaultInstance;

  GrpcObject_Request_Content whichContent() => _GrpcObject_Request_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GrpcObject_ReadRequest get readRequest => $_getN(0);
  @$pb.TagNumber(1)
  set readRequest(GrpcObject_ReadRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReadRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearReadRequest() => clearField(1);
  @$pb.TagNumber(1)
  GrpcObject_ReadRequest ensureReadRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  GrpcObject_UpdateRequest get updateRequest => $_getN(1);
  @$pb.TagNumber(2)
  set updateRequest(GrpcObject_UpdateRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateRequest() => clearField(2);
  @$pb.TagNumber(2)
  GrpcObject_UpdateRequest ensureUpdateRequest() => $_ensure(1);
}

class GrpcObject_ReadRequest extends $pb.GeneratedMessage {
  factory GrpcObject_ReadRequest({
    $core.String? id,
    $core.Iterable<GrpcObject_ReadOperation>? operations,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (operations != null) {
      $result.operations.addAll(operations);
    }
    return $result;
  }
  GrpcObject_ReadRequest._() : super();
  factory GrpcObject_ReadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_ReadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.ReadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<GrpcObject_ReadOperation>(2, _omitFieldNames ? '' : 'operations', $pb.PbFieldType.PM, subBuilder: GrpcObject_ReadOperation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_ReadRequest clone() => GrpcObject_ReadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_ReadRequest copyWith(void Function(GrpcObject_ReadRequest) updates) => super.copyWith((message) => updates(message as GrpcObject_ReadRequest)) as GrpcObject_ReadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_ReadRequest create() => GrpcObject_ReadRequest._();
  GrpcObject_ReadRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_ReadRequest> createRepeated() => $pb.PbList<GrpcObject_ReadRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_ReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_ReadRequest>(create);
  static GrpcObject_ReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GrpcObject_ReadOperation> get operations => $_getList(1);
}

class GrpcObject_UpdateRequest extends $pb.GeneratedMessage {
  factory GrpcObject_UpdateRequest({
    $core.String? id,
    $core.Iterable<GrpcObject_UpdateOperation>? operations,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (operations != null) {
      $result.operations.addAll(operations);
    }
    return $result;
  }
  GrpcObject_UpdateRequest._() : super();
  factory GrpcObject_UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<GrpcObject_UpdateOperation>(2, _omitFieldNames ? '' : 'operations', $pb.PbFieldType.PM, subBuilder: GrpcObject_UpdateOperation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateRequest clone() => GrpcObject_UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateRequest copyWith(void Function(GrpcObject_UpdateRequest) updates) => super.copyWith((message) => updates(message as GrpcObject_UpdateRequest)) as GrpcObject_UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateRequest create() => GrpcObject_UpdateRequest._();
  GrpcObject_UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_UpdateRequest> createRepeated() => $pb.PbList<GrpcObject_UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_UpdateRequest>(create);
  static GrpcObject_UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GrpcObject_UpdateOperation> get operations => $_getList(1);
}

enum GrpcObject_UpdateOperation_Content {
  updateObject, 
  removeObject, 
  removeFolder, 
  notSet
}

class GrpcObject_UpdateOperation extends $pb.GeneratedMessage {
  factory GrpcObject_UpdateOperation({
    GrpcObject_UpdateObjectOperation? updateObject,
    GrpcObject_RemoveObjectOperation? removeObject,
    GrpcObject_RemoveFolderOperation? removeFolder,
  }) {
    final $result = create();
    if (updateObject != null) {
      $result.updateObject = updateObject;
    }
    if (removeObject != null) {
      $result.removeObject = removeObject;
    }
    if (removeFolder != null) {
      $result.removeFolder = removeFolder;
    }
    return $result;
  }
  GrpcObject_UpdateOperation._() : super();
  factory GrpcObject_UpdateOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_UpdateOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GrpcObject_UpdateOperation_Content> _GrpcObject_UpdateOperation_ContentByTag = {
    1 : GrpcObject_UpdateOperation_Content.updateObject,
    2 : GrpcObject_UpdateOperation_Content.removeObject,
    3 : GrpcObject_UpdateOperation_Content.removeFolder,
    0 : GrpcObject_UpdateOperation_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.UpdateOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<GrpcObject_UpdateObjectOperation>(1, _omitFieldNames ? '' : 'updateObject', subBuilder: GrpcObject_UpdateObjectOperation.create)
    ..aOM<GrpcObject_RemoveObjectOperation>(2, _omitFieldNames ? '' : 'removeObject', subBuilder: GrpcObject_RemoveObjectOperation.create)
    ..aOM<GrpcObject_RemoveFolderOperation>(3, _omitFieldNames ? '' : 'removeFolder', subBuilder: GrpcObject_RemoveFolderOperation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateOperation clone() => GrpcObject_UpdateOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateOperation copyWith(void Function(GrpcObject_UpdateOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_UpdateOperation)) as GrpcObject_UpdateOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateOperation create() => GrpcObject_UpdateOperation._();
  GrpcObject_UpdateOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_UpdateOperation> createRepeated() => $pb.PbList<GrpcObject_UpdateOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_UpdateOperation>(create);
  static GrpcObject_UpdateOperation? _defaultInstance;

  GrpcObject_UpdateOperation_Content whichContent() => _GrpcObject_UpdateOperation_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GrpcObject_UpdateObjectOperation get updateObject => $_getN(0);
  @$pb.TagNumber(1)
  set updateObject(GrpcObject_UpdateObjectOperation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateObject() => clearField(1);
  @$pb.TagNumber(1)
  GrpcObject_UpdateObjectOperation ensureUpdateObject() => $_ensure(0);

  @$pb.TagNumber(2)
  GrpcObject_RemoveObjectOperation get removeObject => $_getN(1);
  @$pb.TagNumber(2)
  set removeObject(GrpcObject_RemoveObjectOperation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemoveObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoveObject() => clearField(2);
  @$pb.TagNumber(2)
  GrpcObject_RemoveObjectOperation ensureRemoveObject() => $_ensure(1);

  @$pb.TagNumber(3)
  GrpcObject_RemoveFolderOperation get removeFolder => $_getN(2);
  @$pb.TagNumber(3)
  set removeFolder(GrpcObject_RemoveFolderOperation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoveFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoveFolder() => clearField(3);
  @$pb.TagNumber(3)
  GrpcObject_RemoveFolderOperation ensureRemoveFolder() => $_ensure(2);
}

enum GrpcObject_ReadOperation_Content {
  fetchObject, 
  fetchFolder, 
  notSet
}

class GrpcObject_ReadOperation extends $pb.GeneratedMessage {
  factory GrpcObject_ReadOperation({
    GrpcObject_FetchObjectOperation? fetchObject,
    GrpcObject_FetchFolderOperation? fetchFolder,
  }) {
    final $result = create();
    if (fetchObject != null) {
      $result.fetchObject = fetchObject;
    }
    if (fetchFolder != null) {
      $result.fetchFolder = fetchFolder;
    }
    return $result;
  }
  GrpcObject_ReadOperation._() : super();
  factory GrpcObject_ReadOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_ReadOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GrpcObject_ReadOperation_Content> _GrpcObject_ReadOperation_ContentByTag = {
    1 : GrpcObject_ReadOperation_Content.fetchObject,
    2 : GrpcObject_ReadOperation_Content.fetchFolder,
    0 : GrpcObject_ReadOperation_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.ReadOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<GrpcObject_FetchObjectOperation>(1, _omitFieldNames ? '' : 'fetchObject', subBuilder: GrpcObject_FetchObjectOperation.create)
    ..aOM<GrpcObject_FetchFolderOperation>(2, _omitFieldNames ? '' : 'fetchFolder', subBuilder: GrpcObject_FetchFolderOperation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_ReadOperation clone() => GrpcObject_ReadOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_ReadOperation copyWith(void Function(GrpcObject_ReadOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_ReadOperation)) as GrpcObject_ReadOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_ReadOperation create() => GrpcObject_ReadOperation._();
  GrpcObject_ReadOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_ReadOperation> createRepeated() => $pb.PbList<GrpcObject_ReadOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_ReadOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_ReadOperation>(create);
  static GrpcObject_ReadOperation? _defaultInstance;

  GrpcObject_ReadOperation_Content whichContent() => _GrpcObject_ReadOperation_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GrpcObject_FetchObjectOperation get fetchObject => $_getN(0);
  @$pb.TagNumber(1)
  set fetchObject(GrpcObject_FetchObjectOperation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFetchObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearFetchObject() => clearField(1);
  @$pb.TagNumber(1)
  GrpcObject_FetchObjectOperation ensureFetchObject() => $_ensure(0);

  @$pb.TagNumber(2)
  GrpcObject_FetchFolderOperation get fetchFolder => $_getN(1);
  @$pb.TagNumber(2)
  set fetchFolder(GrpcObject_FetchFolderOperation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFetchFolder() => $_has(1);
  @$pb.TagNumber(2)
  void clearFetchFolder() => clearField(2);
  @$pb.TagNumber(2)
  GrpcObject_FetchFolderOperation ensureFetchFolder() => $_ensure(1);
}

class GrpcObject_Response extends $pb.GeneratedMessage {
  factory GrpcObject_Response({
    $core.String? id,
    $core.Iterable<GrpcObject_Result>? results,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  GrpcObject_Response._() : super();
  factory GrpcObject_Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pc<GrpcObject_Result>(2, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: GrpcObject_Result.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_Response clone() => GrpcObject_Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_Response copyWith(void Function(GrpcObject_Response) updates) => super.copyWith((message) => updates(message as GrpcObject_Response)) as GrpcObject_Response;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_Response create() => GrpcObject_Response._();
  GrpcObject_Response createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_Response> createRepeated() => $pb.PbList<GrpcObject_Response>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_Response>(create);
  static GrpcObject_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GrpcObject_Result> get results => $_getList(1);
}

class GrpcObject_UpdateObjectOperation extends $pb.GeneratedMessage {
  factory GrpcObject_UpdateObjectOperation({
    $core.String? id,
    $core.String? name,
    $core.String? folder,
    $core.bool? shouldReturnContent,
    $core.String? contentType,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (shouldReturnContent != null) {
      $result.shouldReturnContent = shouldReturnContent;
    }
    if (contentType != null) {
      $result.contentType = contentType;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  GrpcObject_UpdateObjectOperation._() : super();
  factory GrpcObject_UpdateObjectOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_UpdateObjectOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.UpdateObjectOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'folder')
    ..aOB(4, _omitFieldNames ? '' : 'shouldReturnContent')
    ..aOS(5, _omitFieldNames ? '' : 'contentType')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateObjectOperation clone() => GrpcObject_UpdateObjectOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateObjectOperation copyWith(void Function(GrpcObject_UpdateObjectOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_UpdateObjectOperation)) as GrpcObject_UpdateObjectOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateObjectOperation create() => GrpcObject_UpdateObjectOperation._();
  GrpcObject_UpdateObjectOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_UpdateObjectOperation> createRepeated() => $pb.PbList<GrpcObject_UpdateObjectOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateObjectOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_UpdateObjectOperation>(create);
  static GrpcObject_UpdateObjectOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get folder => $_getSZ(2);
  @$pb.TagNumber(3)
  set folder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolder() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shouldReturnContent => $_getBF(3);
  @$pb.TagNumber(4)
  set shouldReturnContent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShouldReturnContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearShouldReturnContent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentType => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get content => $_getN(5);
  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);
}

class GrpcObject_RemoveObjectOperation extends $pb.GeneratedMessage {
  factory GrpcObject_RemoveObjectOperation({
    $core.String? id,
    $core.String? folder,
    $core.String? name,
    $core.bool? shouldReturnContent,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (name != null) {
      $result.name = name;
    }
    if (shouldReturnContent != null) {
      $result.shouldReturnContent = shouldReturnContent;
    }
    return $result;
  }
  GrpcObject_RemoveObjectOperation._() : super();
  factory GrpcObject_RemoveObjectOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_RemoveObjectOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.RemoveObjectOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'folder')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOB(4, _omitFieldNames ? '' : 'shouldReturnContent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveObjectOperation clone() => GrpcObject_RemoveObjectOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveObjectOperation copyWith(void Function(GrpcObject_RemoveObjectOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_RemoveObjectOperation)) as GrpcObject_RemoveObjectOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveObjectOperation create() => GrpcObject_RemoveObjectOperation._();
  GrpcObject_RemoveObjectOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_RemoveObjectOperation> createRepeated() => $pb.PbList<GrpcObject_RemoveObjectOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveObjectOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_RemoveObjectOperation>(create);
  static GrpcObject_RemoveObjectOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get folder => $_getSZ(1);
  @$pb.TagNumber(2)
  set folder($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFolder() => $_has(1);
  @$pb.TagNumber(2)
  void clearFolder() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shouldReturnContent => $_getBF(3);
  @$pb.TagNumber(4)
  set shouldReturnContent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShouldReturnContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearShouldReturnContent() => clearField(4);
}

class GrpcObject_RemoveFolderOperation extends $pb.GeneratedMessage {
  factory GrpcObject_RemoveFolderOperation({
    $core.String? id,
    $core.String? name,
    $core.bool? shouldReturnContent,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (shouldReturnContent != null) {
      $result.shouldReturnContent = shouldReturnContent;
    }
    return $result;
  }
  GrpcObject_RemoveFolderOperation._() : super();
  factory GrpcObject_RemoveFolderOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_RemoveFolderOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.RemoveFolderOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'shouldReturnContent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveFolderOperation clone() => GrpcObject_RemoveFolderOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveFolderOperation copyWith(void Function(GrpcObject_RemoveFolderOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_RemoveFolderOperation)) as GrpcObject_RemoveFolderOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveFolderOperation create() => GrpcObject_RemoveFolderOperation._();
  GrpcObject_RemoveFolderOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_RemoveFolderOperation> createRepeated() => $pb.PbList<GrpcObject_RemoveFolderOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveFolderOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_RemoveFolderOperation>(create);
  static GrpcObject_RemoveFolderOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get shouldReturnContent => $_getBF(2);
  @$pb.TagNumber(3)
  set shouldReturnContent($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShouldReturnContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearShouldReturnContent() => clearField(3);
}

class GrpcObject_FetchObjectOperation extends $pb.GeneratedMessage {
  factory GrpcObject_FetchObjectOperation({
    $core.String? id,
    $core.String? name,
    $core.String? folder,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    return $result;
  }
  GrpcObject_FetchObjectOperation._() : super();
  factory GrpcObject_FetchObjectOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_FetchObjectOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.FetchObjectOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'folder')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchObjectOperation clone() => GrpcObject_FetchObjectOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchObjectOperation copyWith(void Function(GrpcObject_FetchObjectOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_FetchObjectOperation)) as GrpcObject_FetchObjectOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchObjectOperation create() => GrpcObject_FetchObjectOperation._();
  GrpcObject_FetchObjectOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_FetchObjectOperation> createRepeated() => $pb.PbList<GrpcObject_FetchObjectOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchObjectOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_FetchObjectOperation>(create);
  static GrpcObject_FetchObjectOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get folder => $_getSZ(2);
  @$pb.TagNumber(3)
  set folder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolder() => clearField(3);
}

class GrpcObject_FetchFolderOperation extends $pb.GeneratedMessage {
  factory GrpcObject_FetchFolderOperation({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GrpcObject_FetchFolderOperation._() : super();
  factory GrpcObject_FetchFolderOperation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_FetchFolderOperation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.FetchFolderOperation', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchFolderOperation clone() => GrpcObject_FetchFolderOperation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchFolderOperation copyWith(void Function(GrpcObject_FetchFolderOperation) updates) => super.copyWith((message) => updates(message as GrpcObject_FetchFolderOperation)) as GrpcObject_FetchFolderOperation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchFolderOperation create() => GrpcObject_FetchFolderOperation._();
  GrpcObject_FetchFolderOperation createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_FetchFolderOperation> createRepeated() => $pb.PbList<GrpcObject_FetchFolderOperation>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchFolderOperation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_FetchFolderOperation>(create);
  static GrpcObject_FetchFolderOperation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

enum GrpcObject_Result_Content {
  error, 
  fetchObject, 
  fetchFolder, 
  updateObject, 
  removeObject, 
  removeFolder, 
  notSet
}

class GrpcObject_Result extends $pb.GeneratedMessage {
  factory GrpcObject_Result({
    GrpcObject_Error? error,
    GrpcObject_FetchObjectResult? fetchObject,
    GrpcObject_FetchFolderResult? fetchFolder,
    GrpcObject_UpdateObjectResult? updateObject,
    GrpcObject_RemoveObjectResult? removeObject,
    GrpcObject_RemoveFolderResult? removeFolder,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    if (fetchObject != null) {
      $result.fetchObject = fetchObject;
    }
    if (fetchFolder != null) {
      $result.fetchFolder = fetchFolder;
    }
    if (updateObject != null) {
      $result.updateObject = updateObject;
    }
    if (removeObject != null) {
      $result.removeObject = removeObject;
    }
    if (removeFolder != null) {
      $result.removeFolder = removeFolder;
    }
    return $result;
  }
  GrpcObject_Result._() : super();
  factory GrpcObject_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GrpcObject_Result_Content> _GrpcObject_Result_ContentByTag = {
    1 : GrpcObject_Result_Content.error,
    2 : GrpcObject_Result_Content.fetchObject,
    3 : GrpcObject_Result_Content.fetchFolder,
    4 : GrpcObject_Result_Content.updateObject,
    5 : GrpcObject_Result_Content.removeObject,
    6 : GrpcObject_Result_Content.removeFolder,
    0 : GrpcObject_Result_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.Result', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<GrpcObject_Error>(1, _omitFieldNames ? '' : 'error', subBuilder: GrpcObject_Error.create)
    ..aOM<GrpcObject_FetchObjectResult>(2, _omitFieldNames ? '' : 'fetchObject', subBuilder: GrpcObject_FetchObjectResult.create)
    ..aOM<GrpcObject_FetchFolderResult>(3, _omitFieldNames ? '' : 'fetchFolder', subBuilder: GrpcObject_FetchFolderResult.create)
    ..aOM<GrpcObject_UpdateObjectResult>(4, _omitFieldNames ? '' : 'updateObject', subBuilder: GrpcObject_UpdateObjectResult.create)
    ..aOM<GrpcObject_RemoveObjectResult>(5, _omitFieldNames ? '' : 'removeObject', subBuilder: GrpcObject_RemoveObjectResult.create)
    ..aOM<GrpcObject_RemoveFolderResult>(6, _omitFieldNames ? '' : 'removeFolder', subBuilder: GrpcObject_RemoveFolderResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_Result clone() => GrpcObject_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_Result copyWith(void Function(GrpcObject_Result) updates) => super.copyWith((message) => updates(message as GrpcObject_Result)) as GrpcObject_Result;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_Result create() => GrpcObject_Result._();
  GrpcObject_Result createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_Result> createRepeated() => $pb.PbList<GrpcObject_Result>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_Result>(create);
  static GrpcObject_Result? _defaultInstance;

  GrpcObject_Result_Content whichContent() => _GrpcObject_Result_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GrpcObject_Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(GrpcObject_Error v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  GrpcObject_Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  GrpcObject_FetchObjectResult get fetchObject => $_getN(1);
  @$pb.TagNumber(2)
  set fetchObject(GrpcObject_FetchObjectResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFetchObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearFetchObject() => clearField(2);
  @$pb.TagNumber(2)
  GrpcObject_FetchObjectResult ensureFetchObject() => $_ensure(1);

  @$pb.TagNumber(3)
  GrpcObject_FetchFolderResult get fetchFolder => $_getN(2);
  @$pb.TagNumber(3)
  set fetchFolder(GrpcObject_FetchFolderResult v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFetchFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFetchFolder() => clearField(3);
  @$pb.TagNumber(3)
  GrpcObject_FetchFolderResult ensureFetchFolder() => $_ensure(2);

  @$pb.TagNumber(4)
  GrpcObject_UpdateObjectResult get updateObject => $_getN(3);
  @$pb.TagNumber(4)
  set updateObject(GrpcObject_UpdateObjectResult v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpdateObject() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateObject() => clearField(4);
  @$pb.TagNumber(4)
  GrpcObject_UpdateObjectResult ensureUpdateObject() => $_ensure(3);

  @$pb.TagNumber(5)
  GrpcObject_RemoveObjectResult get removeObject => $_getN(4);
  @$pb.TagNumber(5)
  set removeObject(GrpcObject_RemoveObjectResult v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemoveObject() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemoveObject() => clearField(5);
  @$pb.TagNumber(5)
  GrpcObject_RemoveObjectResult ensureRemoveObject() => $_ensure(4);

  @$pb.TagNumber(6)
  GrpcObject_RemoveFolderResult get removeFolder => $_getN(5);
  @$pb.TagNumber(6)
  set removeFolder(GrpcObject_RemoveFolderResult v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoveFolder() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoveFolder() => clearField(6);
  @$pb.TagNumber(6)
  GrpcObject_RemoveFolderResult ensureRemoveFolder() => $_ensure(5);
}

class GrpcObject_Error extends $pb.GeneratedMessage {
  factory GrpcObject_Error({
    $core.String? id,
    $core.String? code,
    $core.String? message,
    $core.Iterable<$core.String>? causes,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    if (causes != null) {
      $result.causes.addAll(causes);
    }
    return $result;
  }
  GrpcObject_Error._() : super();
  factory GrpcObject_Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.Error', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..pPS(4, _omitFieldNames ? '' : 'causes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_Error clone() => GrpcObject_Error()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_Error copyWith(void Function(GrpcObject_Error) updates) => super.copyWith((message) => updates(message as GrpcObject_Error)) as GrpcObject_Error;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_Error create() => GrpcObject_Error._();
  GrpcObject_Error createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_Error> createRepeated() => $pb.PbList<GrpcObject_Error>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_Error>(create);
  static GrpcObject_Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get causes => $_getList(3);
}

class GrpcObject_FetchObjectResult extends $pb.GeneratedMessage {
  factory GrpcObject_FetchObjectResult({
    $core.String? id,
    $core.String? name,
    $core.String? folder,
    $core.String? contentType,
    $core.bool? exists,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (contentType != null) {
      $result.contentType = contentType;
    }
    if (exists != null) {
      $result.exists = exists;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  GrpcObject_FetchObjectResult._() : super();
  factory GrpcObject_FetchObjectResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_FetchObjectResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.FetchObjectResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'folder')
    ..aOS(4, _omitFieldNames ? '' : 'contentType')
    ..aOB(5, _omitFieldNames ? '' : 'exists')
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchObjectResult clone() => GrpcObject_FetchObjectResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchObjectResult copyWith(void Function(GrpcObject_FetchObjectResult) updates) => super.copyWith((message) => updates(message as GrpcObject_FetchObjectResult)) as GrpcObject_FetchObjectResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchObjectResult create() => GrpcObject_FetchObjectResult._();
  GrpcObject_FetchObjectResult createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_FetchObjectResult> createRepeated() => $pb.PbList<GrpcObject_FetchObjectResult>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchObjectResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_FetchObjectResult>(create);
  static GrpcObject_FetchObjectResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get folder => $_getSZ(2);
  @$pb.TagNumber(3)
  set folder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolder() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contentType => $_getSZ(3);
  @$pb.TagNumber(4)
  set contentType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentType() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get exists => $_getBF(4);
  @$pb.TagNumber(5)
  set exists($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExists() => $_has(4);
  @$pb.TagNumber(5)
  void clearExists() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get content => $_getN(5);
  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);
}

class GrpcObject_FetchFolderResult extends $pb.GeneratedMessage {
  factory GrpcObject_FetchFolderResult({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GrpcObject_Item>? items,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  GrpcObject_FetchFolderResult._() : super();
  factory GrpcObject_FetchFolderResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_FetchFolderResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.FetchFolderResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GrpcObject_Item>(4, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GrpcObject_Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchFolderResult clone() => GrpcObject_FetchFolderResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_FetchFolderResult copyWith(void Function(GrpcObject_FetchFolderResult) updates) => super.copyWith((message) => updates(message as GrpcObject_FetchFolderResult)) as GrpcObject_FetchFolderResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchFolderResult create() => GrpcObject_FetchFolderResult._();
  GrpcObject_FetchFolderResult createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_FetchFolderResult> createRepeated() => $pb.PbList<GrpcObject_FetchFolderResult>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_FetchFolderResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_FetchFolderResult>(create);
  static GrpcObject_FetchFolderResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<GrpcObject_Item> get items => $_getList(2);
}

class GrpcObject_Item extends $pb.GeneratedMessage {
  factory GrpcObject_Item({
    $core.String? name,
    $core.String? folder,
    $core.String? contentType,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (contentType != null) {
      $result.contentType = contentType;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  GrpcObject_Item._() : super();
  factory GrpcObject_Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.Item', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'folder')
    ..aOS(3, _omitFieldNames ? '' : 'contentType')
    ..aInt64(4, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(5, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_Item clone() => GrpcObject_Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_Item copyWith(void Function(GrpcObject_Item) updates) => super.copyWith((message) => updates(message as GrpcObject_Item)) as GrpcObject_Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_Item create() => GrpcObject_Item._();
  GrpcObject_Item createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_Item> createRepeated() => $pb.PbList<GrpcObject_Item>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_Item>(create);
  static GrpcObject_Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get folder => $_getSZ(1);
  @$pb.TagNumber(2)
  set folder($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFolder() => $_has(1);
  @$pb.TagNumber(2)
  void clearFolder() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contentType => $_getSZ(2);
  @$pb.TagNumber(3)
  set contentType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContentType() => $_has(2);
  @$pb.TagNumber(3)
  void clearContentType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(4)
  set createdAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get updatedAt => $_getI64(4);
  @$pb.TagNumber(5)
  set updatedAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);
}

class GrpcObject_UpdateObjectResult extends $pb.GeneratedMessage {
  factory GrpcObject_UpdateObjectResult({
    $core.String? id,
    $core.String? name,
    $core.String? folder,
    $core.String? contentType,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (contentType != null) {
      $result.contentType = contentType;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  GrpcObject_UpdateObjectResult._() : super();
  factory GrpcObject_UpdateObjectResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_UpdateObjectResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.UpdateObjectResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'folder')
    ..aOS(4, _omitFieldNames ? '' : 'contentType')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateObjectResult clone() => GrpcObject_UpdateObjectResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_UpdateObjectResult copyWith(void Function(GrpcObject_UpdateObjectResult) updates) => super.copyWith((message) => updates(message as GrpcObject_UpdateObjectResult)) as GrpcObject_UpdateObjectResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateObjectResult create() => GrpcObject_UpdateObjectResult._();
  GrpcObject_UpdateObjectResult createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_UpdateObjectResult> createRepeated() => $pb.PbList<GrpcObject_UpdateObjectResult>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_UpdateObjectResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_UpdateObjectResult>(create);
  static GrpcObject_UpdateObjectResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get folder => $_getSZ(2);
  @$pb.TagNumber(3)
  set folder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolder() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contentType => $_getSZ(3);
  @$pb.TagNumber(4)
  set contentType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get content => $_getN(4);
  @$pb.TagNumber(5)
  set content($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);
}

class GrpcObject_RemoveObjectResult extends $pb.GeneratedMessage {
  factory GrpcObject_RemoveObjectResult({
    $core.String? id,
    $core.String? name,
    $core.String? folder,
    $core.bool? existed,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (folder != null) {
      $result.folder = folder;
    }
    if (existed != null) {
      $result.existed = existed;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  GrpcObject_RemoveObjectResult._() : super();
  factory GrpcObject_RemoveObjectResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_RemoveObjectResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.RemoveObjectResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'folder')
    ..aOB(4, _omitFieldNames ? '' : 'existed')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveObjectResult clone() => GrpcObject_RemoveObjectResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveObjectResult copyWith(void Function(GrpcObject_RemoveObjectResult) updates) => super.copyWith((message) => updates(message as GrpcObject_RemoveObjectResult)) as GrpcObject_RemoveObjectResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveObjectResult create() => GrpcObject_RemoveObjectResult._();
  GrpcObject_RemoveObjectResult createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_RemoveObjectResult> createRepeated() => $pb.PbList<GrpcObject_RemoveObjectResult>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveObjectResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_RemoveObjectResult>(create);
  static GrpcObject_RemoveObjectResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get folder => $_getSZ(2);
  @$pb.TagNumber(3)
  set folder($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFolder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFolder() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get existed => $_getBF(3);
  @$pb.TagNumber(4)
  set existed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExisted() => $_has(3);
  @$pb.TagNumber(4)
  void clearExisted() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get content => $_getN(4);
  @$pb.TagNumber(5)
  set content($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);
}

class GrpcObject_RemoveFolderResult extends $pb.GeneratedMessage {
  factory GrpcObject_RemoveFolderResult({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GrpcObject_Item>? items,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  GrpcObject_RemoveFolderResult._() : super();
  factory GrpcObject_RemoveFolderResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject_RemoveFolderResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject.RemoveFolderResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GrpcObject_Item>(3, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: GrpcObject_Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveFolderResult clone() => GrpcObject_RemoveFolderResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject_RemoveFolderResult copyWith(void Function(GrpcObject_RemoveFolderResult) updates) => super.copyWith((message) => updates(message as GrpcObject_RemoveFolderResult)) as GrpcObject_RemoveFolderResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveFolderResult create() => GrpcObject_RemoveFolderResult._();
  GrpcObject_RemoveFolderResult createEmptyInstance() => create();
  static $pb.PbList<GrpcObject_RemoveFolderResult> createRepeated() => $pb.PbList<GrpcObject_RemoveFolderResult>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject_RemoveFolderResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject_RemoveFolderResult>(create);
  static GrpcObject_RemoveFolderResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<GrpcObject_Item> get items => $_getList(2);
}

class GrpcObject extends $pb.GeneratedMessage {
  factory GrpcObject() => create();
  GrpcObject._() : super();
  factory GrpcObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrpcObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrpcObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrpcObject clone() => GrpcObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrpcObject copyWith(void Function(GrpcObject) updates) => super.copyWith((message) => updates(message as GrpcObject)) as GrpcObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrpcObject create() => GrpcObject._();
  GrpcObject createEmptyInstance() => create();
  static $pb.PbList<GrpcObject> createRepeated() => $pb.PbList<GrpcObject>();
  @$core.pragma('dart2js:noInline')
  static GrpcObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrpcObject>(create);
  static GrpcObject? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
