import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_stan/main.dart';
import 'package:flutter_stan/views/counter.dart';


class Routes {
  // 路由管理
  static FluroRouter router;

  static String root = '/'; // 根目录
  static String counter = '/counter';


  // 配置route
  static void configureRoutes(FluroRouter router) {
    // 未发现对应route

    router.define(root, handler: Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return MainPage();
    }));
    router.define(counter, handler: Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return CounterPage();
    }));

  }

  // 对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic> params,
      TransitionType transition = TransitionType.nativeModal,
      bool replace = false}) {
    String query = "";

    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    path = path + query;
    return router.navigateTo(context, path,
        transition: transition, replace: replace);
  }
}
