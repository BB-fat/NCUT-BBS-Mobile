import 'package:flutter/material.dart';
import 'package:ncut_bbs/logic/forum/manager.dart';
import 'package:ncut_bbs/page/forum/home.dart';
import 'package:ncut_bbs/page/qa/home.dart';
import 'package:ncut_bbs/page/user/home.dart';
import 'package:ncut_bbs/ui/ui.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bottomBarItems = [
    {"icon": Icon(Icons.question_answer), "title": "论坛"},
    {"icon": Icon(Icons.home), "title": "问答"},
    {"icon": Icon(Icons.account_circle), "title": "我"},
  ];

  int currentIndex = 0;

  bool loading = false;

  String get title => loading
      ? "${bottomBarItems[currentIndex]["title"]}(加载中)"
      : bottomBarItems[currentIndex]["title"];

  Future bottomBarIndexChange(int index) async {
    if (currentIndex == index) {
      setState(() {
        loading = true;
      });
      switch (index) {
        case 0:
          await ForumManager.instance.syncData();
          break;
      }
      setState(() {
        loading = false;
      });
    } else {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: title,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => bottomBarIndexChange(i),
        items: bottomBarItems
            .map((e) =>
                BottomNavigationBarItem(icon: e["icon"], label: e["title"]))
            .toList(),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [ForumHomePage(), QAHomePage(), UserHomePage()],
      ),
    );
  }
}
