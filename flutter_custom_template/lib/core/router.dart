// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:flutter_custom_template/core/router_constants.dart';

import 'package:flutter_custom_template/views/splash/splash_view.dart' as view0;
import 'package:flutter_custom_template/views/on_board/on_board_view.dart'
    as view1;
import 'package:flutter_custom_template/views/home/home_view.dart' as view2;
import 'package:flutter_custom_template/views/help/help_view.dart' as view3;
import 'package:flutter_custom_template/views/root/root_view.dart' as view4;
import 'package:flutter_custom_template/views/search/search_view.dart' as view5;
import 'package:flutter_custom_template/views/achievement/achievement_view.dart'
    as view6;
import 'package:flutter_custom_template/views/profile/profile_view.dart'
    as view7;

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
      case rootViewRoute:
        return MaterialPageRoute(builder: (_) => view4.RootView());
      case searchViewRoute:
        return MaterialPageRoute(builder: (_) => view5.SearchView());
      case achievementViewRoute:
        return MaterialPageRoute(builder: (_) => view6.AchievementView());
      case profileViewRoute:
        return MaterialPageRoute(builder: (_) => view7.ProfileView());
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
