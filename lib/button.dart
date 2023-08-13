import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const Button({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.shade700,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
