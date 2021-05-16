import 'package:get/get.dart';
import 'package:ncut_bbs/logic/qa/manager.dart';

class QAController extends GetxController {
  var questionListData = QAManager.instance.questionList.obs;

  void sync() {
    questionListData.assignAll(QAManager.instance.questionList);
  }
}
