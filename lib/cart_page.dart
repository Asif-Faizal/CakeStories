import 'package:cakestories/button.dart';
import 'package:cakestories/food_const.dart';
import 'package:cakestories/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Your Cart',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/menupage');
                },
                icon: const Icon(
                  Icons.home,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final Food food = value.cart[index];
                    final String foodName = food.name;
                    final String foodPrice = '\u{20B9}${food.price}';
                    final String imagePath = food.imagepath;
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.red[700],
                          borderRadius: BorderRadius.circular(5)),
                      margin: const EdgeInsets.all(20),
                      child: ListTile(
                        leading: Image.asset(
                          imagePath,
                          height: 50,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            foodName,
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            foodPrice,
                            style: GoogleFonts.dmSerifDisplay(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          onPressed: () => removeFromCart(food, context),
                        ),
                      ),
                    );
                  }),
            ),
            //payment button
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.red.shade700,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //price

                      children: [
                        Text(
                          "Total Price",
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          '\u{20B9}${1200}',
                          style: GoogleFonts.dmSerifDisplay(
                              color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                      text: 'Checkout!',
                      fontSize: 25,
                      onTap: () {
                        Navigator.pushNamed(context, '/address');
                      },
                      bgcolor: Colors.red[900])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
