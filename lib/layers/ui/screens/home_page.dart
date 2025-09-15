import 'package:coffee_shop_sb/constants/my_bottom_nav_bar_pages.dart';
import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:coffee_shop_sb/layers/ui/widgets/my_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackgroundColor,
      bottomNavigationBar: MyBottomNavBar()
          .buildBottomNavigationBar(
            onTabChange: (index) =>
                navigateBottomBar(index),
          ),
          body: gnavScreen[selectedIndex],
    );
  }
}
