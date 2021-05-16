import 'package:ncut_bbs/logic/image/image_tool.dart';
import 'package:ncut_bbs/logic/qa/manager.dart';
import 'package:ncut_bbs/ui/ui.dart';

class CreateQuestionPage extends StatefulWidget {
  @override
  _CreateQuestionPageState createState() => _CreateQuestionPageState();
}

class _CreateQuestionPageState extends State<CreateQuestionPage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  List<String> picturePaths = [];

  double get bottomBarHeight => picturePaths.length == 0 ? 70 : 200;

  Future addPicture() async {
    if (picturePaths.length >= 9) {
      BotToast.showText(text: "最多只能上传9张图片");
      return;
    }
    var img = await ImageTool.instance.pickOneImageFromGallery();
    if (img?.path != null) {
      setState(() {
        picturePaths.add(img.path);
      });
    }
  }

  Future submit() async {
    BotToast.showLoading();
    List<String> urls = [];
    for (var path in picturePaths) {
      urls.add(await ImageTool.instance.uploadImage(path));
    }
    await QAManager.instance.createQuestion(
        title: titleController.text,
        content: contentController.text,
        pictures: urls);
    BotToast.closeAllLoading();
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "问问题",
      body: Container(
        height: Get.size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    TextField(
                      autofocus: true,
                      controller: titleController,
                      style: bigTitleTextStyle,
                      decoration: InputDecoration(labelText: "问题(请以问号结尾)"),
                    ),
                    TextField(
                      controller: contentController,
                      decoration: InputDecoration(
                          labelText: "补充信息(非必填)", border: InputBorder.none),
                      maxLines: null,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, top: 6, right: 20, bottom: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(),
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 3,
                        color: Color(0xffC6C6C6))
                  ]),
                  width: Get.size.width,
                  height: bottomBarHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      picturePaths.length == 0
                          ? Container()
                          : ImageGallery(
                              imagePaths: picturePaths,
                              removeAt: (index) {
                                setState(() {
                                  picturePaths.removeAt(index);
                                });
                              },
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: addPicture,
                              child: Row(
                                children: [
                                  Icon(Icons.photo),
                                  Text("添加图片(${picturePaths.length}/9)")
                                ],
                              )),
                          ElevatedButton(onPressed: submit, child: Text("发布"))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
