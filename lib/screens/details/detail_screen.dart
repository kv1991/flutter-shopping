import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:Shopping/constants.dart';
import 'package:Shopping/models/Product.dart';
import 'package:Shopping/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({ Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: product.color,
      body: Body(product: product)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white),
        onPressed: () => Navigator.pop(context)
      ),
      title: Row(
        children: [
          SizedBox(width: 20, child: Image.asset(product.image)),
          Text(product.title, style: TextStyle(color: Colors.black))
        ]
      ),
      actions: <Widget> [
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg", color: Colors.white),
          onPressed: () => {}
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white),
          onPressed: () => {}
        ),
      ]
    );
  }
}