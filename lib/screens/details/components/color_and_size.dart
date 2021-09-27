import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';
import 'package:Shopping/models/Product.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({ Key key, @required this.product }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget> [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(color: Color(0xFF356C95), isSelected: true),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B))
                ]
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold)
                )
              ]
            ),
          )
        )
      ]
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({ Key key, this.color, this.isSelected = false }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24.0,
      height: 24.0,
      margin: EdgeInsets.only(right: kDefaultPadding / 2, top: kDefaultPadding / 4),
      padding: EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: isSelected ? color : Colors.transparent)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        )
      ),
    );
  }
}