import 'package:ncut_bbs/logic/forum/controller.dart';
import 'package:ncut_bbs/page/forum/cell.dart';
import 'package:ncut_bbs/page/forum/create.dart';
import 'package:ncut_bbs/ui/ui.dart';

class ForumHomePage extends StatefulWidget {
  @override
  _ForumHomePageState createState() => _ForumHomePageState();
}

class _ForumHomePageState extends State<ForumHomePage> {
  final ForumController forumController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => ListView.separated(
              itemBuilder: (context, index) => PostCell(
                    data: forumController.postListData[index],
                  ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: forumController.postListData.length),
        ),
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
