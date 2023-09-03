import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets_basic/model/shop_item_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: Consumer<ShopItemModel>(
        builder: (context, value, child){
          return Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: value.cartItems.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(value.cartItems[index][0]),
                );
        },
        ),
        )
      ],);
      },)
    );
  }
}