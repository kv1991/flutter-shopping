import 'package:flutter/material.dart';

import 'package:Shopping/models/Product.dart';
import 'package:Shopping/constants.dart';
import 'product_title_with_image.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'counter_with_fav_btn.dart';
import 'add_to_cart.dart';
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
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget> [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ]
            )
          )
        ]
      )
    );
  }
}