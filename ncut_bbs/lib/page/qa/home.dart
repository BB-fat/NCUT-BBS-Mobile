import 'package:ncut_bbs/page/qa/create.dart';
import 'package:ncut_bbs/ui/ui.dart';

class QAHomePage extends StatefulWidget {
  @override
  _QAHomePageState createState() => _QAHomePageState();
}

class _QAHomePageState extends State<QAHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
//        Obx(
//              () => ListView.separated(
//              itemBuilder: (context, index) => PostCell(
//                data: forumController.postListData[index],
//              ),
//              separatorBuilder: (context, index) => Divider(),
//              itemCount: forumController.postListData.length),
//        ),
        Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                Get.to(() => CreateQuestionPage());
              },
              child: Icon(Icons.add),
            ))
      ],
    );
  }
}
