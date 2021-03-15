import 'dart:convert';

import 'package:ncut_bbs/logic/hive/helper.dart';
import 'package:http/http.dart' as http;
import 'package:ncut_bbs/proto/session/session.pb.dart';

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

  set _token(String v) => HiveHelper.instance.defaultBox.put(_kToken, v);

  String get baseURL => "http://localhost:8080/v1";

  Future refreshToken() async {
    var res = await client
        .get(Uri.parse("$baseURL/refresh-token"), headers: {"token": token});
    if (res.statusCode == 401) {
      print("认证失败");
      print("显示登陆页面");
    } else {
      print(res.body);
      var data = RefreshTokenReply.create()..mergeFromProto3Json(jsonDecode(res.body));
      if (data.success) {
        print("刷新成功，新token：${data.token}");
        _token = data.token;
      } else {
        print("显示登陆页面");
      }
    }
  }
}