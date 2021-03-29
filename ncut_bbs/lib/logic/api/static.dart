import 'dart:convert';

import 'package:ncut_bbs/logic/api/manager.dart';

class ApiStatic {
  final String filePath;
  ApiStatic({this.filePath});

  Future<String> getString() async {
    var res =
        await ApiManager.instance.client.get(Uri.parse("$staticURL/$filePath"));
    return utf8.decode(res.bodyBytes);
  }
}
