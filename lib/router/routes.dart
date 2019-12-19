import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:demo/router/route_handlers.dart';

class Routes {
  static String root = "/";
  static String about = "/about";
  static String home = "/home";
  static String person = "/person";
  
  static void configureRoutes(Router router) {

    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    router.define(root, handler: welcomeHandler);
    router.define(home, handler: homeHandler);
    router.define(about, handler: aboutHandler);
    router.define(person, handler: personHandler);
  }
}
