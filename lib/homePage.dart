import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchFood = new TextEditingController();

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
            color: gb.elementGreyColor,
          ),
        ),
        title: Container(
          height: 35,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: gb.baseColor,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  '88 Lermontova St. wwwwww',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: gb.baseColor, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.access_time,
              color: gb.elementGreyColor,
            ),
          )
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Explore',
                  style: TextStyle(
                      color: gb.elementGreyColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 50,
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
                          controller: searchFood,
                          cursorColor: gb.baseColor,
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: gb.hintTextColor, fontSize: 18),
                              prefixIcon: Icon(
                                Icons.search,
                                color: gb.hintTextColor,
                              ),
                              suffixIcon: Icon(
                                Icons.tune,
                                color: gb.hintTextColor,
                              ),
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              _topicListView(),
              SizedBox(height: 20,),
              _topicListView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _topicListView() {
    return Container(
                height: 280,
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
                    SizedBox(height: 10,),
                    Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Stack(
                            fit: StackFit.loose,
                            children: <Widget>[
                              Positioned(
                                top: 50,
                                child: Container(
                                    child: Container(
                                  height: 180,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      color: gb.elementColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 80, left: 20, right: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
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
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            Text(
                                              '75 m',
                                              style: TextStyle(
                                                  color: gb.baseColor),
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
                                            _ratingStar(),
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
                                left: MediaQuery.of(context).size.width * 0.06,
                                child: Container(
                                    child: Container(
                                  height: 120,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                              ),
                              Container(
                                height: 280,
                                width: 250,
                              )
                            ],
                          ),
                        );
                      },
                    ))
                  ],
                ),
              );
  }

  Widget _ratingStar() {
    final children = <Widget>[];
    for (var i = 0; i < 5; i++) {
      children.add(Icon(
        Icons.star,
        color: Colors.yellow,
        size: 20,
      ));
    }
    return Row(
      children: children,
    );
  }
}
