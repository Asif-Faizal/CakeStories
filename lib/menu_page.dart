import 'package:cakestories/button.dart';
import 'package:cakestories/details.dart';
import 'package:cakestories/food_const.dart';
import 'package:cakestories/food_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
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

//navigate to details page
  void navigateToDetailsPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => FoodDetailsPage(
                food: foodMenu[index],
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'Cake Stories',
            style: GoogleFonts.dmSerifDisplay(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          //promo banner
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red[900],
                  borderRadius: BorderRadius.circular(5)),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, left: 15),
                          child: Text(
                            'Get 15% off',
                            style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Button(
                          text: 'Redeem',
                          fontSize: 15,
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Image.asset(
                      'assets/icons/birthday-cake.png',
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            //search bar
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      labelStyle:
                          GoogleFonts.dmSerifDisplay(color: Colors.black),
                      labelText: "  Search for Cakes",
                      fillColor: Colors.white,
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red))),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Cake Menu',
              style: GoogleFonts.dmSerifDisplay(
                  color: Colors.red.shade900,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                    onTap: () => navigateToDetailsPage(index),
                    food: foodMenu[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
