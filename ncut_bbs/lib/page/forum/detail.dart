import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostDetailPage extends StatefulWidget {
  final PostDataFull postData;

  PostDetailPage({this.postData});

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: widget.postData.title,
      body: Container(),
    );
  }
}
