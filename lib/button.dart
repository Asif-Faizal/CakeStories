import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final double fontSize;
  const Button(
      {super.key, required this.text, this.onTap, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red.shade700, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: fontSize,
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
