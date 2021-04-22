import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostDetailPage extends StatefulWidget {
  final PostData data;

  PostDetailPage({this.data});

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: widget.data.title,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Column(
            children: [
                  Text(
                    widget.data.title,
                    style: bigTitleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.data.content),
                ] +
                widget.data.pictures
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
                [],
          ),
        ),
      ),
    );
  }
}
