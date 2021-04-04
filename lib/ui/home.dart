import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrange,
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Magerita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0, decoration: TextDecoration.none),
                  ),
                  Text(
                    "Tomato, Mozerala, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0, decoration: TextDecoration.none),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Magerita",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0, decoration: TextDecoration.none),
                  ),
                  Text(
                    "Tomato, Mozerala, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0, decoration: TextDecoration.none),
                  )
                ],
              ),
              PizzaImageAsset(),
              OrderButton()
            ])));
  }
}

class PizzaImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(Object context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50.0),
        child: ElevatedButton(
          child: Text("Order your Pizza"),
          onPressed: () => order(context),
        ));
    return Container(
      child: button,
    );
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
