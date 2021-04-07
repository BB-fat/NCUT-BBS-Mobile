import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:ncut_bbs/logic/app/config/manager.dart';
import 'package:ncut_bbs/logic/image/ImageTool.dart';
import 'package:ncut_bbs/ui/ui.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final picker = ImagePicker();

  String avatarPath;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "注册",
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage: avatarPath == null
                          ? null
                          : FileImage(File(avatarPath)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final pickedFile =
                            await ImageTool.instance.pickOneImageFromGallery();
                        setState(() {
                          avatarPath = pickedFile.path;
                        });
                      },
                      child: Text("上传头像")),
                ],
              ),
              TextField(
//              controller: accountNameController,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle), labelText: "用户名"),
              ),
              TextField(
//              controller: passwordController,
                obscureText: true,
                decoration:
                    InputDecoration(icon: Icon(Icons.vpn_key), labelText: "密码"),
              ),
              TextField(
//              controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key), labelText: "密码确认"),
              ),
              TextField(
//              controller: accountNameController,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_box), labelText: "真实姓名"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.face,
                    color: Colors.grey,
                  ),
                  SingleItemPickerButton(
                    text: "点击选择性别",
                    items: ["男", "女"],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.school,
                    color: Colors.grey,
                  ),
                  SingleItemPickerButton(
                    text: "点击选择学院",
                    items: AppConfigManager.config.allColleges,
                  )
                ],
              ),
              TextField(
//              controller: accountNameController,
                decoration:
                    InputDecoration(icon: Icon(Icons.grade), labelText: "年级"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {}, child: Text("下一步"))
            ],
          ),
        ),
      ),
    );
  }
}
