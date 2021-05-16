///
//  Generated code. Do not modify.
//  source: qa.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class QuestionData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuestionData',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'authorId', $pb.PbFieldType.O3)
    ..aInt64(3, 'createTime')
    ..aOS(5, 'title')
    ..a<$core.int>(6, 'views', $pb.PbFieldType.O3)
    ..aOS(8, 'content')
    ..pPS(10, 'pictures')
    ..hasRequiredFields = false;

  QuestionData._() : super();
  factory QuestionData() => create();
  factory QuestionData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QuestionData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QuestionData clone() => QuestionData()..mergeFromMessage(this);
  QuestionData copyWith(void Function(QuestionData) updates) =>
      super.copyWith((message) => updates(message as QuestionData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuestionData create() => QuestionData._();
  QuestionData createEmptyInstance() => create();
  static $pb.PbList<QuestionData> createRepeated() =>
      $pb.PbList<QuestionData>();
  @$core.pragma('dart2js:noInline')
  static QuestionData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuestionData>(create);
  static QuestionData _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.int get authorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set authorId($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAuthorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthorId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createTime => $_getI64(2);
  @$pb.TagNumber(3)
  set createTime($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCreateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateTime() => clearField(3);

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
  $core.int get views => $_getIZ(4);
  @$pb.TagNumber(6)
  set views($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasViews() => $_has(4);
  @$pb.TagNumber(6)
  void clearViews() => clearField(6);

  @$pb.TagNumber(8)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(8)
  set content($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);

  @$pb.TagNumber(10)
  $core.List<$core.String> get pictures => $_getList(6);
}

class CreateQuestionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateQuestionRequest',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'content')
    ..aOS(3, 'pictures')
    ..hasRequiredFields = false;

  CreateQuestionRequest._() : super();
  factory CreateQuestionRequest() => create();
  factory CreateQuestionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateQuestionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateQuestionRequest clone() =>
      CreateQuestionRequest()..mergeFromMessage(this);
  CreateQuestionRequest copyWith(
          void Function(CreateQuestionRequest) updates) =>
      super.copyWith((message) => updates(message as CreateQuestionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateQuestionRequest create() => CreateQuestionRequest._();
  CreateQuestionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateQuestionRequest> createRepeated() =>
      $pb.PbList<CreateQuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateQuestionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateQuestionRequest>(create);
  static CreateQuestionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pictures => $_getSZ(2);
  @$pb.TagNumber(3)
  set pictures($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPictures() => $_has(2);
  @$pb.TagNumber(3)
  void clearPictures() => clearField(3);
}

class CreateQuestionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateQuestionReply',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..aOM<QuestionData>(1, 'data', subBuilder: QuestionData.create)
    ..hasRequiredFields = false;

  CreateQuestionReply._() : super();
  factory CreateQuestionReply() => create();
  factory CreateQuestionReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateQuestionReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateQuestionReply clone() => CreateQuestionReply()..mergeFromMessage(this);
  CreateQuestionReply copyWith(void Function(CreateQuestionReply) updates) =>
      super.copyWith((message) => updates(message as CreateQuestionReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateQuestionReply create() => CreateQuestionReply._();
  CreateQuestionReply createEmptyInstance() => create();
  static $pb.PbList<CreateQuestionReply> createRepeated() =>
      $pb.PbList<CreateQuestionReply>();
  @$core.pragma('dart2js:noInline')
  static CreateQuestionReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateQuestionReply>(create);
  static CreateQuestionReply _defaultInstance;

  @$pb.TagNumber(1)
  QuestionData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(QuestionData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  QuestionData ensureData() => $_ensure(0);
}

class GetQuestionListReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetQuestionListReply',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..pc<QuestionData>(1, 'data', $pb.PbFieldType.PM,
        subBuilder: QuestionData.create)
    ..hasRequiredFields = false;

  GetQuestionListReply._() : super();
  factory GetQuestionListReply() => create();
  factory GetQuestionListReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetQuestionListReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetQuestionListReply clone() =>
      GetQuestionListReply()..mergeFromMessage(this);
  GetQuestionListReply copyWith(void Function(GetQuestionListReply) updates) =>
      super.copyWith((message) => updates(message as GetQuestionListReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQuestionListReply create() => GetQuestionListReply._();
  GetQuestionListReply createEmptyInstance() => create();
  static $pb.PbList<GetQuestionListReply> createRepeated() =>
      $pb.PbList<GetQuestionListReply>();
  @$core.pragma('dart2js:noInline')
  static GetQuestionListReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetQuestionListReply>(create);
  static GetQuestionListReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QuestionData> get data => $_getList(0);
}
