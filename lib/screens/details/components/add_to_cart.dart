import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:Shopping/models/Product.dart';
import 'package:Shopping/constants.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({ Key key, this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
            onPressed: () => {}
          ),
          decoration: BoxDecoration(
            border: Border.all(color: product.color),
            borderRadius: BorderRadius.circular(18)
          )
        )
      ]
    );
  }
}