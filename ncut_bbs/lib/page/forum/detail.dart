import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/logic/forum/manager.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class PostDetailPage extends StatefulWidget {
  final PostData data;

  PostDetailPage({this.data});

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  PostData data;

  initState() {
    data = widget.data;
    super.initState();
  }

  Future pressLike() async {
    if (data.isLike) {
      await ForumManager.instance.unLike(data.id);
    } else {
      await ForumManager.instance.like(data.id);
    }
    sync();
  }

  Future sync() async {
    data = await ForumManager.instance.getOne(data.id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: data.title,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Column(
            children: [
                  Text(
                    data.title,
                    style: bigTitleTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(data.content),
                ] +
                data.pictures
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
                              "${data.isLike ? "已赞" : "赞"}(${data.likes})"))
                    ],
                  )
                ],
          ),
        ),
      ),
    );
  }
}
