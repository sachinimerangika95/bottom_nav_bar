import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List _shopItems = [
    ["Ancient City", "14km from Bangkok", "assets/images/ancient_city.jpg", Colors.green, "Ancient city is stuning and it's showcase the city's architectural and cultural heritage, dating back several centuries.", "120KM"],
    ["phuket", "120KM", "assets/images/phuket.jpg", Colors.yellow, 'Phuket, famous for its pristine waters and water sports, is a tropical haven for travelers seeking relaxation and adventure.', "500Km"],
    ["River Kwai", "4.00", "assets/images/river_kwai.jpg", Colors.green, 'The River Kwai in Thailand is historically significant for its association with the "Death Railway" built during World War II.',"600KM"],
    ["Sanctuary Of Thruth", "4.00", "assets/images/sanctuary_of_truth.jpg", Colors.green, 'Thailand, is a stunning all-wood temple that showcases intricate craftsmanship and represents Thai cultural and spiritual heritage.', "800KM"],
    ["Bangkok City", "4.00", "assets/images/bangkok_city.jpg", Colors.green, 'The bustling capital of Thailand, blends ancient temples, vibrant street life, and modern skyscrapers into a dynamic and culturally rich tapestry.',"490KM"],
    ["Wat Saket", "4.00", "assets/images/wat_saket.jpg", Colors.green, 'Wat Saket, also known as the Golden Mount, Bangkok, Thailand, famous for its hilltop location and a gilded chedi that offers panoramic views of the city.',"490KM"],
    // ["Sanctuary Of Thruth", "4.00", "assets/images/sanctuary_of_truth.jpg", Colors.green, 'sabsjhjbczxbczbcjzbcjz'],
    
  ];

  get shopitems => _shopItems;

}