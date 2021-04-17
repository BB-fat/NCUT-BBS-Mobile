import 'package:flutter/material.dart';
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
    {"icon": Icon(Icons.account_circle), "title": "我的"},
  ];

  int currentIndex = 0;

  void bottomBarIndexChange(int index) {
    if (currentIndex == index) {
//      TODO 刷新
    } else {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: bottomBarItems[currentIndex]["title"],
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
