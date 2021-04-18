import 'package:ncut_bbs/page/forum/create.dart';
import 'package:ncut_bbs/ui/ui.dart';

class ForumHomePage extends StatefulWidget {
  @override
  _ForumHomePageState createState() => _ForumHomePageState();
}

class _ForumHomePageState extends State<ForumHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                Get.to(() => CreatePostPage());
              },
              child: Icon(Icons.add),
            ))
      ],
    );
  }
}
