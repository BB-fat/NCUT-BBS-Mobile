import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/app/delegate.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:ncut_bbs/page/splash/splash.dart';

Future main() async {
  if (!await AppDelegate.instance.beforeAppLaunch()) {
    return;
  }
  runApp(GetMaterialApp(
    home: SplashScreen(
      minTime: Duration(seconds: 1),
      homeBuilder: (context) => AccountManager.instance.homePage,
      future: AppDelegate.instance.onAppLaunch(),
    ),
    builder: BotToastInit(),
    navigatorObservers: [BotToastNavigatorObserver()],
  ));
}
