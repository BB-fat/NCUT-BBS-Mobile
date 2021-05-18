import 'dart:convert';

import 'package:get/get.dart';
import 'package:ncut_bbs/logic/news/api.dart';
import 'package:ncut_bbs/logic/news/controller.dart';
import 'package:ncut_bbs/page/forum/detail.dart';
import 'package:ncut_bbs/page/qa/detail.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/proto/news/news.pb.dart';
import 'package:ncut_bbs/proto/news/news.pbenum.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:protobuf/protobuf.dart';

class NewsManager {
  static NewsManager _instance;

  static NewsManager get instance {
    if (_instance == null) {
      _instance = NewsManager._init();
    }
    return _instance;
  }

  NewsManager._init();

  List<NewsData> newsList = [];

  NewsController _controller;

  void initController() {
    _controller = NewsController();
    Get.put(_controller);
    syncData();
  }

  Future syncData() async {
    newsList = (await GetNewsListApi().start()).data;
    _controller.sync();
  }

  GeneratedMessage _decodeMessage(String data, GeneratedMessage m) =>
      m..mergeFromProto3Json(jsonDecode(data));

  Future navigateToDetail(NewsData data) async {
    switch (data.type) {
      case NewsType.FORUM:
        await Get.to(
            () => PostDetailPage(data: _decodeMessage(data.data, PostData())));
        break;
      case NewsType.QA:
        await Get.to(
            () => QADetailPage(_decodeMessage(data.data, QuestionData())));
        break;
    }
    syncData();
  }
}
