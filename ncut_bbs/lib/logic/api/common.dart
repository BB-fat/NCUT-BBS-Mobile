import 'dart:convert';

import 'package:ncut_bbs/logic/api/base.dart';
import 'package:ncut_bbs/proto/common/common.pb.dart';
import 'package:protobuf/protobuf.dart';

class ApiGet<Reply extends GeneratedMessage> extends ApiBase<Reply> {
  ApiGet(GeneratedMessage reply) : super(EmptyMessage.create(), reply);

  @override
  Future<Response> doRequest() =>
      client.get(Uri.parse(url), headers: tokenHeader);
}

class ApiPost<Reply extends GeneratedMessage> extends ApiBase<Reply> {
  ApiPost(GeneratedMessage request, GeneratedMessage reply)
      : super(request, reply);

  @override
  Future<Response> doRequest() => client.post(Uri.parse(url),
      body: jsonEncode(request.toProto3Json()), headers: tokenHeader);
}

class ApiDelete<Reply extends GeneratedMessage> extends ApiBase<Reply> {
  ApiDelete(GeneratedMessage request, GeneratedMessage reply)
      : super(request, reply);

  @override
  Future<Response> doRequest() => client.delete(Uri.parse(url),
      body: jsonEncode(request.toProto3Json()), headers: tokenHeader);
}
