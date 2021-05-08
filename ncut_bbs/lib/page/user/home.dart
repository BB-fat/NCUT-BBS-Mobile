import 'package:cached_network_image/cached_network_image.dart';
import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/ui/ui.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "image/user_background.jpg",
                width: Get.size.width,
                height: 250,
                fit: BoxFit.fitWidth,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            AccountManager.instance.userInfo.avatar),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      AccountManager.instance.userInfo.accountName,
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              AccountManager.instance.logout();
            },
            child: Text("退出登陆"),
          )
        ],
      ),
    );
  }
}
