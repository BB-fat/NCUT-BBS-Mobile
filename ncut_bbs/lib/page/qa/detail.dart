import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/logic/qa/manager.dart';
import 'package:ncut_bbs/page/qa/create_answer.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class QADetailPage extends StatefulWidget {
  final QuestionData data;

  QADetailPage(this.data);

  @override
  _QADetailPageState createState() => _QADetailPageState();
}

class _QADetailPageState extends State<QADetailPage> {
  QuestionData get questionData => widget.data;

  @override
  void initState() {
    QAManager.instance.addViews(questionData.id);
    super.initState();
  }

  void createAnswer() {
    Get.to(() => CreateAnswerPage());
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "问题详情",
      body: Container(
        height: Get.size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  children: [
                        Text(
                          questionData.title,
                          style: bigTitleTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(questionData.content),
                      ] +
                      questionData.pictures
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
//                          Align(
//                            child: Text(
//                              "全部评论(${commentsData?.length ?? 0})",
//                              style: TextStyle(color: Colors.grey),
//                            ),
//                            alignment: Alignment.centerRight,
//                          ),
                        Divider(),
//                          FutureBuilder(
//                              future: syncComments(),
//                              builder: (context, snapshot) {
//                                if (snapshot.connectionState ==
//                                    ConnectionState.done) {
//                                  return Column(
//                                    children: commentsData
//                                        .map((e) => PostCommentCell(
//                                      data: e,
//                                    ))
//                                        .toList(),
//                                  );
//                                } else {
//                                  return Center(
//                                    child: CircularProgressIndicator(),
//                                  );
//                                }
//                              })
                      ],
                ),
              ),
            ),
            Positioned(
                bottom: 60,
                right: 10,
                child: ElevatedButton(
                  onPressed: createAnswer,
                  child: Row(
                    children: [Icon(Icons.create), Text("添加回答")],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
