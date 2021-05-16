import 'package:get/get.dart';
import 'package:ncut_bbs/logic/qa/api.dart';
import 'package:ncut_bbs/logic/qa/controller.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';

class QAManager {
  static QAManager _instance;

  static QAManager get instance {
    if (_instance == null) {
      _instance = QAManager._init();
    }
    return _instance;
  }

  QAManager._init();

  List<QuestionData> questionList = [];

  Future syncData() async {}

  QAController _controller;

  void initController() {
    _controller = QAController();
    Get.put(_controller);
    syncData();
  }

  Future<QuestionData> createQuestion(
      {String title, String content, List<String> pictures}) async {
    var res = await CreateQuestionApi(CreateQuestionRequest()
          ..title = title
          ..content = content
          ..pictures = pictures.join(","))
        .start();
    syncData();
    return res.data;
  }
}
