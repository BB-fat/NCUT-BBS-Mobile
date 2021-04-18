import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/app/config/manager.dart';
import 'package:ncut_bbs/logic/image/image_tool.dart';
import 'package:ncut_bbs/proto/account/account.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final picker = ImagePicker();
  final data = CreateAccountRequest();
  final formKey = GlobalKey<FormState>();
  String sexText = "点击选择性别";
  List<String> sexList = ["男", "女"];
  String collegeText = "点击选择学院";
  String passwordConfirm;

  String avatarPath;

  Future submit() async {
    var form = formKey.currentState;
    if (!form.validate()) {
      return;
    } else if (sexList.indexOf(sexText) == -1) {
      BotToast.showText(text: "请选择性别");
      return;
    } else if (AppConfigManager.config.allColleges.indexOf(collegeText) == -1) {
      BotToast.showText(text: "请选择学院");
      return;
    }
    form.save();
    data.sex = Sex.valueOf(sexList.indexOf(sexText));
    data.college = collegeText;
    if (data.password != passwordConfirm) {
      BotToast.showText(text: "确认密码不一致");
      return;
    }
    BotToast.showLoading();
    var avatar = await ImageTool.instance.uploadImage(avatarPath);
    data.avatar = avatar;
    await AccountManager.instance.createAccount(data);
    BotToast.closeAllLoading();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "注册",
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
          child: Form(
            key: formKey,
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
                          final pickedFile = await ImageTool.instance
                              .pickOneImageFromGallery();
                          setState(() {
                            avatarPath = pickedFile.path;
                          });
                        },
                        child: Text("上传头像")),
                  ],
                ),
                TextFormField(
                  validator: (v) {
                    if (v.length == 0) {
                      return "用户名不能为空";
                    }
                    return null;
                  },
                  onSaved: (v) {
                    data.accountName = v;
                  },
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle), labelText: "用户名"),
                ),
                TextFormField(
                  validator: (v) {
                    if (v.length == 0) {
                      return "密码不能为空";
                    }
                    return null;
                  },
                  onSaved: (v) {
                    data.password = v;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key), labelText: "密码"),
                ),
                TextFormField(
                  validator: (v) {
                    if (v.length == 0) {
                      return "密码确认不能为空";
                    }
                    return null;
                  },
                  onSaved: (v) {
                    passwordConfirm = v;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(Icons.vpn_key), labelText: "密码确认"),
                ),
                TextFormField(
                  validator: (v) {
                    if (v.length == 0) {
                      return "真实姓名不能为空";
                    }
                    return null;
                  },
                  onSaved: (v) {
                    data.realName = v;
                  },
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
                      text: sexText,
                      items: sexList,
                      onConfirm: (index) {
                        setState(() {
                          sexText = sexList[index];
                        });
                      },
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
                      text: collegeText,
                      items: AppConfigManager.config.allColleges,
                      onConfirm: (index) {
                        setState(() {
                          collegeText =
                              AppConfigManager.config.allColleges[index];
                        });
                      },
                    )
                  ],
                ),
                TextFormField(
                  validator: (v) {
                    if (v.length == 0) {
                      return "年级不能为空";
                    }
                    var grade = int.tryParse(v);
                    if (int.tryParse(v) == null) {
                      return "请输入有效数字";
                    } else if (grade > DateTime.now().year) {
                      return "请输入真实的年级信息";
                    }
                    return null;
                  },
                  onSaved: (v) {
                    data.grade = int.parse(v);
                  },
                  decoration:
                      InputDecoration(icon: Icon(Icons.grade), labelText: "年级"),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: submit, child: Text("下一步"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
