import 'package:get/get.dart';
import 'package:ncut_bbs/logic/forum/manager.dart';

class ForumController extends GetxController {
  var postListData = ForumManager.instance.postListData.obs;

  void sync() {
    postListData.assignAll(ForumManager.instance.postListData);
  }
}
