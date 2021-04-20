import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostDetailPage extends StatefulWidget {
  final PostData postData;

  PostDetailPage({this.postData});

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: widget.postData.title,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Column(
            children: [
                  Text(
                    widget.postData.title,
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.postData.content),
                ] +
                widget.postData.pictures
                    .map((e) => Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: ImagePreviewer(
                            tag: e,
                            image: Image.network(
                              e,
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
