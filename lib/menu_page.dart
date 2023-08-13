import 'package:cakestories/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
        title: Text(
          'Cake Stories',
          style: GoogleFonts.dmSerifDisplay(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        //promo banner
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  Button(text: 'Redeem')
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
            height: 25,
          ),
          //search bar
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    labelStyle: GoogleFonts.dmSerifDisplay(color: Colors.black),
                    labelText: "  Search for Cakes",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red))),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            'Cake Menu',
            style: GoogleFonts.dmSerifDisplay(
                color: Colors.red.shade900,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
