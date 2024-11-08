import 'dart:async';

import 'package:flutter/material.dart';
import 'package:genie/pages/LoginPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
   
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        
          Image.asset(
            'assets/bg1.png', 
            fit: BoxFit.cover,
          ),
   
          Center(
            child: Image.asset(
              'assets/Screenshot_2024-11-01_192246-removebg-preview.png', 
              width: 250, 
              height: 250,
            ),
          ),
        ],
      ),
    );
  }
}

