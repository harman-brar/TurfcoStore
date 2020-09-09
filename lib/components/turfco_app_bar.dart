import 'package:flutter/material.dart';

class TurfcoAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AppBar(
      title: Text('Turfco',
      style: TextStyle(
          color: Colors.lightGreenAccent),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);

}