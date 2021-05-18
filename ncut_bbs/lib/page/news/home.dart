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
    return Obx(() => ListView.separated(
        itemBuilder: (context, index) => NewsCell(
              data: _controller.newsListData[index],
              onPressed: () => NewsManager.instance
                  .navigateToDetail(_controller.newsListData[index]),
            ),
        separatorBuilder: (context, index) => Divider(
              height: 1,
            ),
        itemCount: _controller.newsListData.length));
  }
}
