import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:widgets_basic/components/grocery_items_item.dart';
import 'package:widgets_basic/model/cart_model.dart';
import 'package:widgets_basic/model/shop_item_model.dart';
import '../components/shop_item_tile.dart';
import '../model/shop_item_model.dart';
import 'cart_page.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context){
          return CartPage();
        },
        ),
        ),
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.shopping_cart),
        ),
      body: SafeArea (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),

               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 24.0),
                 child: Text("Let's Go Shoping"),
               ),

               const SizedBox(height: 4),

               Padding( 
                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
                 child: Text(
                  "Find The Best Items For Your Journey",
                  style: GoogleFonts.notoSerif(
                    fontSize: 36, 
                    fontWeight: FontWeight.bold,
                    ),
                  ),
               ),

               const SizedBox(height: 24),

              
               const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Divider()
                 ),
               

               const SizedBox(height:24),

               Expanded(
                child: Consumer<ShopItemModel>(
                  builder: (context, value, child){
                  return GridView.builder(
                  itemCount: value.travelItems.length,
                  padding: EdgeInsets.all(12),
                  gridDelegate: 
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1/ 1.3), 
                  itemBuilder: (context, index) {
                    return ShopItemTile(
                      itemName: value.travelItems[index][0],
                      itemPrice: value.travelItems[index][1],
                      imagePath: value.travelItems[index][2],
                      color: value.travelItems[index][3],
                      onPressed: (){
                        Provider.of<ShopItemModel>(context, listen: false)
                            .addItemToCart(index);
                      },
                      
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