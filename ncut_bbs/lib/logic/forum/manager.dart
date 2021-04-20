import 'package:get/get.dart';
import 'package:ncut_bbs/logic/forum/api.dart';
import 'package:ncut_bbs/logic/forum/controller.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';

class ForumManager {
  static ForumManager _instance;

  static ForumManager get instance {
    if (_instance == null) {
      _instance = ForumManager._init();
    }
    return _instance;
  }

  ForumManager._init();

  void initController() {
    _controller = ForumController();
    Get.put(_controller);
    syncData();
  }

  ForumController _controller;

  Future<PostData> createPost(
      {String title, String content, List<String> pictures}) async {
    var res = await CreatePostApi(CreatePostRequest()
          ..title = title
          ..content = content
          ..pictures = pictures.join(","))
        .start();
    syncData();
    return res.postData;
  }

  List<PostData> postListData = [];

  Future syncData() async {
    postListData = (await GetPostListApi().start()).data;
    _controller.sync();
  }
}
