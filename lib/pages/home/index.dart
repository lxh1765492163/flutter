import 'package:flutter/material.dart';
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

    return Scaffold(
      body: Center(
        child: Container(
          child: Text('我是about页面'),
        ),
      ),
    );
  }
}
