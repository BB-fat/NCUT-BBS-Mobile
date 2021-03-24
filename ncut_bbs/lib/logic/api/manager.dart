import 'dart:convert';

import 'package:get/get.dart';
import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/hive/helper.dart';
import 'package:http/http.dart' as http;
import 'package:ncut_bbs/page/account/login.dart';
import 'package:ncut_bbs/proto/session/session.pb.dart';

const baseURL = "http://localhost:8080/v1";

class ApiManager {
  static ApiManager _instance;
  static ApiManager get instance {
    if (_instance == null) {
      _instance = ApiManager._init();
    }
    return _instance;
  }

  ApiManager._init() {
    client = http.Client();
  }

  http.Client client;

  String get _kToken => "token";

  String get token => HiveHelper.instance.defaultBox.get(_kToken);

  Map<String, String> get tokenHeader => {_kToken: token};

  set _token(String v) => HiveHelper.instance.defaultBox.put(_kToken, v);

  Future<bool> refreshToken() async {
    var res = await client.get(Uri.parse("$baseURL/refresh-token"),
        headers: tokenHeader);
    if (res.statusCode == 401) {
      AccountManager.instance.logout(info: "登陆过期，请重新登陆。");
      return false;
    } else {
      var data = RefreshTokenReply.create()
        ..mergeFromProto3Json(jsonDecode(res.body));
      if (data.success) {
        print("刷新成功，新token：${data.token}");
        _token = data.token;
        return true;
      } else {
        AccountManager.instance.logout();
        return false;
      }
    }
  }
}
