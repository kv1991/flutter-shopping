import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';
import 'package:Shopping/models/Product.dart';

class ItemCart extends StatelessWidget {
  final Function press;
  final Product product;
  const ItemCart({ Key key, this.press, this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget> [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image)
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color
              )
            )
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
            child: Text(product.title, style: TextStyle(color: kTextColor))
          ),
          Text("\$${product.price}", style: TextStyle(fontWeight: FontWeight.bold))
        ]
      )
    );
  }
}