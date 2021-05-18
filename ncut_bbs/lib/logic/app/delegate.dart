import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/app/config/manager.dart';
import 'package:ncut_bbs/logic/forum/manager.dart';
import 'package:ncut_bbs/logic/hive/helper.dart';
import 'package:ncut_bbs/logic/news/manager.dart';
import 'package:ncut_bbs/logic/qa/manager.dart';

class AppDelegate {
  static AppDelegate _instance;
  static AppDelegate get instance {
    if (_instance == null) {
      _instance = AppDelegate._init();
    }
    return _instance;
  }

  AppDelegate._init();

  Future<bool> beforeAppLaunch() async {
    await HiveHelper.instance.initHive();
    return true;
  }

  Future onAppLaunch() async {
    AccountManager.instance.syncUserInfo();
    AppConfigManager.instance.sync();
    ForumManager.instance.initController();
    QAManager.instance.initController();
    NewsManager.instance.initController();
  }
}
