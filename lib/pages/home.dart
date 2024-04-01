import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home')),
    Center(child: Text('Read')),
    Center(child: Text('Delete')),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //signout
  void UserOut() {
    FirebaseAuth.instance.signOut();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: UserOut,
            icon: const Icon(Icons.logout),
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.read_more), label: "Read"),
          BottomNavigationBarItem(icon: Icon(Icons.delete), label: "Delete"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Home._widgetOptions.elementAt(_selectedIndex),
    );
  }
}
