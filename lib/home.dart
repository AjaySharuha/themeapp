import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'profile.dart'; // Import the ProfilePage

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  // Add your logic here to handle the search action
                  print('Search tapped!');
                },
                child: Container(
                  child: Container(
                    width: 358,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.search),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Search',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add your logic here to handle the Home action
                      print('Home tapped!');
                    },
                    child:
                    TextButton(
                      onPressed: () {  },
                      child: Text('Home',
                        style: TextStyle(fontSize: 18,
                          decoration: TextDecoration.underline,
                        color: Colors.black),),
                    ),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Text('Theme',
                    style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Text('Fonts',
                      style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                  TextButton(
                    onPressed: () {  },
                    child: Text('Wallpapers',
                      style: TextStyle(fontSize: 18,color: Colors.black),),
                  ),
                ],
              ),

              SizedBox(height: 20),
              CarouselSlider(
                items: [
                  _buildSlide(
                    gradientColors: [
                      Color(0xFF07FCFC),
                      Color(0xFF95F0F0),
                      Color(0xFF91EDED),
                      Color(0xFFA3FDFD),
                    ],
                    icon1Path: 'assets/flower.png',
                    icon2Path: 'assets/star.png',
                  ),
                  _buildSlide(
                    gradientColors: [
                      Color(0xFFFFC793),
                      Color(0xFFF7CBA2),
                      Color(0xFFFFD7B2),
                      Color(0xFFFFEAD8),
                    ],
                    icon1Path: 'assets/sunny.png',
                    icon2Path: 'assets/star.png',
                  ),
                  _buildSlide(
                    gradientColors: [
                      Color(0xFF0F2239),
                      Color(0xFF143358),
                      Color(0xFF1A4577),
                      Color(0xFF0C2D54),
                    ],
                    icon1Path: 'assets/sunny.png',
                    icon2Path: 'assets/star.png',
                  ),
                ],
                options: CarouselOptions(
                  height: 150,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 12 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Add your logic here to handle the thumbs-up button action
                          print('Thumbs-up button pressed!');
                        },
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Funky Style Theme',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildContainer(Colors.red, 'Galaxy', 'assets/wall2.png'),
                        _buildContainer(Colors.green, 'Free city', 'assets/wall1.jpeg'),
                        _buildContainer(Colors.blue, 'Zombie', 'assets/wall3.webp'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildIconButtonWithIcon(Icons.home),
                        _buildIconButtonWithIcon(Icons.category_outlined),
                        _buildIconButtonWithIcon(Icons.brush_outlined),

                        GestureDetector(
                          onTap: () {
                            // Navigate to the ProfilePage
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfilePage()),
                            );
                          },
                          child: _buildIconButtonWithIcon(Icons.person_outline),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(Color color, String text, String imagePath) {
    return Column(
      children: [
        Stack(
          alignment: Alignment(0.12, 0.756), // Positioned at x: 65%, y: 67.6% of the image
          children: [
            Container(
              width: 105,
              height: 188,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(17), // Add border radius
              ),
              clipBehavior: Clip.antiAlias, // Clip overflow with curve
              child: Image.asset(
                imagePath,
                width: 105,
                height: 188,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 67,
              height: 19,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), // Add border radius
              ),
              child: Center(
                child: Text(
                  'Apply',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }

  Widget _buildSlide({
    required List<Color> gradientColors,
    required String icon1Path,
    required String icon2Path,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Positioned(
            bottom: 18,
            right: 18,
            child: Container(
              width: 80,
              height: 26,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Apply',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  icon1Path,
                  width: 100,
                  height: 70,
                ),
                SizedBox(height: 5),
                Image.asset(
                  icon2Path,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButtonWithIcon(IconData icon) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
      ],
    );
  }
}
