import 'package:cakestories/button.dart';
import 'package:cakestories/food_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantityCount = 1;
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 1) {
        quantityCount--;
      }
      ;
    });
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            widget.food.name,
            style: GoogleFonts.dmSerifDisplay(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
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
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ListView(
              children: [
                //image
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Image.asset(
                    widget.food.imagepath,
                    height: 300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\u{20B9}${widget.food.price}' + ' per KG',
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.black, fontSize: 22),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade800,
                        ),
                        Text(
                          widget.food.rating,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //details
                Text(
                  widget.food.description,
                  style: TextStyle(fontSize: 14, height: 2),
                )
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.red.shade900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //price
                  children: [
                    Text(
                      '\u{20B9}${widget.food.price}',
                      style: GoogleFonts.dmSerifDisplay(
                          color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    //quantity
                    Row(
                      children: [
                        //minus
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade700,
                              shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: decrementQuantity,
                              icon: Icon(Icons.remove)),
                        ),
                        //quantity
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: GoogleFonts.dmSerifDisplay(
                                  color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        //add
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade700,
                              shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: incrementQuantity,
                              icon: Icon(Icons.add)),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  text: 'Add to Cart',
                  fontSize: 20,
                  onTap: addToCart,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
