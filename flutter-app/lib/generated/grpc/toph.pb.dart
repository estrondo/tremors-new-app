//
//  Generated code. Do not modify.
//  source: toph.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GRPCAccount extends $pb.GeneratedMessage {
  factory GRPCAccount({
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
  GRPCAccount._() : super();
  factory GRPCAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRPCAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GRPCAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRPCAccount clone() => GRPCAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRPCAccount copyWith(void Function(GRPCAccount) updates) => super.copyWith((message) => updates(message as GRPCAccount)) as GRPCAccount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GRPCAccount create() => GRPCAccount._();
  GRPCAccount createEmptyInstance() => create();
  static $pb.PbList<GRPCAccount> createRepeated() => $pb.PbList<GRPCAccount>();
  @$core.pragma('dart2js:noInline')
  static GRPCAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRPCAccount>(create);
  static GRPCAccount? _defaultInstance;

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

class GRPCUpdateAccount extends $pb.GeneratedMessage {
  factory GRPCUpdateAccount({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GRPCUpdateAccount._() : super();
  factory GRPCUpdateAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRPCUpdateAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GRPCUpdateAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRPCUpdateAccount clone() => GRPCUpdateAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRPCUpdateAccount copyWith(void Function(GRPCUpdateAccount) updates) => super.copyWith((message) => updates(message as GRPCUpdateAccount)) as GRPCUpdateAccount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GRPCUpdateAccount create() => GRPCUpdateAccount._();
  GRPCUpdateAccount createEmptyInstance() => create();
  static $pb.PbList<GRPCUpdateAccount> createRepeated() => $pb.PbList<GRPCUpdateAccount>();
  @$core.pragma('dart2js:noInline')
  static GRPCUpdateAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRPCUpdateAccount>(create);
  static GRPCUpdateAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum GRPCAuthorisationRequest_SealedValue {
  openid, 
  notSet
}

class GRPCAuthorisationRequest extends $pb.GeneratedMessage {
  factory GRPCAuthorisationRequest({
    GRPCOpenIdTokenAuthorisationRequest? openid,
  }) {
    final $result = create();
    if (openid != null) {
      $result.openid = openid;
    }
    return $result;
  }
  GRPCAuthorisationRequest._() : super();
  factory GRPCAuthorisationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRPCAuthorisationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GRPCAuthorisationRequest_SealedValue> _GRPCAuthorisationRequest_SealedValueByTag = {
    1 : GRPCAuthorisationRequest_SealedValue.openid,
    0 : GRPCAuthorisationRequest_SealedValue.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GRPCAuthorisationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<GRPCOpenIdTokenAuthorisationRequest>(1, _omitFieldNames ? '' : 'openid', subBuilder: GRPCOpenIdTokenAuthorisationRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRPCAuthorisationRequest clone() => GRPCAuthorisationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRPCAuthorisationRequest copyWith(void Function(GRPCAuthorisationRequest) updates) => super.copyWith((message) => updates(message as GRPCAuthorisationRequest)) as GRPCAuthorisationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GRPCAuthorisationRequest create() => GRPCAuthorisationRequest._();
  GRPCAuthorisationRequest createEmptyInstance() => create();
  static $pb.PbList<GRPCAuthorisationRequest> createRepeated() => $pb.PbList<GRPCAuthorisationRequest>();
  @$core.pragma('dart2js:noInline')
  static GRPCAuthorisationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRPCAuthorisationRequest>(create);
  static GRPCAuthorisationRequest? _defaultInstance;

  GRPCAuthorisationRequest_SealedValue whichSealedValue() => _GRPCAuthorisationRequest_SealedValueByTag[$_whichOneof(0)]!;
  void clearSealedValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GRPCOpenIdTokenAuthorisationRequest get openid => $_getN(0);
  @$pb.TagNumber(1)
  set openid(GRPCOpenIdTokenAuthorisationRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpenid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenid() => clearField(1);
  @$pb.TagNumber(1)
  GRPCOpenIdTokenAuthorisationRequest ensureOpenid() => $_ensure(0);
}

class GRPCOpenIdTokenAuthorisationRequest extends $pb.GeneratedMessage {
  factory GRPCOpenIdTokenAuthorisationRequest({
    $core.String? version,
    $core.String? provider,
    $core.String? token,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GRPCOpenIdTokenAuthorisationRequest._() : super();
  factory GRPCOpenIdTokenAuthorisationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRPCOpenIdTokenAuthorisationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GRPCOpenIdTokenAuthorisationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'provider')
    ..aOS(3, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRPCOpenIdTokenAuthorisationRequest clone() => GRPCOpenIdTokenAuthorisationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRPCOpenIdTokenAuthorisationRequest copyWith(void Function(GRPCOpenIdTokenAuthorisationRequest) updates) => super.copyWith((message) => updates(message as GRPCOpenIdTokenAuthorisationRequest)) as GRPCOpenIdTokenAuthorisationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GRPCOpenIdTokenAuthorisationRequest create() => GRPCOpenIdTokenAuthorisationRequest._();
  GRPCOpenIdTokenAuthorisationRequest createEmptyInstance() => create();
  static $pb.PbList<GRPCOpenIdTokenAuthorisationRequest> createRepeated() => $pb.PbList<GRPCOpenIdTokenAuthorisationRequest>();
  @$core.pragma('dart2js:noInline')
  static GRPCOpenIdTokenAuthorisationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRPCOpenIdTokenAuthorisationRequest>(create);
  static GRPCOpenIdTokenAuthorisationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class GRPCAuthorisationResponse extends $pb.GeneratedMessage {
  factory GRPCAuthorisationResponse({
    $core.String? version,
    $core.List<$core.int>? token,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  GRPCAuthorisationResponse._() : super();
  factory GRPCAuthorisationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GRPCAuthorisationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GRPCAuthorisationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'toph'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'token', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GRPCAuthorisationResponse clone() => GRPCAuthorisationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GRPCAuthorisationResponse copyWith(void Function(GRPCAuthorisationResponse) updates) => super.copyWith((message) => updates(message as GRPCAuthorisationResponse)) as GRPCAuthorisationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GRPCAuthorisationResponse create() => GRPCAuthorisationResponse._();
  GRPCAuthorisationResponse createEmptyInstance() => create();
  static $pb.PbList<GRPCAuthorisationResponse> createRepeated() => $pb.PbList<GRPCAuthorisationResponse>();
  @$core.pragma('dart2js:noInline')
  static GRPCAuthorisationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GRPCAuthorisationResponse>(create);
  static GRPCAuthorisationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get token => $_getN(1);
  @$pb.TagNumber(2)
  set token($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
