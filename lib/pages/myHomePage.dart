// import 'package:flutter/material.dart';
// import 'package:genie/pages/Page1.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 221, 163), 
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 width: double.infinity,
//                 height: screenHeight * 0.3, // 30% of screen height
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(screenWidth * 0.4), // Responsive border radius
//                     bottomRight: Radius.circular(screenWidth * 0.4),
//                   ),
//                   image: const DecorationImage(
//                     image: AssetImage("assets/Entregador em uma scooter Entrega de comida expressa pela cidade em um fundo amarelo Entrega rápida Geração de IA de alta velocidade _ Foto Premium.jpeg"), // Replace with your image name
//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       spreadRadius: 5,
//                       blurRadius: 10,
//                       offset: const Offset(0, 5), // Shadow position
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
          
//           // Centered Text with responsive font size
//           Align(
//             alignment: Alignment.center,
//             child: Text(
//               'Genie',
//               style: GoogleFonts.poppins(
//                 textStyle: TextStyle(
//                   color: Colors.black,
//                   fontSize: screenWidth * 0.15, // Responsive font size
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),

//           // Bottom containers with responsive heights and border radius
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.infinity,
//               height: screenHeight * 0.32, // Responsive height
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 214, 144, 3),
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(screenWidth * 0.5),
//                   topLeft: Radius.circular(screenWidth * 0.5),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 5,
//                     blurRadius: 10,
//                     offset: const Offset(0, -5), // Shadow position
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.infinity,
//               height: screenHeight * 0.28,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 5, 111, 97),
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(screenWidth * 0.5),
//                   topLeft: Radius.circular(screenWidth * 0.5),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 5,
//                     blurRadius: 10,
//                     offset: const Offset(0, -5), // Shadow position
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.infinity,
//               height: screenHeight * 0.23,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 214, 144, 3),
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(screenWidth * 0.9),
//                   topLeft: Radius.circular(screenWidth * 0.9),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     spreadRadius: 5,
//                     blurRadius: 10,
//                     offset: const Offset(0, -5), // Shadow position
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           // Responsive button at the bottom center
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: EdgeInsets.only(bottom: screenHeight * 0.02), // Responsive padding
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding for button
//                   backgroundColor: const Color.fromARGB(238, 7, 101, 78), // Button background color
//                 ),
//                 onPressed: () {
//                  Get.to(() => const Page1());
//                 },
//                 child: Text(
//                   'Get Started',
//                   style: GoogleFonts.poppins(
//                     textStyle: TextStyle(
//                       color: const Color.fromARGB(255, 254, 252, 252),
//                       fontSize: screenWidth * 0.05, // Responsive font size
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
