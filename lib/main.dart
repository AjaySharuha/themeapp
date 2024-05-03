import 'package:flutter/material.dart';
import 'package:themeapp/verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // Set debug banner to false
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // Align children center horizontally
              children: [
                SizedBox(
                  height: 20,
                ), // Adjust the space between the button and the image
                Align(
                  alignment: Alignment.center, // Align the image to the center
                  child: Image.asset(
                    'assets/star.png', // Replace with the actual path to your PNG image
                    width: 167,
                    height: 139,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 65,
                  height: 39,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.left, // Align text to the left corner
                    style: TextStyle(
                      fontWeight: FontWeight.w600, // semi-bold
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 5), // Adjust the space between "Login" and the following text
                Text(
                  'Enter phone number to send\none-time password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 20), // Adjust the space between the texts and the text field
                Center( // Center the text field
                  child: Container(
                    width: 320,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20), // Curve edge for text box
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Adjust the space between the text field and the button
                Center( // Center the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic here
                      // Navigate to SuccessScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerificationScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF4747), // Set button color to FF4747
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Curve edge for button
                      ),
                      minimumSize: Size(326, 58), // Set button width and height
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10), // Adjust button padding
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white), // Set text color to white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
