import 'package:coffee_shop_sb/constants/my_string.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_shop_model.dart';
import 'package:coffee_shop_sb/layers/ui/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRouter {
  Route? generateroute(RouteSettings setting) {
    switch (setting.name) {
      case homePageRoutr:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider(
            create: (context) => CoffeeShopModel(),
            child: HomePage(),
          ),
        );
    }
    return null;
  }
}
