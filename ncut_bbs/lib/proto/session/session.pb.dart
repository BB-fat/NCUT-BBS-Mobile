///
//  Generated code. Do not modify.
//  source: ncut_bbs_proto/session.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RefreshTokenReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RefreshTokenReply', package: const $pb.PackageName('session'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  RefreshTokenReply._() : super();
  factory RefreshTokenReply() => create();
  factory RefreshTokenReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RefreshTokenReply clone() => RefreshTokenReply()..mergeFromMessage(this);
  RefreshTokenReply copyWith(void Function(RefreshTokenReply) updates) => super.copyWith((message) => updates(message as RefreshTokenReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenReply create() => RefreshTokenReply._();
  RefreshTokenReply createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenReply> createRepeated() => $pb.PbList<RefreshTokenReply>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshTokenReply>(create);
  static RefreshTokenReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

