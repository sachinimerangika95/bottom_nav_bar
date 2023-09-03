import 'package:flutter/material.dart';
import 'package:widgets_basic/constant/my_constant.dart';
import 'package:widgets_basic/model/cart_model.dart';
import 'package:widgets_basic/model/shop_item_model.dart';
import 'package:widgets_basic/screens/bottomnavbar_screen.dart';
import 'package:provider/provider.dart';
import 'pages/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
Widget build(BuildContext context) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CartModel()),
      ChangeNotifierProvider(create: (context) => ShopItemModel()),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    ),
  );
}



  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => CartModel(),
  //     child: const MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: IntroScreen(),
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => ShopItemModel(),
  //     child: const MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       home: IntroScreen(),
  //     ),
  //   );
  // }
}
