import 'package:ncut_bbs/ui/ui.dart';

class CreateAnswerPage extends StatefulWidget {
  @override
  _CreateAnswerPageState createState() => _CreateAnswerPageState();
}

class _CreateAnswerPageState extends State<CreateAnswerPage> {
  final contentController = TextEditingController();

  Future submit() async {}

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
