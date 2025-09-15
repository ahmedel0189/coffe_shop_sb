import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyWidgets {
  Widget buildBottomNavigationBar() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.myBrown,
        borderRadius: BorderRadius.circular(24),
      ),
      child: GNav(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        iconSize: 18,
        backgroundColor: MyColors.myBrown,
        color: MyColors.myGnavColor,
        activeColor: MyColors.myGnavColor,
        tabBackgroundColor: MyColors.myGrey,
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 30,
        tabActiveBorder: Border.all(
          color: Colors.white,
          width: 5,
        ),
        gap: 2,
        tabs: [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(
            icon: Icons.shop,
            text: 'Cart',
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
