import 'package:flutter/material.dart';
import 'package:turfco_store/components/turfco_app_bar.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: TurfcoAppBar(isSearch: true,),
      body: Center(
        child: Text('Search'),
      ),
    );
  }

}
