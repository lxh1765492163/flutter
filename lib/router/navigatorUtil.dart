import 'package:flutter/material.dart';
import 'package:demo/router/application.dart';
import 'package:demo/router/routes.dart';
import 'package:demo/utils/index.dart';

class NavigatorUtil {
  static void goBack(BuildContext context) {
    /// 其实这边调用的是 Navigator.pop(context);
    Application.router.pop(context);
  }
   /// 跳转到主页面
  static void goHomePage(BuildContext context) {
    /// Routes.home 路由地址
    print("---------------------------------");
    print(Application.router);
    Application.router.navigateTo(context, Routes.home, replace: true);
  }

  /// 带参数跳转
  static void goDemoParamsPage(BuildContext context, String name, int age,
      double score, bool sex){
        print("---------------------------------");
        
        var mname = Utils.fluroCnParamsEncode(name);
        print(Routes.person+"?name=$mname&age=$age&score=$score&sex=$sex");
        Application.router.navigateTo(context, Routes.person+"?name=$mname&age=$age&score=$score&sex=$sex");
  }

  /// 跳转得到返回值
  static Future goReturnParamsPage(BuildContext context){
    return Application.router.navigateTo(context, Routes.about);
  }
}