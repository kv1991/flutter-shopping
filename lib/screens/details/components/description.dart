import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';
import 'package:Shopping/models/Product.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({ Key key, this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5
        )
      )
    );
  }
}