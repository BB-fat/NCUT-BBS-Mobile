import 'dart:convert';

import 'package:http/http.dart';
import 'package:ncut_bbs/logic/api/manager.dart';
import 'package:protobuf/protobuf.dart';

export 'package:http/http.dart';

class ApiBase<Reply extends GeneratedMessage> {
  ApiBase(this.request, this.reply);

  final GeneratedMessage request;
  final GeneratedMessage reply;

  Client get client => ApiManager.instance.client;

  Map<String, String> get tokenHeader => ApiManager.instance.tokenHeader;

  String get url => "$baseURL/$cgiName";

  String get cgiName => "";

  Future<Reply> start() async {
    var res = await doRequest();
    if (res.statusCode == 401) {
      var success = await ApiManager.instance.refreshToken();
      if (success) {
        res = await doRequest();
      }
    }
    reply.mergeFromProto3Json(jsonDecode(res.body));
    return reply;
  }

  Future<Response> doRequest() => null;
}
