import 'dart:convert';

import 'package:ncut_bbs/logic/api/static.dart';
import 'package:ncut_bbs/logic/app/config/model.dart';
import 'package:ncut_bbs/logic/hive/helper.dart';

class AppConfigManager {
  static AppConfigManager _instance;

  static AppConfigManager get instance {
    if (_instance == null) {
      _instance = AppConfigManager._init();
    }
    return _instance;
  }

  AppConfigManager._init();

  String get _kAppConfig => "AppConfig";

  AppConfig get appConfig => AppConfig.fromJson(
      jsonDecode(HiveHelper.instance.defaultBox.get(_kAppConfig)));

  static AppConfig get config => AppConfigManager.instance.appConfig;

  Future sync() async {
    var res = await ApiStatic(filePath: "config.json").getString();
    var config = AppConfig.fromJson(jsonDecode(res));
    HiveHelper.instance.defaultBox
        .put(_kAppConfig, jsonEncode(config.toJson()));
  }
}
