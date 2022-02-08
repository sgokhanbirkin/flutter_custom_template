// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:flutter_custom_template/core/router_constants.dart';

import 'package:flutter_custom_template/views/splash/splash_view.dart' as view0;
import 'package:flutter_custom_template/views/on_board/on_board_view.dart'
    as view1;
import 'package:flutter_custom_template/views/home/home_view.dart' as view2;
import 'package:flutter_custom_template/views/help/help_view.dart' as view3;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => const view0.SplashView());
      case onBoardViewRoute:
        return MaterialPageRoute(builder: (_) => const view1.OnBoardView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => const view2.HomeView());
      case helpViewRoute:
        return MaterialPageRoute(builder: (_) => const view3.HelpView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
