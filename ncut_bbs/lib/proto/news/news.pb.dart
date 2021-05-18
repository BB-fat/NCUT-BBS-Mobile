///
//  Generated code. Do not modify.
//  source: news.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'news.pbenum.dart';

export 'news.pbenum.dart';

class NewsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewsData',
      package: const $pb.PackageName('news'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aInt64(3, 'createTime')
    ..e<NewsType>(4, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: NewsType.SYSTEM,
        valueOf: NewsType.valueOf,
        enumValues: NewsType.values)
    ..aOS(5, 'title')
    ..aOS(6, 'content')
    ..aOS(7, 'data')
    ..hasRequiredFields = false;

  NewsData._() : super();
  factory NewsData() => create();
  factory NewsData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewsData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NewsData clone() => NewsData()..mergeFromMessage(this);
  NewsData copyWith(void Function(NewsData) updates) =>
      super.copyWith((message) => updates(message as NewsData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewsData create() => NewsData._();
  NewsData createEmptyInstance() => create();
  static $pb.PbList<NewsData> createRepeated() => $pb.PbList<NewsData>();
  @$core.pragma('dart2js:noInline')
  static NewsData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewsData>(create);
  static NewsData _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createTime => $_getI64(1);
  @$pb.TagNumber(3)
  set createTime($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCreateTime() => $_has(1);
  @$pb.TagNumber(3)
  void clearCreateTime() => clearField(3);

  @$pb.TagNumber(4)
  NewsType get type => $_getN(2);
  @$pb.TagNumber(4)
  set type(NewsType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(5)
  set title($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(6)
  set content($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get data => $_getSZ(5);
  @$pb.TagNumber(7)
  set data($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasData() => $_has(5);
  @$pb.TagNumber(7)
  void clearData() => clearField(7);
}

class GetNewsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetNewsReply',
      package: const $pb.PackageName('news'), createEmptyInstance: create)
    ..pc<NewsData>(1, 'data', $pb.PbFieldType.PM, subBuilder: NewsData.create)
    ..hasRequiredFields = false;

  GetNewsReply._() : super();
  factory GetNewsReply() => create();
  factory GetNewsReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetNewsReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetNewsReply clone() => GetNewsReply()..mergeFromMessage(this);
  GetNewsReply copyWith(void Function(GetNewsReply) updates) =>
      super.copyWith((message) => updates(message as GetNewsReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNewsReply create() => GetNewsReply._();
  GetNewsReply createEmptyInstance() => create();
  static $pb.PbList<GetNewsReply> createRepeated() =>
      $pb.PbList<GetNewsReply>();
  @$core.pragma('dart2js:noInline')
  static GetNewsReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNewsReply>(create);
  static GetNewsReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NewsData> get data => $_getList(0);
}
