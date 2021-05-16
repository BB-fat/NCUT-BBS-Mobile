import 'package:ncut_bbs/proto/qa/qa.pb.dart';
import 'package:ncut_bbs/ui/ui.dart';

class QADetailPage extends StatefulWidget {
  final QuestionData data;

  QADetailPage(this.data);

  @override
  _QADetailPageState createState() => _QADetailPageState();
}

class _QADetailPageState extends State<QADetailPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "问题详情",
      body: Container(),
    );
  }
}
