import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class RestauRantPage extends StatefulWidget {
  @override
  _RestauRantPageState createState() => _RestauRantPageState();
}

class _RestauRantPageState extends State<RestauRantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gb.backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: gb.backgroundColor,
        leading: GestureDetector(
          child: Icon(
            Icons.menu,
            color: Colors.grey.shade500,
          ),
        ),
        title: Container(
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: gb.baseColor,
                size: 20,
              ),
              Expanded(
                child: TextField(
                  controller: gb.searchMain,
                  cursorColor: gb.baseColor,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(3),
                      hintText: '88 Lermontova St. wwwwww',
                      hintStyle: TextStyle(color: gb.baseColor, fontSize: 16),
                      hintMaxLines: 1,
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.access_time,
              color: Colors.grey.shade500,
            ),
          )
        ],
      ),
      // body: ,
    );
  }
}