import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LearnNavBar(),
    );
  }
}

class LearnNavBar extends StatefulWidget {

  @override
  State<LearnNavBar> createState() => _LearnNavBarState();
}

class _LearnNavBarState extends State<LearnNavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index){
    setState((){
      _selectedNavbar = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bottom Navigation bar"),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Text("Active tab index : $_selectedNavbar",
        style: TextStyle(
          fontSize: 16
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Cart'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account'
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}