import 'package:flutter/material.dart';
import 'package:turfco_store/components/my_scaffold.dart';

void main() {
  runApp(TurfcoStore());
}

class TurfcoStore extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turfco',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      home: MyScaffold(),
    );
  }
}
