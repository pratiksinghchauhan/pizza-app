import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepOrange,
      child: Text(
        "Pizza",
        textDirection: TextDirection.ltr,
      ),
    ));
  }
}
