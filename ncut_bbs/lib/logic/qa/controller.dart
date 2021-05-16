import 'package:get/get.dart';
import 'package:ncut_bbs/logic/qa/manager.dart';

class QAController extends GetxController {
  var postListData = QAManager.instance.questionList.obs;

  void sync() {
    postListData.assignAll(QAManager.instance.questionList);
  }
}
