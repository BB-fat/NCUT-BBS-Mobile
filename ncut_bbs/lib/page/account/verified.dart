import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/image/ImageTool.dart';
import 'package:ncut_bbs/ui/ui.dart';
import 'dart:io';

class VerifiedPage extends StatefulWidget {
  @override
  _VerifiedPageState createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {
  final controller = TextEditingController();

  String imagePath;

  Future submit() async {
    if (imagePath == null) {
      BotToast.showText(text: "请上传证明图片");
      return;
    }
    BotToast.showLoading();
    var imageUrl = await ImageTool.instance.uploadImage(imagePath);
    await AccountManager.instance.submitVerify(imageUrl, controller.text);
    BotToast.closeAllLoading();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "实名认证",
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  var img = await ImageTool.instance.pickOneImageFromGallery();
                  setState(() {
                    imagePath = img?.path;
                  });
                },
                child: imagePath == null
                    ? Container(
                        width: Get.size.width,
                        height: 200,
                        color: Colors.grey,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("点击选择可以证明您身份的图片（学生卡、企业微信截图等）"),
                          ),
                        ),
                      )
                    : Image.file(
                        File(imagePath),
                        width: Get.size.width,
                        height: 200,
                      ),
              ),
              TextField(
                controller: controller,
                decoration:
                    InputDecoration(labelText: "备注信息", icon: Icon(Icons.book)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: submit, child: Text("提交"))
            ],
          ),
        ),
      ),
    );
  }
}
