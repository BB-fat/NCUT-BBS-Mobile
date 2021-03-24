import 'package:async/async.dart';
import 'package:get/get.dart';
import 'package:ncut_bbs/ui/ui.dart';

class SplashScreen extends StatefulWidget {
  final Duration minTime;
  final Future future;
  final WidgetBuilder homeBuilder;

  SplashScreen({this.minTime, this.future, this.homeBuilder});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  Future init() async {
    var group = FutureGroup()
      ..add(widget.future)
      ..add(Future.delayed(widget.minTime))
      ..close();
    await group.future;
    Get.offAll(() => widget.homeBuilder(Get.context));
  }

  @override
  Widget build(BuildContext context) {
    //          TODO 换成闪屏内容
    return Container(
      color: Colors.white,
    );
  }
}
