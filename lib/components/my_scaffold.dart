import 'package:flutter/material.dart';
import 'package:turfco_store/account_screen.dart';
import 'package:turfco_store/cart_screen.dart';
import 'package:turfco_store/components/turfco_app_bar.dart';
import 'package:turfco_store/home_screen.dart';
import 'package:turfco_store/categories_screen.dart';

class MyScaffold extends StatefulWidget {
  MyScaffold({Key key}) : super(key: key);

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    CategoriesScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TurfcoAppBar(),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}