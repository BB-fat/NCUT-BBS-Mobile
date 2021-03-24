import 'package:flutter/material.dart';
import 'package:ncut_bbs/ui/ui.dart';

class LoginPage extends StatefulWidget {
  final bool isHome;
  LoginPage({this.isHome});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "登陆",
      body: Container(),
    );
  }
}
