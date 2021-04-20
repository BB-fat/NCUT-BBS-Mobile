import 'package:ncut_bbs/logic/forum/api.dart';
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

  Future<PostDataFull> createPost(
      {String title, String content, List<String> pictures}) async {
    var res = await CreatePostApi(CreatePostRequest()
          ..title = title
          ..content = content
          ..pictures = pictures.join(","))
        .start();
    return res.postData;
  }
}
