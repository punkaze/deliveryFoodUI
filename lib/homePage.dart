import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            child: Container(
              color: gb.yellowShadowColor,
              constraints: BoxConstraints.expand(),
              child: Column(
                children: <Widget>[Text('data')],
              ),
            ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            color: Colors.redAccent,
            child: Container(
              height: 500,
              child: Column(
                children: <Widget>[

                ],
              ),
            ),
          )
        ),
      ],
    );
  }
}
