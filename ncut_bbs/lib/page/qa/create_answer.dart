import 'package:ncut_bbs/logic/qa/manager.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class CreateAnswerPage extends StatefulWidget {
  final QuestionData data;
  CreateAnswerPage(this.data);
  @override
  _CreateAnswerPageState createState() => _CreateAnswerPageState();
}

class _CreateAnswerPageState extends State<CreateAnswerPage> {
  final contentController = TextEditingController();

  Future submit() async {
    if (contentController.text.length == 0) {
      BotToast.showText(text: "内容不能为空");
      return;
    }
    await QAManager.instance
        .createAnswer(widget.data.id, contentController.text);
    BotToast.showText(text: "评论成功");
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "回答问题",
      body: Container(
        height: Get.size.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                TextField(
                  controller: contentController,
                  decoration: InputDecoration(
                      labelText: "您的答案", border: InputBorder.none),
                  maxLines: null,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: submit,
      ),
    );
  }
}
