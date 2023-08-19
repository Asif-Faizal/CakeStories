import 'package:cakestories/button.dart';
import 'package:cakestories/details.dart';
import 'package:cakestories/food_tile.dart';
import 'package:cakestories/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu

//navigate to details page
  void navigateToDetailsPage(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

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
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.red[200],
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
              onPressed: () {
                Navigator.pushNamed(context, '/cartpage');
              },
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
                        Button(
                          text: 'Redeem',
                          fontSize: 20,
                          bgcolor: Colors.red[700],
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
