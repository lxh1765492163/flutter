import 'package:flutter/material.dart';
import './application.dart';
import './routes.dart';

class NavigatorUtil {
   /// 跳转到主页面
  static void goHomePage(BuildContext context) {
    /// Routes.home 路由地址
	/// replace：true 就是将 splash 页面给移除掉了，这点后退键的时候就不会再出现Splash页面
    Application.router.navigateTo(context, Routes.home, replace: true);
  }
}