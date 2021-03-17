///
//  Generated code. Do not modify.
//  source: ncut_bbs_proto/common.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EmptyMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EmptyMessage', package: const $pb.PackageName('common'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyMessage._() : super();
  factory EmptyMessage() => create();
  factory EmptyMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EmptyMessage clone() => EmptyMessage()..mergeFromMessage(this);
  EmptyMessage copyWith(void Function(EmptyMessage) updates) => super.copyWith((message) => updates(message as EmptyMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyMessage create() => EmptyMessage._();
  EmptyMessage createEmptyInstance() => create();
  static $pb.PbList<EmptyMessage> createRepeated() => $pb.PbList<EmptyMessage>();
  @$core.pragma('dart2js:noInline')
  static EmptyMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyMessage>(create);
  static EmptyMessage _defaultInstance;
}

