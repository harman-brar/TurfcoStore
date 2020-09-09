import 'package:flutter/material.dart';
import 'package:turfco_store/components/my_scaffold.dart';
import 'package:turfco_store/components/turfco_app_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
  
}
