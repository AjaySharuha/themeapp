import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            PaymentButton(
              text: 'Google Pay',
              imagePath: 'assets/google-pay.png', // Adjust the path to your Google Pay icon
            ),
            SizedBox(height: 10),
            PaymentButton(
              text: 'PhonePe',
              imagePath: 'assets/phonepe-logo-icon.png', // Adjust the path to your PhonePe icon
            ),
            SizedBox(height: 10),
            PaymentButton(
              text: 'Paytm',
              imagePath: 'assets/paytm-icon.png', // Adjust the path to your Paytm icon
            ),
            SizedBox(height: 10),
            PaymentButton(
              text: 'Wallet',
              imagePath: 'assets/wallet.png', // Adjust the path to your Wallet icon
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String text;
  final String imagePath;

  const PaymentButton({Key? key, required this.text, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: 381,
      decoration: BoxDecoration(
        color: Colors.white, // Adjust color as needed
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 24, // Adjust the height of the icon as needed
            width: 24, // Adjust the width of the icon as needed
          ),
          SizedBox(width: 10), // Add spacing between icon and text
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Adjust text color as needed
            ),
          ),
        ],
      ),
    );
  }
}

