import 'package:delivery_food_delyo/viewAllRestaurants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchFood = new TextEditingController();
  bool _searchPage = false;
  bool searchClearButton = false;

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
      body: Container(
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: <Widget>[
            _searchPage != true
                ? Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Explore',
                            style: TextStyle(
                                color: gb.elementGreyColor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                height: 45,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: gb.elementColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(blurRadius: 10, color: Colors.grey.shade300)
                    ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: _searchFood,
                        cursorColor: gb.baseColor,
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: gb.hintTextColor, fontSize: 16),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 24,
                              color: gb.hintTextColor,
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                searchClearButton != false
                                    ? Container(
                                        child: Row(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {
                                                _searchFood.text = '';
                                                setState(() {
                                                  searchClearButton = false;
                                                  _searchPage = false;
                                                });
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                size: 20,
                                                color: gb.hintTextColor,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 8),
                                              child: Container(
                                                width: 1,
                                                color: gb.hintTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(),
                                Icon(
                                  Icons.tune,
                                  size: 20,
                                  color: gb.hintTextColor,
                                ),
                              ],
                            ),
                            border: InputBorder.none),
                        onChanged: (val) {
                          if (val != '') {
                            setState(() {
                              searchClearButton = true;
                              _searchPage = true;
                            });
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            _searchPage != true
                ? Container(
                    child: Column(
                      children: <Widget>[
                        _topicListView(),
                        SizedBox(
                          height: 15,
                        ),
                        _topicListView()
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: gb.searchPage(context),
                  )
          ],
        ),
      ),
    );
  }

  Widget _topicListView() {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Markets',
                  style: TextStyle(
                      color: gb.elementGreyColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All (137)',
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewAllRestaurantsPage()));
                    },
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .18,
                                width: MediaQuery.of(context).size.width * .6,
                                decoration: BoxDecoration(
                                    color: gb.elementColor,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              'Swweety Cake',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: gb.elementGreyColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            '25 m',
                                            style:
                                                TextStyle(color: gb.baseColor),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Text(
                                            '70, Nevsky Avenue',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.grey.shade500),
                                          )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          gb.ratingStar(),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '4.8 (458)',
                                            style: TextStyle(
                                                color: Colors.grey.shade500),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        Positioned(
                          left: (MediaQuery.of(context).size.width * .1) / 2,
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .14,
                                width: MediaQuery.of(context).size.width * .5,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/foodImage.jpg',
                                        ),
                                        fit: BoxFit.cover),
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
