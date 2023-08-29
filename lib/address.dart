import 'package:cakestories/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Enter Your Details',
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          right: 25, left: 25, bottom: 20, top: 35),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  Name",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  Phone Number",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  Address Line 1",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  Address Line 2",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  LandMark",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            labelStyle:
                                GoogleFonts.dmSerifDisplay(color: Colors.white),
                            labelText: "  PinCode",
                            fillColor: Colors.red.shade300,
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                ],
              ),
            ),
          ),
          //payment button
          Container(
            padding: EdgeInsets.all(15),
            color: Colors.red.shade700,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Button(
                        text: 'Pay Now!',
                        fontSize: 25,
                        onTap: () {
                          Navigator.pushNamed(context, '/payments');
                        },
                        bgcolor: Colors.red[900]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
