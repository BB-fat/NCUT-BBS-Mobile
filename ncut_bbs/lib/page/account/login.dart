import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/page/account/register.dart';
import 'package:ncut_bbs/page/home/home.dart';
import 'package:ncut_bbs/ui/ui.dart';

class LoginPage extends StatefulWidget {
  final bool isHome;

  LoginPage({this.isHome = true});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController accountNameController;
  TextEditingController passwordController;

  @override
  void initState() {
    accountNameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  Future login() async {
    BotToast.showLoading();
    var res = await AccountManager.instance
        .login(accountNameController.text, passwordController.text);
    BotToast.closeAllLoading();
    if (res.success) {
      if (widget.isHome) {
        Get.offAll(() => HomePage());
      } else {
        Get.back();
      }
    } else {
      BotToast.showText(text: res.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "登陆",
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 70),
        child: Column(
          children: [
            TextField(
              controller: accountNameController,
              decoration: InputDecoration(
                  icon: Icon(Icons.account_circle), labelText: "用户名"),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration:
                  InputDecoration(icon: Icon(Icons.vpn_key), labelText: "密码"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: login, child: Text("登陆")),
            TextButton(
                onPressed: () {
                  Get.to(() => RegisterPage());
                },
                child: Text("新用户注册"))
          ],
        ),
      ),
    );
  }
}
