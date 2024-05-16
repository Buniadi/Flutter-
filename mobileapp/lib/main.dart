// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileapp/Pages/about.dart';
import 'package:mobileapp/Pages/home.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/home':(context) => HomePage(),
        '/about':(context) => AboutPage(),
      },
    );
  
  }
}
