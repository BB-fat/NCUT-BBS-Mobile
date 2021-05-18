import 'dart:convert';

import 'package:get/get.dart';
import 'package:ncut_bbs/logic/hive/helper.dart';
import 'package:ncut_bbs/logic/news/api.dart';
import 'package:ncut_bbs/logic/news/controller.dart';
import 'package:ncut_bbs/page/forum/detail.dart';
import 'package:ncut_bbs/page/qa/detail.dart';
import 'package:ncut_bbs/proto/forum/forum.pb.dart';
import 'package:ncut_bbs/proto/news/news.pb.dart';
import 'package:ncut_bbs/proto/news/news.pbenum.dart';
import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';
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

  final String _kNewsList = "NewsList";

  List<NewsData> get newsList {
    List<String> list =
        HiveHelper.instance.defaultBox.get(_kNewsList, defaultValue: []);
    return list.map<NewsData>((e) => _decodeMessage(e, NewsData())).toList();
  }

  set newsList(List<NewsData> v) => HiveHelper.instance.defaultBox
      .put(_kNewsList, v.map((e) => jsonEncode(e.toProto3Json())).toList());

  NewsController _controller;

  void initController() {
    _controller = NewsController();
    Get.put(_controller);
    syncData();
  }

  Future syncData() async {
    var newData = (await GetNewsListApi().start()).data;
    if (newData.length > 0) {
      newsList += newData;
      _controller.sync();
      var latestData = newData[newData.length - 1];
      BotToast.showNotification(
          title: (cancelFunc) => Text(latestData.title),
          subtitle: (cancelFunc) => Text(latestData.content),
          onTap: () => navigateToDetail(latestData));
    }
    Future.delayed(Duration(seconds: 1), syncData);
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
    newsList = newsList..remove(data);
    _controller.sync();
  }

  void clearAllNews() {
    newsList = [];
    _controller.sync();
  }
}
