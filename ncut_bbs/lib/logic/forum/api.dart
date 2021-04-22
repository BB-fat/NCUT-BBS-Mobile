import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/common/common.pb.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';

const _baseCGI = "forum";

class CreatePostApi extends ApiPost<CreatePostReply> {
  CreatePostApi(CreatePostRequest request) : super(request, CreatePostReply());

  @override
  String get cgiName => "$_baseCGI/post";
}

class GetPostListApi extends ApiGet<GetPostListReply> {
  GetPostListApi() : super(GetPostListReply());

  @override
  String get cgiName => "$_baseCGI/all";
}

class LikePostApi extends ApiPost<EmptyMessage> {
  LikePostApi(LikePostRequest request) : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/like";
}

class UnLikePostApi extends ApiDelete<EmptyMessage> {
  UnLikePostApi(UnLikePostRequest request) : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/like";
}

class GetOnePostApi extends ApiGet<GetOnePostReply> {
  final int postID;
  GetOnePostApi(this.postID) : super(GetOnePostReply());

  @override
  String get cgiName => "$_baseCGI/post?post_id=$postID";
}
