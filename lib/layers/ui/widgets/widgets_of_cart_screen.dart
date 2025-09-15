import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_model.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetsOfCartScreen {
  Widget buildCartList(
    CoffeeShopModel value,
    BuildContext context,
  ) {
    return Expanded(
      child: value.userCart.isEmpty
          ? Center(
              child: Text(
                "Your cart is empty ☕",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: MyColors.myGnavColor,
                ),
              ),
            )
          : ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
                CoffeeModel eachCoffee = value.userCart[index];
                return buildCartItem(
                  eachCoffee: eachCoffee,
                  onPressed: () => removeFromCart(
                    context,
                    coffee: eachCoffee,
                  ),
                );
              },
            ),
    );
  }

  void removeFromCart(
    BuildContext context, {
    required CoffeeModel coffee,
  }) {
    Provider.of<CoffeeShopModel>(
      context,
      listen: false,
    ).removeItemToCart(coffee);

    // SnackBar feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${coffee.coffeeName} removed from cart"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Widget buildCartItem({
    required CoffeeModel eachCoffee,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 25,
      ),
      child: ListTile(
        title: Text(
          eachCoffee.coffeeName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "\$${eachCoffee.coffeePrice}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.myGnavColor,
          ),
        ),
        leading: Image.asset(
          eachCoffee.coffeeImage,
          height: 50,
          width: 50,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.remove,
            color: Colors.red,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
