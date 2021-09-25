import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';
import 'package:Shopping/models/Product.dart';
import 'package:Shopping/screens/details/detail_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Text('Women',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
        Categories(), 
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), 
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75
              ),
              itemBuilder: (context, idx) => ItemCart(
                product: products[idx],
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: products[idx])))
              )
            )
          ),
        )
      ]
    );
  }
}
