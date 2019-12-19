import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import "package:demo/pages/home/index.dart";
import "package:demo/pages/about/index.dart";
import "package:demo/pages/welcome/index.dart";
import "package:demo/pages/person/index.dart";

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

/// 跳转到欢迎页面
var welcomeHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Welcome();
});


/// 跳转到欢迎页面
var personHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Person();
});


