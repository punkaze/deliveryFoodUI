import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class RestauRantPage extends StatefulWidget {
  @override
  _RestauRantPageState createState() => _RestauRantPageState();
}

class _RestauRantPageState extends State<RestauRantPage> {
  TextEditingController _searchFood = new TextEditingController();
  int categoryIndex = 0;
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
          child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/foodImage.jpg',
                              ),
                              fit: BoxFit.cover),
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Yellow Food',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.info_outline)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Text('4.9 (268)')
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.local_mall,
                      color: gb.baseColor,
                      size: 18,
                    ),
                    Text('4.9 (268)')
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.local_shipping,
                      color: gb.baseColor,
                      size: 18,
                    ),
                    Text('Free Shipping')
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          hintStyle:
                              TextStyle(color: gb.hintTextColor, fontSize: 16),
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
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 8),
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
          Container(
            color: Colors.yellow,
            height: MediaQuery.of(context).size.height * .06,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[_categoryFood()],
            ),
          ),
          // ListView(
          //   children: <Widget>[
          //     Text('data')
          //   ],
          // )
        ],
      )),
    );
  }

  Widget _categoryFood() {
    final widgetList = <Widget>[];
    for (var i = 0; i < 15; i++) {
      widgetList.add(
        Column(
          children: <Widget>[
            Text('Popular',
                style: categoryIndex == i
                    ? TextStyle(
                        color: gb.baseColor, fontWeight: FontWeight.w600)
                    : TextStyle(
                        color: Colors.grey.shade400,
                      )),
            Container(
              child: Text('data'),
            ),
          ],
        ),
      );
      widgetList.add(SizedBox(
        width: 10,
      ));
    }
    return Row(
      children: widgetList,
    );
  }
}
