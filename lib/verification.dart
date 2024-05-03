import 'package:flutter/material.dart';
import 'package:themeapp/success.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter Verification Code',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We have sent the verification code to your phone number',
              style: TextStyle(
                color: Colors.black54, // Change text color to black54
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPDigitField(),
                SizedBox(width: 10),
                OTPDigitField(),
                SizedBox(width: 10),
                OTPDigitField(),
                SizedBox(width: 10),
                OTPDigitField(),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to SuccessScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFF4747), // Set button color to FF4747
                minimumSize: Size(200, 50), // Set button width and height
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white), // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPDigitField extends StatelessWidget {
  const OTPDigitField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          counter: Offstage(), // Hide the counter
          border: InputBorder.none, // Remove the border
        ),
      ),
    );
  }
}
