import 'package:flutter/material.dart';

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
                    image: AssetImage("assets/Entregador em uma scooter Entrega de comida expressa pela cidade em um fundo amarelo Entrega rápida Geração de IA de alta velocidade _ Foto Premium.jpeg"),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 200,
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
        ],
      ),
    );
  }
}
