import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  // text editing Controller 
  TextEditingController myController = TextEditingController();

  // greet user method

  String greetingMessage = "";
  void greetUser(){
    setState(() {
    greetingMessage = "Welcome " + myController.text;
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
        child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type your info"
              ),
            ),
            ElevatedButton(onPressed: greetUser, child: Text("Tap")),
          ],
        ),
        ),
      ),
    );
  }
}