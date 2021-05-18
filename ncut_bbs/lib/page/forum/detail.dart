import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/logic/forum/manager.dart';
import 'package:ncut_bbs/page/forum/cell.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostDetailPage extends StatefulWidget {
  final PostData data;

  PostDetailPage({this.data});

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  PostData postData;
  List<PostCommentData> commentsData;

  final commitController = TextEditingController();

  initState() {
    postData = widget.data;
    ForumManager.instance.addViews(postData.id);
    super.initState();
  }

  Future pressLike() async {
    if (postData.isLike) {
      await ForumManager.instance.unLike(postData.id);
    } else {
      await ForumManager.instance.like(postData.id);
    }
    sync();
  }

  Future sync() async {
    postData = await ForumManager.instance.getOne(postData.id);
    setState(() {});
  }

  Future syncComments({refresh = false}) async {
    if (!refresh && commentsData != null) {
      return;
    }
    commentsData = await ForumManager.instance.getComments(postData.id);
  }

  Future pressSendCommit() async {
    var res = await ForumManager.instance
        .createPostCommit(postData.id, commitController.text);
    setState(() {
      commentsData.insert(0, res);
    });
    commitController.clear();
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: postData.title,
      body: Container(
        height: Get.size.height,
        child: Column(
          children: [
            SizedBox(
              height: Get.size.height * 0.75,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Column(
                    children: [
                          Text(
                            postData.title,
                            style: bigTitleTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(postData.content),
                        ] +
                        postData.pictures
                            .map((e) => Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: ImagePreviewer(
                                    tag: e,
                                    image: CachedNetworkImage(
                                      imageUrl: e,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ))
                            .toList() +
                        [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: pressLike,
                                  child: Text(
                                      "${postData.isLike ? "已赞" : "赞"}(${postData.likes})"))
                            ],
                          ),
                          Align(
                            child: Text(
                              "全部评论",
                              style: TextStyle(color: Colors.grey),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                          Divider(),
                          FutureBuilder(
                              future: syncComments(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return Column(
                                    children: commentsData
                                        .map((e) => PostCommentCell(
                                              data: e,
                                            ))
                                        .toList(),
                                  );
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              })
                        ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: Get.size.width,
              height: 86,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      controller: commitController,
                      decoration: InputDecoration(
                          labelText: "友善发言", border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: pressSendCommit,
                        child: Text("发送"),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
