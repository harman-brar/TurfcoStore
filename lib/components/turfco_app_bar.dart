import 'package:flutter/material.dart';

import '../cart_screen.dart';
import '../search_screen.dart';

class TurfcoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isSearch, isCart;

  TurfcoAppBar({this.isSearch = false, this.isCart = false});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AppBar(
      title: Text('Turfco',
      style: TextStyle(
          color: Colors.lightGreenAccent),
      ),
      actions: <Widget>[
        if (!isSearch && !isCart) ...[
          IconButton(
              icon: const Icon(Icons.search, color: Colors.white,),
              tooltip: 'Search',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              }
          ),
          IconButton(
            icon: const Icon(Icons.shopping_basket),
            tooltip: 'Cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ]
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);

}