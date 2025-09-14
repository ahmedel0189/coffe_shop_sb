import 'package:coffee_shop_sb/helper/approuter.dart';
import 'package:flutter/material.dart';

class CoffeSHop extends StatelessWidget {
  final AppRouter appRouter;
  const CoffeSHop({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Coffe SHop',
      debugShowCheckedModeBanner: false,
      onGenerateRoute:appRouter.generateroute,
    );
  }
}

void main() {
  runApp( CoffeSHop(appRouter:AppRouter() ,));
}
