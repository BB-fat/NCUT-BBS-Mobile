import 'package:ncut_bbs/ui/ui.dart';

class PendingReviewPage extends StatefulWidget {
  @override
  _PendingReviewPageState createState() => _PendingReviewPageState();
}

class _PendingReviewPageState extends State<PendingReviewPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "审核状态",
      body: Center(
        child: Text("正在审核中，请稍等。"),
      ),
    );
  }
}
