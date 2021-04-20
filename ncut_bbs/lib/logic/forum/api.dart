import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';

const _baseCGI = "forum";

class CreatePostApi extends ApiPost<CreatePostReply> {
  CreatePostApi(CreatePostRequest request) : super(request, CreatePostReply());

  @override
  String get cgiName => "$_baseCGI/post";
}
