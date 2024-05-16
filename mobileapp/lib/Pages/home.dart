import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Home Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: ElevatedButton(child: Text("Click me"),
         onPressed: () {
           Navigator.pushNamed(context, "/about");
         }, 
        ),
      ),
    );
  }
}