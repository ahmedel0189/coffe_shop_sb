import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_model.dart';
import 'package:coffee_shop_sb/layers/data/models/coffee_shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetsOfShopScreen {
  Widget buildOrderText({
    required String pagetext,
  }) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        pagetext,
        style: TextStyle(
          fontFamily: 'lobster',
          fontSize: 20,
          color: MyColors.myGnavColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildListOfTheCoffee(
    CoffeeShopModel value, {
    required Icon icon,
  }) {
    return Expanded(
      child: ListView.builder(
        itemCount: value.coffeeShop.length,
        itemBuilder: (context, index) {
          CoffeeModel eachCoffee =
              value.coffeeShop[index];
          return buildCoffeeListTail(
            eachCoffee: eachCoffee,
            onPressed: () => addTocart(
              context,
              coffee: eachCoffee,
              icon: icon,
            ),
          );
        },
      ),
    );
  }

  void addTocart(
    BuildContext context, {
    required CoffeeModel coffee,
    required Icon icon,
  }) {
    Provider.of<CoffeeShopModel>(
      context,
      listen: false,
    ).addItemToCart(coffee);
  }

  Widget buildCoffeeListTail({
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
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.add,
            color: MyColors.myGnavColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
