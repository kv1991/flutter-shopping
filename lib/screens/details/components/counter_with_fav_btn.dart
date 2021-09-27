import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:Shopping/constants.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({ Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          child: SvgPicture.asset("assets/icons/heart.svg"),
          height: 32,
          width: 32,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle
          )
        )
      ]
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          handlePress: () => {
            if(numOfItems > 0) {
              setState(() {
                numOfItems --;
              })
            }
          }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6
          )
        ),
        buildOutlineButton(
          icon: Icons.add,
          handlePress: () => {
            setState(() {
              numOfItems ++;
            })
          }
        )
      ]
    );
  }

  SizedBox buildOutlineButton({ IconData icon, Function handlePress }) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Icon(icon),
        padding: EdgeInsets.zero,
        onPressed: handlePress
      )
    );
  }
}