import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/news/news.pb.dart';

const _baseURL = "news";

class GetNewsListApi extends ApiGet<GetNewsReply> {
  GetNewsListApi() : super(GetNewsReply());

  @override
  String get cgiName => "$_baseURL/list";
}
