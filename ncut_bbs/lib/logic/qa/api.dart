import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';

const _baseCGI = "qa";

class CreateQuestionApi extends ApiPost<CreateQuestionReply> {
  CreateQuestionApi(CreateQuestionRequest request)
      : super(request, CreateQuestionReply());

  @override
  String get cgiName => "$_baseCGI/question";
}
