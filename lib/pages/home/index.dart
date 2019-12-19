import 'package:flutter/material.dart';
import 'package:demo/router/navigatorUtil.dart';

class Home extends StatefulWidget {
  @override
  _SplashPagState createState() => _SplashPagState();
}

class _SplashPagState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String name = "来自第一个界面测试一下";
    int age = 14;
    double score = 6.4;
    bool sex = true;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            Center(child: Text('这是主页')),
            RaisedButton(
              child: Text('传递参数string ,int，double，bool ，自定义类型'),
              onPressed: () {
                NavigatorUtil.goDemoParamsPage(
                    context, name, age, score, sex);
              }),
              RaisedButton(
              child: Text('得到返回值'),
              onPressed: () {
                NavigatorUtil.goReturnParamsPage(context)
                .then((result){
                  print("得到返回值");
                  print(result);
                })
                .catchError((erro){
                  print(erro);
                });
              })
          ]),
        ),
      ),
    );
  }
}
