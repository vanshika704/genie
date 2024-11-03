import 'package:flutter/material.dart';
import 'package:genie/pages/Page1.dart';
import 'package:genie/pages/explore.dart';
import 'package:get/get.dart';

import 'pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Genie',
   debugShowCheckedModeBanner: false,
   
      getPages: [
          GetPage(name: "/", page: () => MyHomePage()),
          GetPage(name: "/Page1", page: () => const Page1()),
            GetPage(name: '/explore', page: () => ExplorePage()),
      ],
    );
  }
}

