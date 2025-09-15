import 'package:coffee_shop_sb/layers/data/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeShopModel extends ChangeNotifier {
  // Coffee pirces and
  List<CoffeeModel> shop = [
    // black coffee
    CoffeeModel(
      coffeeName: 'Black Coffee',
      coffeeImage:
          'assets/images/black_coffee.png',
      coffeePrice: 25,
    ),
    // expresso
    CoffeeModel(
      coffeeName: 'Expresso',
      coffeeImage: 'assets/images/expresso.png',
      coffeePrice: 25,
    ),
    // iced coffee
    CoffeeModel(
      coffeeName: 'Ice Coffee',
      coffeeImage: 'assets/images/ice-coffee.png',
      coffeePrice: 25,
    ),
    // latte
    CoffeeModel(
      coffeeName: 'Latte',
      coffeeImage: 'assets/images/latte.png',
      coffeePrice: 25,
    ),
  ];

  // user cart
  List<CoffeeModel> userCart_ = [];

  // get coffee list
  List<CoffeeModel> get coffeeShop => shop;

  // get user cart
  List<CoffeeModel> get userCart => userCart_;

  // add item to cart
  addItemToCart(CoffeeModel coffee) {
    userCart_.add(coffee);
    notifyListeners();
  }

  // remove items from cart
  removeItemToCart(CoffeeModel coffee) {
    userCart_.remove(coffee);
    notifyListeners();
  }
}
