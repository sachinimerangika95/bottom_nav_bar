import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:widgets_basic/model/cart_model.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // iconTheme: const IconThemeData((color:Colors.black)),
        centerTitle: true,
        ),
        body: Consumer<CartModel>(builder: (context, value, child){
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Memories Through the journey",
                    style: GoogleFonts.notoSerif(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.shopitems.length,
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: Image.asset(
                                value.shopitems[index][2],
                                height: 36,
                              ),
                              title: Text(value.shopitems[index][0]),
                              subtitle: Text(value.shopitems[index][1]),
                              trailing: IconButton(
                                icon: Icon(Icons.favorite),
                                onPressed: () => 
                                    Provider.of<CartModel>(context, listen: false)),
                                                      ),
                          ),
                        );
                  },),),
                  Container(
                    decoration: const BoxDecoration(color: Color.fromARGB(255, 109, 198, 243)),
                    padding: const EdgeInsets.all(24),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create your own memories",
                          style: TextStyle(
                            fontSize: 16,
                          ),)
                        ],
                      ),
                    ),
                  )
              
                  ]),
          );
        },)
      ),
    );
  }

  
}