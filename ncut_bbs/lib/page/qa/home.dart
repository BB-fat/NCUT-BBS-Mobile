import 'package:ncut_bbs/logic/qa/controller.dart';
import 'package:ncut_bbs/page/qa/cell.dart';
import 'package:ncut_bbs/page/qa/create.dart';
import 'package:ncut_bbs/ui/ui.dart';

class QAHomePage extends StatefulWidget {
  @override
  _QAHomePageState createState() => _QAHomePageState();
}

class _QAHomePageState extends State<QAHomePage> {
  final QAController qaController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(
          () => ListView.separated(
              itemBuilder: (context, index) =>
                  QuestionCell(qaController.questionListData[index]),
              separatorBuilder: (context, index) => Divider(),
              itemCount: qaController.questionListData.length),
        ),
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
