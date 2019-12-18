import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import "../pages/home/index.dart";
import "../pages/about/index.dart";
/// 跳转到首页Splash		
var homeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new Home();
});

/// 跳转到主页
var aboutHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return About();
});
