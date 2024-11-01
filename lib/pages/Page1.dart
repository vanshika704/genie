import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        title: const Text(
          'Choose your role: ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white, // White text for dark background
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 29, 28, 28), // Dark background color
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // First Role Option
            GestureDetector(
              onTap: () {
                // Handle Deaf or Hard of Hearing role selection
              },
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 105, 105, 105), // Gray color from previous design
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0), // Shadow color
                      blurRadius: 8.0, // Spread radius
                      offset: Offset(0, 4), // Shadow offset
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20), // Space before the text
                    const Text(
                      'Can Deliver',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20), // Space between text and image
                    ClipOval(
                      child: Image.asset(
                        'assets/3699591.jpg', // Replace with your image path
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),

            const Text(
              'or',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 40),

            // Second Role Option
            GestureDetector(
              onTap: () {
                // Handle Sign Language Interpreter role selection
              },
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 92, 90, 90), // Darker gray for the second container
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 0, 0), // Shadow color
                      blurRadius: 8.0, // Spread radius
                      offset: Offset(0, 4), // Shadow offset
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/Delivery.jpg', // Replace with your image path
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20), // Space between image and text
                    const Text(
                      'Want Delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 90),

            // Get Started Button
            ElevatedButton(
              onPressed: () {
                // Handle Get Started action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 192, 192, 192), // Dark button color
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          
              child: const Text(
                'Get started',
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 7, 7),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
