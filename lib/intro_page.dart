import 'package:cakestories/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            //shop name
            Text(
              'CAKE\nSTORIES',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            //icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset('assets/icons/redvelvet.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            //title
            Text(
              'Crafting Memories in Every Slice',
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            //subtitle
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                  'Flour, Sugar, and Imagination Converge to Create Edible Tales of Joy and Celebration. Indulge in Artfully Crafted Confections, Each Layer a Chapter of Flavorful Narratives. Discover a World of Cakes, Where Every Bite Unfolds a Unique Story, and Every Occasion is Transformed into a Delicious Memory Worth Savoring.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                    color: Colors.white,
                  )),
            ),
            //get started button
            Padding(
              padding: const EdgeInsets.all(10),
              child: Button(
                text: 'Dive In',
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
