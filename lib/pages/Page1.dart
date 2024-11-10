import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'package:get/get.dart';
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
        title: Text(
          'Choose your role:',
          textAlign: TextAlign.center,
          style: GoogleFonts.oxanium( // Apply Oxanium font to the title
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 29, 28, 28), // Dark background color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  const SizedBox(height: 50),
              Image.asset(
                "assets/4757693-removebg-preview.png",
                height: 200,
              ),
              const SizedBox(height: 100),
        
              // First Role Option
              GestureDetector(
                onTap: () {
                  
                  Get.toNamed('/register');
              
                },
                child: Container(
                  height: 100,
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
                      Text(
                        'Can Work',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oxanium( // Apply Oxanium font to text
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
              const SizedBox(height: 20),
        
              Text(
                'or',
                style: GoogleFonts.oxanium( 
                  fontSize: 25,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
        
            
              GestureDetector(
                onTap: () {
                  Get.toNamed('/explore');
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 92, 90, 90), 
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
                      ClipOval(
                        child: Image.asset(
                          'assets/Delivery.jpg', // Replace with your image path
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20), 
                      Text(
                        'Want Help',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.oxanium( 
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
      
            ],
          ),
        ),
      ),
    );
  }
}
