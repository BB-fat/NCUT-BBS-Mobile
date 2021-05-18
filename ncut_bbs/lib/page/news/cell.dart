import 'package:ncut_bbs/proto/news/news.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class NewsCell extends StatelessWidget {
  final NewsData data;
  final Function onPressed;

  NewsCell({this.data, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.black12,
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: Get.size.width,
        child: Column(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
