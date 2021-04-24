///
//  Generated code. Do not modify.
//  source: forum.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../account/account.pb.dart' as $0;

class PostData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostData',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'authorId', $pb.PbFieldType.O3)
    ..aInt64(3, 'createTime')
    ..aInt64(4, 'updateTime')
    ..aOS(5, 'title')
    ..a<$core.int>(6, 'views', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'likes', $pb.PbFieldType.O3)
    ..aOS(8, 'content')
    ..pPS(10, 'pictures')
    ..aOB(11, 'isLike')
    ..hasRequiredFields = false;

  PostData._() : super();
  factory PostData() => create();
  factory PostData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PostData clone() => PostData()..mergeFromMessage(this);
  PostData copyWith(void Function(PostData) updates) =>
      super.copyWith((message) => updates(message as PostData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostData create() => PostData._();
  PostData createEmptyInstance() => create();
  static $pb.PbList<PostData> createRepeated() => $pb.PbList<PostData>();
  @$core.pragma('dart2js:noInline')
  static PostData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostData>(create);
  static PostData _defaultInstance;

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

  @$pb.TagNumber(4)
  $fixnum.Int64 get updateTime => $_getI64(3);
  @$pb.TagNumber(4)
  set updateTime($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdateTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get views => $_getIZ(5);
  @$pb.TagNumber(6)
  set views($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasViews() => $_has(5);
  @$pb.TagNumber(6)
  void clearViews() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get likes => $_getIZ(6);
  @$pb.TagNumber(7)
  set likes($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLikes() => $_has(6);
  @$pb.TagNumber(7)
  void clearLikes() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get content => $_getSZ(7);
  @$pb.TagNumber(8)
  set content($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);

  @$pb.TagNumber(10)
  $core.List<$core.String> get pictures => $_getList(8);

  @$pb.TagNumber(11)
  $core.bool get isLike => $_getBF(9);
  @$pb.TagNumber(11)
  set isLike($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasIsLike() => $_has(9);
  @$pb.TagNumber(11)
  void clearIsLike() => clearField(11);
}

class CreatePostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePostRequest',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'content')
    ..aOS(3, 'pictures')
    ..hasRequiredFields = false;

  CreatePostRequest._() : super();
  factory CreatePostRequest() => create();
  factory CreatePostRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePostRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreatePostRequest clone() => CreatePostRequest()..mergeFromMessage(this);
  CreatePostRequest copyWith(void Function(CreatePostRequest) updates) =>
      super.copyWith((message) => updates(message as CreatePostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePostRequest create() => CreatePostRequest._();
  CreatePostRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePostRequest> createRepeated() =>
      $pb.PbList<CreatePostRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePostRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostRequest>(create);
  static CreatePostRequest _defaultInstance;

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

class CreatePostReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePostReply',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..aOM<PostData>(1, 'postData', subBuilder: PostData.create)
    ..hasRequiredFields = false;

  CreatePostReply._() : super();
  factory CreatePostReply() => create();
  factory CreatePostReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePostReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreatePostReply clone() => CreatePostReply()..mergeFromMessage(this);
  CreatePostReply copyWith(void Function(CreatePostReply) updates) =>
      super.copyWith((message) => updates(message as CreatePostReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePostReply create() => CreatePostReply._();
  CreatePostReply createEmptyInstance() => create();
  static $pb.PbList<CreatePostReply> createRepeated() =>
      $pb.PbList<CreatePostReply>();
  @$core.pragma('dart2js:noInline')
  static CreatePostReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostReply>(create);
  static CreatePostReply _defaultInstance;

  @$pb.TagNumber(1)
  PostData get postData => $_getN(0);
  @$pb.TagNumber(1)
  set postData(PostData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostData() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostData() => clearField(1);
  @$pb.TagNumber(1)
  PostData ensurePostData() => $_ensure(0);
}

class GetPostListReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPostListReply',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..pc<PostData>(1, 'data', $pb.PbFieldType.PM, subBuilder: PostData.create)
    ..hasRequiredFields = false;

  GetPostListReply._() : super();
  factory GetPostListReply() => create();
  factory GetPostListReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPostListReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetPostListReply clone() => GetPostListReply()..mergeFromMessage(this);
  GetPostListReply copyWith(void Function(GetPostListReply) updates) =>
      super.copyWith((message) => updates(message as GetPostListReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostListReply create() => GetPostListReply._();
  GetPostListReply createEmptyInstance() => create();
  static $pb.PbList<GetPostListReply> createRepeated() =>
      $pb.PbList<GetPostListReply>();
  @$core.pragma('dart2js:noInline')
  static GetPostListReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPostListReply>(create);
  static GetPostListReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PostData> get data => $_getList(0);
}

class LikePostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LikePostRequest',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  LikePostRequest._() : super();
  factory LikePostRequest() => create();
  factory LikePostRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LikePostRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LikePostRequest clone() => LikePostRequest()..mergeFromMessage(this);
  LikePostRequest copyWith(void Function(LikePostRequest) updates) =>
      super.copyWith((message) => updates(message as LikePostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LikePostRequest create() => LikePostRequest._();
  LikePostRequest createEmptyInstance() => create();
  static $pb.PbList<LikePostRequest> createRepeated() =>
      $pb.PbList<LikePostRequest>();
  @$core.pragma('dart2js:noInline')
  static LikePostRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikePostRequest>(create);
  static LikePostRequest _defaultInstance;

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

class UnLikePostRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnLikePostRequest',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  UnLikePostRequest._() : super();
  factory UnLikePostRequest() => create();
  factory UnLikePostRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnLikePostRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UnLikePostRequest clone() => UnLikePostRequest()..mergeFromMessage(this);
  UnLikePostRequest copyWith(void Function(UnLikePostRequest) updates) =>
      super.copyWith((message) => updates(message as UnLikePostRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnLikePostRequest create() => UnLikePostRequest._();
  UnLikePostRequest createEmptyInstance() => create();
  static $pb.PbList<UnLikePostRequest> createRepeated() =>
      $pb.PbList<UnLikePostRequest>();
  @$core.pragma('dart2js:noInline')
  static UnLikePostRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnLikePostRequest>(create);
  static UnLikePostRequest _defaultInstance;

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

class GetOnePostReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetOnePostReply',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..aOM<PostData>(1, 'data', subBuilder: PostData.create)
    ..hasRequiredFields = false;

  GetOnePostReply._() : super();
  factory GetOnePostReply() => create();
  factory GetOnePostReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetOnePostReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetOnePostReply clone() => GetOnePostReply()..mergeFromMessage(this);
  GetOnePostReply copyWith(void Function(GetOnePostReply) updates) =>
      super.copyWith((message) => updates(message as GetOnePostReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetOnePostReply create() => GetOnePostReply._();
  GetOnePostReply createEmptyInstance() => create();
  static $pb.PbList<GetOnePostReply> createRepeated() =>
      $pb.PbList<GetOnePostReply>();
  @$core.pragma('dart2js:noInline')
  static GetOnePostReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOnePostReply>(create);
  static GetOnePostReply _defaultInstance;

  @$pb.TagNumber(1)
  PostData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(PostData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  PostData ensureData() => $_ensure(0);
}

class AddPostViewsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddPostViewsRequest',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  AddPostViewsRequest._() : super();
  factory AddPostViewsRequest() => create();
  factory AddPostViewsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddPostViewsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AddPostViewsRequest clone() => AddPostViewsRequest()..mergeFromMessage(this);
  AddPostViewsRequest copyWith(void Function(AddPostViewsRequest) updates) =>
      super.copyWith((message) => updates(message as AddPostViewsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddPostViewsRequest create() => AddPostViewsRequest._();
  AddPostViewsRequest createEmptyInstance() => create();
  static $pb.PbList<AddPostViewsRequest> createRepeated() =>
      $pb.PbList<AddPostViewsRequest>();
  @$core.pragma('dart2js:noInline')
  static AddPostViewsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPostViewsRequest>(create);
  static AddPostViewsRequest _defaultInstance;

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

class PostCommentData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostCommentData',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOM<$0.UserInfo>(2, 'author', subBuilder: $0.UserInfo.create)
    ..a<$core.int>(3, 'postId', $pb.PbFieldType.O3)
    ..aInt64(4, 'createTime')
    ..aOS(5, 'content')
    ..hasRequiredFields = false;

  PostCommentData._() : super();
  factory PostCommentData() => create();
  factory PostCommentData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostCommentData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PostCommentData clone() => PostCommentData()..mergeFromMessage(this);
  PostCommentData copyWith(void Function(PostCommentData) updates) =>
      super.copyWith((message) => updates(message as PostCommentData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostCommentData create() => PostCommentData._();
  PostCommentData createEmptyInstance() => create();
  static $pb.PbList<PostCommentData> createRepeated() =>
      $pb.PbList<PostCommentData>();
  @$core.pragma('dart2js:noInline')
  static PostCommentData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostCommentData>(create);
  static PostCommentData _defaultInstance;

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
  $core.int get postId => $_getIZ(2);
  @$pb.TagNumber(3)
  set postId($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPostId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostId() => clearField(3);

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
}

class CreatePostCommentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePostCommentRequest',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..a<$core.int>(1, 'postId', $pb.PbFieldType.O3)
    ..aOS(2, 'content')
    ..hasRequiredFields = false;

  CreatePostCommentRequest._() : super();
  factory CreatePostCommentRequest() => create();
  factory CreatePostCommentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePostCommentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreatePostCommentRequest clone() =>
      CreatePostCommentRequest()..mergeFromMessage(this);
  CreatePostCommentRequest copyWith(
          void Function(CreatePostCommentRequest) updates) =>
      super.copyWith((message) => updates(message as CreatePostCommentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePostCommentRequest create() => CreatePostCommentRequest._();
  CreatePostCommentRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePostCommentRequest> createRepeated() =>
      $pb.PbList<CreatePostCommentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePostCommentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostCommentRequest>(create);
  static CreatePostCommentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get postId => $_getIZ(0);
  @$pb.TagNumber(1)
  set postId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

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

class CreatePostCommentReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreatePostCommentReply',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..aOM<PostCommentData>(1, 'data', subBuilder: PostCommentData.create)
    ..hasRequiredFields = false;

  CreatePostCommentReply._() : super();
  factory CreatePostCommentReply() => create();
  factory CreatePostCommentReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePostCommentReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreatePostCommentReply clone() =>
      CreatePostCommentReply()..mergeFromMessage(this);
  CreatePostCommentReply copyWith(
          void Function(CreatePostCommentReply) updates) =>
      super.copyWith((message) => updates(message as CreatePostCommentReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePostCommentReply create() => CreatePostCommentReply._();
  CreatePostCommentReply createEmptyInstance() => create();
  static $pb.PbList<CreatePostCommentReply> createRepeated() =>
      $pb.PbList<CreatePostCommentReply>();
  @$core.pragma('dart2js:noInline')
  static CreatePostCommentReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostCommentReply>(create);
  static CreatePostCommentReply _defaultInstance;

  @$pb.TagNumber(1)
  PostCommentData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(PostCommentData v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  PostCommentData ensureData() => $_ensure(0);
}

class GetPostCommentReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPostCommentReply',
      package: const $pb.PackageName('forum'), createEmptyInstance: create)
    ..pc<PostCommentData>(1, 'data', $pb.PbFieldType.PM,
        subBuilder: PostCommentData.create)
    ..hasRequiredFields = false;

  GetPostCommentReply._() : super();
  factory GetPostCommentReply() => create();
  factory GetPostCommentReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPostCommentReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetPostCommentReply clone() => GetPostCommentReply()..mergeFromMessage(this);
  GetPostCommentReply copyWith(void Function(GetPostCommentReply) updates) =>
      super.copyWith((message) => updates(message as GetPostCommentReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostCommentReply create() => GetPostCommentReply._();
  GetPostCommentReply createEmptyInstance() => create();
  static $pb.PbList<GetPostCommentReply> createRepeated() =>
      $pb.PbList<GetPostCommentReply>();
  @$core.pragma('dart2js:noInline')
  static GetPostCommentReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPostCommentReply>(create);
  static GetPostCommentReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PostCommentData> get data => $_getList(0);
}
