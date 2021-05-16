import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/page/qa/detail.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class QuestionCell extends StatelessWidget {
  final QuestionData data;

  double get height =>
      data.content.length > 20 || data.pictures.length > 0 ? 118 : 70;

  QuestionCell(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => QADetailPage(data));
      },
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: height,
        width: Get.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  style: miniTitleTextStyle,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        data.content,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    data.pictures.length > 0
                        ? Expanded(
                            flex: 1,
                            child: CachedNetworkImage(
                              imageUrl: data.pictures[0],
                              fit: BoxFit.fitHeight,
                              height: 70,
                            ))
                        : Container()
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ViewsLabel(
                  views: data.views,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
