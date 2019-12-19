import 'package:flutter/material.dart';
import 'package:demo/router/navigatorUtil.dart';
import 'dart:async';

class Welcome extends StatefulWidget {
  @override
  _SplashPagState createState() => _SplashPagState();
}

class _SplashPagState extends State<Welcome> {

  @override
  void initState() {
//    Future.delayed(Duration(seconds: 5),(){
//      NavigatorUtil.goHomePage(context);
//    });
    /// 2秒后跳转到主页面，上面注释的代码也可以做到倒计时
    const period = const Duration(seconds: 5);
    Timer(period ,(){
      NavigatorUtil.goHomePage(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container (
          child: Column(
            children: <Widget>[
              Text('我是欢迎页面'),
              RaisedButton(
              child: Text('跳转到首页'),
              onPressed: () {
                NavigatorUtil.goHomePage(context);
              })
            ],
          )
          
        ),
      ),
    );
  }
}