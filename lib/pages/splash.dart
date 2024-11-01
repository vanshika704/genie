import 'dart:async';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Set a timer for 5 seconds to navigate to the next screen
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background image covering the full screen
          Image.asset(
            'assets/bg1.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          // Centered logo on top of the image
          Center(
            child: Image.asset(
              'assets/Screenshot_2024-11-01_192246-removebg-preview.png', // Replace with your logo path
              width: 250, // Adjust logo size as needed
              height: 250,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(child: Text("Welcome to the Home Screen!")),
    );
  }
}