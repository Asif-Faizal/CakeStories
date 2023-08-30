import 'package:cakestories/food_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red.shade800,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  food.imagepath,
                  height: 140,
                ),
              ),
              //text
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  food.name,
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              //rating+price
              SizedBox(
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Text(
                          '\u{20B9}${food.price}',
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.grey.shade300,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade800,
                      ),
                      Text(
                        food.rating,
                        style: TextStyle(
                            color: Colors.grey.shade300, fontSize: 12),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
