import 'package:coffee_shop_sb/layers/data/models/coffee_shop_model.dart';
import 'package:coffee_shop_sb/layers/ui/widgets/widgets_of_cart_screen.dart';
import 'package:coffee_shop_sb/layers/ui/widgets/widgets_of_shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
                    .buildOrderText(
                      pagetext: 'Your cart',
                    ),
                    WidgetsOfCartScreen().buildCartList(value, context)
              ],
            ),
          ),
        );
      },
    );
  }
}
