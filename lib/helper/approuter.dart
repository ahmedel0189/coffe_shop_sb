import 'package:coffee_shop_sb/constants/my_string.dart';
import 'package:coffee_shop_sb/layers/ui/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateroute(RouteSettings setting) {
    switch (setting.name) {
      case homePageRoutr:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
    }
    return null;
  }
}
