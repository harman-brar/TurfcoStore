import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/product_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Flexible(
          child: ListView(
            children: [
              Container(
                alignment: Alignment(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Products',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
              ),
              ProductCard(
                imgUrl: 'https://s.france24.com/media/display/e1b8b442-f05a-11ea-88b7-005056bff430/w:1280/p:16x9/07fd9e578c2716641d7df7879647e66616f3fe4b.webp',
                name: 'Product 1',
                shortDescription: 'This is the short description associated with this product.',
                isAvailable: true,
                isSaleItem: false,
                price: 10,
              ),
              ProductCard(
                imgUrl: 'https://s.france24.com/media/display/e1b8b442-f05a-11ea-88b7-005056bff430/w:1280/p:16x9/07fd9e578c2716641d7df7879647e66616f3fe4b.webp',
                name: 'Product 1',
                shortDescription: 'This is the short description associated with this product.',
                isAvailable: false,
                isSaleItem: false,
                price: 10,
              ),
              ProductCard(
                imgUrl: 'https://s.france24.com/media/display/e1b8b442-f05a-11ea-88b7-005056bff430/w:1280/p:16x9/07fd9e578c2716641d7df7879647e66616f3fe4b.webp',
                name: 'Product 1',
                shortDescription: 'This is the short description associated with this product.',
                isAvailable: true,
                isSaleItem: true,
                price: 10,
                salePrice: 5,
              ),
              ProductCard(
                imgUrl: 'https://s.france24.com/media/display/e1b8b442-f05a-11ea-88b7-005056bff430/w:1280/p:16x9/07fd9e578c2716641d7df7879647e66616f3fe4b.webp',
                name: 'Product 1',
                shortDescription: 'This is the short description associated with this product.',
                isAvailable: true,
                isSaleItem: false,
                price: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
  
}
