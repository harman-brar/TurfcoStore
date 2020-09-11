import 'package:flutter/material.dart';
import 'package:turfco_store/components/turfco_app_bar.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: TurfcoAppBar(isCart: true,),
      body: Center(
        child: Text('Cart'),
      ),
    );
  }

}