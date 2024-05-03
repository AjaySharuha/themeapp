import 'package:flutter/material.dart';
import 'preview.dart'; // Import the PreviewPage

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 175,
                width: 440,
                color: Color(0xFFFF4747),
              ),
            ),
            Positioned(
              top: 110, // Adjust the top position as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 62.5, // Half of the container height (125)
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/girl.png'), // Add your image path here
                  ),
                  SizedBox(height: 10), // Add some spacing between the CircleAvatar and the text
                  Text(
                    'Change Picture',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20), // Add some spacing between the text and the text fields
                  _buildTextFieldWithLabel('Username', 'Enter your name'),
                  SizedBox(height: 10), // Add some spacing between the text fields
                  _buildTextFieldWithLabel('E-mail ID', 'Enter your email'),
                  SizedBox(height: 10), // Add some spacing between the text fields
                  _buildTextFieldWithLabel('Phone Number', 'Enter your phone number'),
                  SizedBox(height: 20), // Add some spacing between the text fields and the buttons
                  _buildButton('Update'),
                  SizedBox(height: 10), // Add some spacing between the buttons
                  GestureDetector(
                    onTap: () {
                      // Navigate to the PreviewPage when the "Preview" button is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PreviewPage()),
                      );
                    },
                    child: _buildPreviewButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldWithLabel(String label, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 53,
          width: 334,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton(String buttonText) {
    return Container(
      height: 40,
      width: 251,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFFF4747),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildPreviewButton() {
    return Container(
      height: 80,
      width: 453,
      decoration: BoxDecoration(
        color: Color(0xFF484646),
      ),
      child: Center(
        child: Text(
          'Preview',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
