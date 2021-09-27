import 'package:flutter/material.dart';

import 'package:Shopping/models/Product.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({ Key key, this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget> [
                ProductTitleWithImage(product: product)
              ]
            )
          )
        ]
      )
    );
  }
}