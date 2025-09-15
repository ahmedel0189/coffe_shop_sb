import 'package:coffee_shop_sb/constants/my_colors.dart';
import 'package:coffee_shop_sb/layers/ui/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myBackgroundColor,
      bottomNavigationBar: MyWidgets()
          .buildBottomNavigationBar(),
    );
  }
}
