import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
          'Payments',
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
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(choices.length, (index) {
            return Center(
              child: SelectCard(choice: choices[index]),
            );
          }),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.imageAsset});
  final String title;
  final String imageAsset;
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Google Pay', imageAsset: 'assets/icons/GooglePay.png'),
  Choice(title: 'PhonPe', imageAsset: 'assets/icons/PhonePe.png'),
  Choice(title: 'Paytm', imageAsset: 'assets/icons/Paytm.png'),
  Choice(title: 'Cards', imageAsset: 'assets/icons/Visa.png'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.shade200,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                choice.imageAsset,
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                choice.title,
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
