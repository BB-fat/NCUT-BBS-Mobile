import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/common/common.pb.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';

const _baseCGI = "qa";

class CreateQuestionApi extends ApiPost<CreateQuestionReply> {
  CreateQuestionApi(CreateQuestionRequest request)
      : super(request, CreateQuestionReply());

  @override
  String get cgiName => "$_baseCGI/question";
}

class GetQuestionListApi extends ApiGet<GetQuestionListReply> {
  GetQuestionListApi() : super(GetQuestionListReply());

  @override
  String get cgiName => "$_baseCGI/all-question";
}

class AddQuestionViewApi extends ApiPost<EmptyMessage> {
  AddQuestionViewApi(AddQuestionViewsRequest request)
      : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/views";
}
