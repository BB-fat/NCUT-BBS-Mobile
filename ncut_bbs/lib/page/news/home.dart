import 'package:ncut_bbs/logic/news/controller.dart';
import 'package:ncut_bbs/logic/news/manager.dart';
import 'package:ncut_bbs/page/news/cell.dart';
import 'package:ncut_bbs/ui/ui.dart';

class NewsHomePage extends StatefulWidget {
  @override
  _NewsHomePageState createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  final NewsController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => ListView.separated(
            itemBuilder: (context, index) => NewsCell(
                  data: _controller.newsListData[index],
                  onPressed: () => NewsManager.instance
                      .navigateToDetail(_controller.newsListData[index]),
                ),
            separatorBuilder: (context, index) => Divider(
                  height: 1,
                ),
            itemCount: _controller.newsListData.length)),
        Positioned(
            bottom: 30,
            child: SizedBox(
              width: Get.size.width,
              child: Center(
                child: TextButton(
                  child: Text("清空所有消息"),
                  onPressed: () => NewsManager.instance.clearAllNews(),
                ),
              ),
            ))
      ],
    );
  }
}
