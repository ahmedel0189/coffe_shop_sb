// import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_shop_model.dart';
import 'package:coffee_shop_sb/layers/ui/widgets/widgets_of_shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreens extends StatelessWidget {
  const ShopScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShopModel>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                WidgetsOfShopScreen()
                    .buildOrderText(),
                const SizedBox(height: 25),
                WidgetsOfShopScreen().buildListOfTheCoffee(value),
              ],
            ),
          ),
        );
      },
    );
  }
}
