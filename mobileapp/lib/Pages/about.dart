// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("About Page"),
        backgroundColor: Colors.amber,
      ),
      // ignore: prefer_const_constructors
      // drawer: Drawer(
      //   backgroundColor: Color.fromARGB(255, 74, 146, 56),
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Icon(Icons.king_bed , size: 40, color: Colors.white12,),),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('Home'),
      //         onTap: (){
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/home');
      //         },
      //       ),

      //       ListTile(
      //         leading: Icon(Icons.man_2),
      //         title: Text('About'),  
      //         onTap: (){
      //           Navigator.pushNamed(context,'/about');
      //         },
      //         )
      //     ],
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),
            label:'Home' 
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting' ,  onTap:()=>{
            
          }),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About')
        ],
      ),
        body:Center(child: ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        },child: Text('Home Page'),),)
    );
  }
}