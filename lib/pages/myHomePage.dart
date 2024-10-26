import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246), // Light gray background color
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300, // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/Entregador em uma scooter Entrega de comida expressa pela cidade em um fundo amarelo Entrega rápida Geração de IA de alta velocidade _ Foto Premium.jpeg"), // Replace with your image name
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 5), // Shadow position
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Add the Text widget styled with Google Fonts
          Align(
            alignment: Alignment.center,
            child: Text(
              'Genie',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 173, 25),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, -5), // Shadow position
                  ),
                ],
              ),
            ),
          ),
Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 214, 144, 3),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, -5), // Shadow position
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 130, 1),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, -5), // Shadow position
                  ),
                ],
              ),
            ),
          ),
          // Position the button at the exact bottom of the screen
          Align(
            alignment: Alignment.bottomCenter, // Align to the bottom center
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20), // Add some padding from the bottom
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                
                  padding: const EdgeInsets.all(10), // Increase padding to make the button larger
                  backgroundColor: const Color.fromARGB(238, 7, 101, 78), // Button background color
                ),
                onPressed: () {
                  // Define action on button press
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 5), // Space between icon and text
                    Text(
              'Get Started',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 11, 10, 10),
                  fontSize: 20,
                 
                ),
              ),
            ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

