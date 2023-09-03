import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ImagePath;
  final color;
  final String description;
  final String distance;


  const GroceryItemTile({
    super.key,
    required this.ItemName,
    required this. ItemPrice,
    required this. ImagePath,
    required this. color,
    required this. description,
    required this. distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.asset(ImagePath, width:300, height:150),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            ItemName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 18, 18),
            ),
          ),
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 59, 59, 59),
          ),
        ),
      ],),
    );
  }
}