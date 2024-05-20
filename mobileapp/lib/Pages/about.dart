// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobileapp/Pages/home.dart';

class AboutPage extends StatefulWidget {
   AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // ignore: prefer_const_constructors
      //   title: Text("About Page"),
      //   backgroundColor: Colors.amber,
      // ),
      
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
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),
            label:'Home' 
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About')
        ],
      ),
        body:_pages[_selectedIndex]
    );
  }
}