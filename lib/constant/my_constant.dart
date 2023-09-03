import 'package:flutter/material.dart';

class MyConstant {
  
  static Color primary = const Color.fromARGB(0, 7, 3, 250);
  static Color succes = const Color.fromARGB(255, 252, 252, 252);
  static Color warning = const Color.fromARGB(255, 184, 98, 19);
  static Color danger = const Color.fromARGB(255, 200, 39, 39);
  static Color info = const Color.fromARGB(255, 178, 189, 96);

  TextStyle h1Style(){
    return TextStyle(
      fontFamily: 'Raleway',
      fontSize: 20,
      color:Colors.black,
      fontWeight: FontWeight.bold
    );
    
  }
   TextStyle h2Style(){
    return TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18,
      color: primary,
      fontWeight: FontWeight.bold
    );    
  }
}

