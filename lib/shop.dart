import 'package:cakestories/food_const.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "BlueBerry Cake",
        price: "1200",
        imagepath: "assets/images/blue-creamy-cake-with-ombre-effect.jpg",
        rating: "4.2",
        description:
            'The Blueberry Cake is a burst of fruity goodness. With plump blueberries embedded in a moist cake, it delivers a delightful blend of sweetness and tanginess in every bite.'),
    Food(
        name: "Walnut Cake",
        price: "1400",
        imagepath: "assets/images/cake-with-chocolade-table.jpg",
        rating: "4.4",
        description:
            'The Walnut Cake offers a nutty delight with a tender crumb. Packed with earthy flavors and crunchy walnuts, it\'s a wholesome dessert that balances sweetness and texture harmoniously.'),
    Food(
        name: "Choclate Cake",
        price: "1100",
        imagepath:
            "assets/images/cacao-creamy-cake-garnished-with-nuts-chocolate-glaze.jpg",
        rating: "4.3",
        description:
            'The Chocolate Cake is a classic indulgence, rich and decadent. Its velvety layers and luscious cocoa flavor make it a timeless dessert loved by many for its pure cocoa bliss.'),
    Food(
        name: "Blue-Lemon Cake",
        price: "1250",
        imagepath: "assets/images/cake-with-cream-blueberry-lemon.jpg",
        rating: "4.2",
        description:
            'The Blue-Lemon Cake is a delightful fusion, pairing the zesty and vibrant essence of lemons with a touch of blueberry allure, creating a visually appealing and tangy-sweet dessert experience.'),
    Food(
        name: "Orange Cake",
        price: "1200",
        imagepath:
            "assets/images/cake-with-white-cream-decorated-with-lime-orange.jpg",
        rating: "4.5",
        description:
            'The Orange Cake is a citrus-infused delight, blending the bright and tangy flavors of oranges into a moist and irresistible dessert, offering a refreshing and zesty taste in every bite.'),
    Food(
        name: "Grape-Lilac Cake",
        price: "1400",
        imagepath:
            "assets/images/creamy-cake-lilac-topped-with-pink-lilac-decorations-grapes.jpg",
        rating: "4.1",
        description:
            'The Grape-Lilac Cake is a unique confection that combines the subtle floral notes of lilac with the sweet essence of grapes, resulting in a harmonious and enchanting dessert experience.'),
    Food(
      name: "Kiwi Cake",
      price: "1300",
      imagepath:
          "assets/images/menthol-collor-cake-decorated-with-kiwi-lime.jpg",
      rating: "4.4",
      description:
          'A delectable Kiwi Cake features layers of moist sponge infused with zesty kiwi flavor. Topped with creamy kiwi frosting and fresh slices, it\'s a delightful tropical treat.',
    ),
    Food(
        name: "Cookie Cake",
        price: "1600",
        imagepath:
            "assets/images/white-cake-poured-with-chocolate-decorated-with-different-cookies.jpg",
        rating: "4.8",
        description:
            'A delectable hybrid, the cookie cake merges the chewy delight of cookies with the indulgence of cake. A treat for all ages, perfect for celebrations or sweet cravings.'),
  ];
  final List<Food> _cart = [];
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
