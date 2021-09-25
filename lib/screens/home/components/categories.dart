import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: kDefaultPadding),
        child: SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, idx) => buildCategories(idx),
            )));
  }

  Widget buildCategories(index) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(children: [
            Text(categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor)),
            Container(
                width: 30,
                height: 2,
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                color: selectedIndex == index ? Colors.black : Colors.transparent)
          ])),
      onTap: () => {
        setState(() {
          selectedIndex = index;
        })
      },
    );
  }
}
