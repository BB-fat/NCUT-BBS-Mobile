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

class CreateAnswerApi extends ApiPost<EmptyMessage> {
  CreateAnswerApi(CreateAnswerRequest request) : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/answer";
}

class GetAnswerApi extends ApiGet<GetAnswerReply> {
  final int questionID;

  GetAnswerApi(this.questionID) : super(GetAnswerReply());

  @override
  String get cgiName => "$_baseCGI/answer?question_id=$questionID";
}

class LikeAnswerApi extends ApiPost<EmptyMessage> {
  LikeAnswerApi(LikeAnswerRequest request) : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/like";
}

class UnlikeAnswerApi extends ApiDelete<EmptyMessage> {
  UnlikeAnswerApi(UnLikeAnswerRequest request) : super(request, EmptyMessage());

  @override
  String get cgiName => "$_baseCGI/like";
}
