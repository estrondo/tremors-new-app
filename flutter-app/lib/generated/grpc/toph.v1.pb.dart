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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
