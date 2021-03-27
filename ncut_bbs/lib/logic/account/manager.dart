import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ncut_bbs/logic/account/api.dart';
import 'package:ncut_bbs/logic/api/manager.dart';
import 'package:ncut_bbs/logic/hive/helper.dart';
import 'package:ncut_bbs/page/account/login.dart';
import 'package:ncut_bbs/page/home/home.dart';
import 'package:ncut_bbs/proto/account/account.pb.dart';

class AccountManager {
  static AccountManager _instance;

  static AccountManager get instance {
    if (_instance == null) {
      _instance = AccountManager._init();
    }
    return _instance;
  }

  AccountManager._init();

  String get _kUserInfo => "UserInfo";

  UserInfo get userInfo {
    if (HiveHelper.instance.defaultBox.get(_kUserInfo) == null) {
      return null;
    }
    return UserInfo.fromJson(HiveHelper.instance.defaultBox.get(_kUserInfo));
  }

  set _userInfo(UserInfo v) =>
      HiveHelper.instance.defaultBox.put(_kUserInfo, v?.writeToJson());

  Future syncUserInfo() async {
    var res = await GetUserInfoApi().start();
    if (res != null) {
      _userInfo = res.userInfo;
    }
  }

  Widget get homePage {
    if (userInfo == null) {
      return LoginPage(
        isHome: true,
      );
    } else if (userInfo.accountStatus == AccountStatus.ACTIVE) {
      return HomePage();
    } else {
      return HomePage();
    }
  }

  Future<LoginReply> login(String accountName, String password) async {
    var res = await LoginByPasswordApi(LoginRequest.create()
          ..accountName = accountName
          ..password = password)
        .start();
    if (res.success) {
      ApiManager.instance.token = res.token;
      await syncUserInfo();
    }
    return res;
  }

  void logout({String info}) {
    if (info != null && info.length > 0) {
      BotToast.showText(text: info);
    }
    _userInfo = null;
    ApiManager.instance.token = null;
    Get.off(() => LoginPage(isHome: true));
  }
}
