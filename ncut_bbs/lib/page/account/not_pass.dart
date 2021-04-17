import 'package:ncut_bbs/page/account/verified.dart';
import 'package:ncut_bbs/ui/ui.dart';

class NotPassPage extends StatefulWidget {
  @override
  _NotPassPageState createState() => _NotPassPageState();
}

class _NotPassPageState extends State<NotPassPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "实名认证",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("审核未通过"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => VerifiedPage());
                },
                child: Text("重新提交"))
          ],
        ),
      ),
    );
  }
}
