import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imgUrl, name, shortDescription;
  final bool isAvailable, isSaleItem;
  final int price, salePrice;

  ProductCard(
      {
        @required this.imgUrl,
        @required this.name,
        @required this.shortDescription,
        @required this.isAvailable,
        @required this.isSaleItem,
        @required this.price,
        this.salePrice
      }
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: InkWell(
          splashColor: Colors.green,
          onTap: () => print('card tapped'),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: isSaleItem ?
                  Banner(
                    message: 'SALE',
                    location: BannerLocation.topEnd,
                    color: Colors.red,
                    textStyle: TextStyle(fontSize: 18),
                    child: Image(image: NetworkImage(imgUrl),),
                  )
                      :
                  Image(image: NetworkImage(imgUrl)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                          ),
                        ),
                        Container(
                            width: 300,
                            child: Text(
                              shortDescription,
                              maxLines: 5,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            if (!isSaleItem) ...[
                              Text(
                                '\$' + '$price',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ] else ...[
                              Text(
                                '\$' + '$price',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough
                                ),
                              ),
                              Text(
                                '\$' + '$salePrice',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green
                                ),
                              ),
                            ],
                            if (isAvailable) ...[
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 35,
                              ),
                            ] else ...[
                              Icon(
                                Icons.report_off,
                                color: Colors.red,
                                size: 35,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}