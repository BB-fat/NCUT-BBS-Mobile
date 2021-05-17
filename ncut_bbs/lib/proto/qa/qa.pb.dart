///
//  Generated code. Do not modify.
//  source: qa.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../account/account.pb.dart' as $0;

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

class AddQuestionViewsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddQuestionViewsRequest',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  AddQuestionViewsRequest._() : super();
  factory AddQuestionViewsRequest() => create();
  factory AddQuestionViewsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddQuestionViewsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AddQuestionViewsRequest clone() =>
      AddQuestionViewsRequest()..mergeFromMessage(this);
  AddQuestionViewsRequest copyWith(
          void Function(AddQuestionViewsRequest) updates) =>
      super.copyWith((message) => updates(message as AddQuestionViewsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddQuestionViewsRequest create() => AddQuestionViewsRequest._();
  AddQuestionViewsRequest createEmptyInstance() => create();
  static $pb.PbList<AddQuestionViewsRequest> createRepeated() =>
      $pb.PbList<AddQuestionViewsRequest>();
  @$core.pragma('dart2js:noInline')
  static AddQuestionViewsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddQuestionViewsRequest>(create);
  static AddQuestionViewsRequest _defaultInstance;

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
}

class LikeAnswerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LikeAnswerRequest',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  LikeAnswerRequest._() : super();
  factory LikeAnswerRequest() => create();
  factory LikeAnswerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LikeAnswerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LikeAnswerRequest clone() => LikeAnswerRequest()..mergeFromMessage(this);
  LikeAnswerRequest copyWith(void Function(LikeAnswerRequest) updates) =>
      super.copyWith((message) => updates(message as LikeAnswerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikeAnswerRequest create() => LikeAnswerRequest._();
  LikeAnswerRequest createEmptyInstance() => create();
  static $pb.PbList<LikeAnswerRequest> createRepeated() =>
      $pb.PbList<LikeAnswerRequest>();
  @$core.pragma('dart2js:noInline')
  static LikeAnswerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikeAnswerRequest>(create);
  static LikeAnswerRequest _defaultInstance;

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
}

class UnLikeAnswerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnLikeAnswerRequest',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  UnLikeAnswerRequest._() : super();
  factory UnLikeAnswerRequest() => create();
  factory UnLikeAnswerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnLikeAnswerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UnLikeAnswerRequest clone() => UnLikeAnswerRequest()..mergeFromMessage(this);
  UnLikeAnswerRequest copyWith(void Function(UnLikeAnswerRequest) updates) =>
      super.copyWith((message) => updates(message as UnLikeAnswerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnLikeAnswerRequest create() => UnLikeAnswerRequest._();
  UnLikeAnswerRequest createEmptyInstance() => create();
  static $pb.PbList<UnLikeAnswerRequest> createRepeated() =>
      $pb.PbList<UnLikeAnswerRequest>();
  @$core.pragma('dart2js:noInline')
  static UnLikeAnswerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnLikeAnswerRequest>(create);
  static UnLikeAnswerRequest _defaultInstance;

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
}

class AnswerData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AnswerData',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOM<$0.UserInfo>(2, 'author', subBuilder: $0.UserInfo.create)
    ..a<$core.int>(3, 'questionId', $pb.PbFieldType.O3)
    ..aInt64(4, 'createTime')
    ..aOS(5, 'content')
    ..a<$core.int>(6, 'likes', $pb.PbFieldType.O3)
    ..aOB(7, 'isLike')
    ..hasRequiredFields = false;

  AnswerData._() : super();
  factory AnswerData() => create();
  factory AnswerData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AnswerData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AnswerData clone() => AnswerData()..mergeFromMessage(this);
  AnswerData copyWith(void Function(AnswerData) updates) =>
      super.copyWith((message) => updates(message as AnswerData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswerData create() => AnswerData._();
  AnswerData createEmptyInstance() => create();
  static $pb.PbList<AnswerData> createRepeated() => $pb.PbList<AnswerData>();
  @$core.pragma('dart2js:noInline')
  static AnswerData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnswerData>(create);
  static AnswerData _defaultInstance;

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
  $0.UserInfo get author => $_getN(1);
  @$pb.TagNumber(2)
  set author($0.UserInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => clearField(2);
  @$pb.TagNumber(2)
  $0.UserInfo ensureAuthor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get questionId => $_getIZ(2);
  @$pb.TagNumber(3)
  set questionId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQuestionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuestionId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get createTime => $_getI64(3);
  @$pb.TagNumber(4)
  set createTime($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCreateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get likes => $_getIZ(5);
  @$pb.TagNumber(6)
  set likes($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLikes() => $_has(5);
  @$pb.TagNumber(6)
  void clearLikes() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isLike => $_getBF(6);
  @$pb.TagNumber(7)
  set isLike($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasIsLike() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsLike() => clearField(7);
}

class GetAnswerReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAnswerReply',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..pc<AnswerData>(1, 'data', $pb.PbFieldType.PM,
        subBuilder: AnswerData.create)
    ..hasRequiredFields = false;

  GetAnswerReply._() : super();
  factory GetAnswerReply() => create();
  factory GetAnswerReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAnswerReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetAnswerReply clone() => GetAnswerReply()..mergeFromMessage(this);
  GetAnswerReply copyWith(void Function(GetAnswerReply) updates) =>
      super.copyWith((message) => updates(message as GetAnswerReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAnswerReply create() => GetAnswerReply._();
  GetAnswerReply createEmptyInstance() => create();
  static $pb.PbList<GetAnswerReply> createRepeated() =>
      $pb.PbList<GetAnswerReply>();
  @$core.pragma('dart2js:noInline')
  static GetAnswerReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAnswerReply>(create);
  static GetAnswerReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AnswerData> get data => $_getList(0);
}

class CreateAnswerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateAnswerRequest',
      package: const $pb.PackageName('qa'), createEmptyInstance: create)
    ..a<$core.int>(1, 'questionId', $pb.PbFieldType.O3)
    ..aOS(2, 'content')
    ..hasRequiredFields = false;

  CreateAnswerRequest._() : super();
  factory CreateAnswerRequest() => create();
  factory CreateAnswerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateAnswerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateAnswerRequest clone() => CreateAnswerRequest()..mergeFromMessage(this);
  CreateAnswerRequest copyWith(void Function(CreateAnswerRequest) updates) =>
      super.copyWith((message) => updates(message as CreateAnswerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAnswerRequest create() => CreateAnswerRequest._();
  CreateAnswerRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAnswerRequest> createRepeated() =>
      $pb.PbList<CreateAnswerRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAnswerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAnswerRequest>(create);
  static CreateAnswerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get questionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set questionId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQuestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuestionId() => clearField(1);

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
}
