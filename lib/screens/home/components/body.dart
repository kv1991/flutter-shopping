import 'package:flutter/material.dart';

import 'package:Shopping/constants.dart';
import 'categories.dart';

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
        Categories()
      ],
    );
  }
}
