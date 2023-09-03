import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:widgets_basic/model/cart_model.dart';
import '../components/grocery_items_item.dart';


class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),

          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal:24.0),
          //   child: Text('Good Morning'),
          // ),

          const SizedBox(height: 4),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0),
            child: Text("Let's find the best place to visit for you",
            style: GoogleFonts.notoSerif(
              fontSize: 36, 
              fontWeight: FontWeight.bold,
            ),
            ),
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(
            ),
          ),

          const SizedBox(height: 24),


          Padding(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                bottom: 20,
              ),
              child: Image.asset('assets/images/lopburi.jpg'),
            ),

          Expanded(
            child: Consumer<CartModel>(builder: (context, value, child){
              return GridView.builder(
              itemCount: value.shopitems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2), 
              itemBuilder: (context, index) {
                return GroceryItemTile(
                  ItemName: value.shopitems[index][0],
                  ItemPrice: value.shopitems[index][1],
                  ImagePath: value.shopitems[index][2],
                  color: value.shopitems[index][3],
                  description: value.shopitems[index][4],
                  distance: value.shopitems[index][5],
                );
              }
              );
            },)
              )


        ],
      ))
    );
  }

  
}

