import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/page/forum/detail.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostCell extends StatelessWidget {
  double get height =>
      data.content.length > 20 || data.pictures.length > 0 ? 118 : 70;
  final PostData data;

  PostCell({this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PostDetailPage(
              data: data,
            ));
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
                LikesLabel(
                  likes: data.likes,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PostCommentCell extends StatelessWidget {
  final PostCommentData data;

  const PostCommentCell({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: Get.size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    data.author.avatar,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.author.accountName,
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  Text(
                    DateTime.fromMillisecondsSinceEpoch(
                            data.createTime.toInt() * 1000)
                        .toIso8601String(),
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          Container(
            width: Get.size.width,
            padding: EdgeInsets.only(left: 50),
            child: Text(data.content),
          )
        ],
      ),
    );
  }
}
