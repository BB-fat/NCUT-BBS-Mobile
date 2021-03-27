import 'package:flutter/material.dart';
import 'package:ncut_bbs/logic/account/api.dart';
import 'package:ncut_bbs/logic/account/manager.dart';
import 'package:ncut_bbs/logic/api/manager.dart';

class HomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '欢迎：${AccountManager.instance.userInfo.accountName}',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: () {
                  ApiManager.instance.refreshToken();
                },
                child: Text("Refresh Token")),
            ElevatedButton(
                onPressed: () async {
                  var res = await GetUserInfoApi().start();
                  print(res);
                },
                child: Text("GetUserInfo")),
            ElevatedButton(
                onPressed: () {
                  AccountManager.instance.logout(info: "退出登录");
                },
                child: Text("logout")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}