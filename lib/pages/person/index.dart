import 'package:flutter/material.dart';
import 'package:demo/router/navigatorUtil.dart';
class Person extends StatefulWidget {
  @override
  _SplashPagState createState() => _SplashPagState();
}

class _SplashPagState extends State<Person> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Text('我person页面'),
              RaisedButton(
              child: Text('返回'),
              onPressed: () {
                NavigatorUtil.goBack(context);
              })
            ],
          )
        ),
      ),
    );
  }
}
