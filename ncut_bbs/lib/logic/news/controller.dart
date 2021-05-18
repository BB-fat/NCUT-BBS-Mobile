import 'package:get/get.dart';
import 'package:ncut_bbs/logic/news/manager.dart';

class NewsController extends GetxController {
  var newsListData = NewsManager.instance.newsList.obs;

  void sync() {
    newsListData.assignAll(NewsManager.instance.newsList);
  }
}
