import 'package:flutter/material.dart';

Color baseColor = Color.fromRGBO(255, 82, 69, 1);
Color shadeColor = Color.fromRGBO(250, 185, 91, 1);
Color backgroundColor = Color(0xFFEEF0F2);
Color hintTextColor = Color(0xFFD2D4D6);
Color elementColor = Colors.white;
Color elementGreyColor = Color(0xFF50514F);
Color blueColor = Color(0xFF083D77);

TextEditingController searchMain = new TextEditingController();

nextPage(BuildContext context, Widget nextPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => nextPage));
}

popBack(BuildContext context) {
  Navigator.pop(context);
}

bool validateMobile(String value) {
  if (value.length != 10)
    return false;
  else
    return true;
}

bool validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return false;
  else
    return true;
}

Widget ratingStar() {
  final children = <Widget>[];
  for (var i = 0; i < 5; i++) {
    children.add(Icon(
      Icons.star,
      color: Colors.yellow,
      size: 18,
    ));
  }
  return Row(
    children: children,
  );
}

Widget searchPage(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * .72,
    child: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Restaurant name',
                style: TextStyle(
                    color: elementGreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Go to Restaurant',
                style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        searchResult(context)
      ],
    ),
  );
}

Widget searchResult(BuildContext context) {
  final widgetList = <Widget>[];
  for (var i = 0; i < 10; i++) {
    widgetList.add(Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Positioned(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: MediaQuery.of(context).size.height * .24,
                  width: MediaQuery.of(context).size.width * .65,
                  decoration: BoxDecoration(
                      color: elementColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: (MediaQuery.of(context).size.width * .65) -
                              (MediaQuery.of(context).size.width * .28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Pumpkin Soup',
                                style: TextStyle(
                                    color: elementGreyColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      '\$9.25',
                                      style: TextStyle(
                                          color: baseColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: baseColor, width: 1.5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 5),
                                            child: Text(
                                              'Buy',
                                              style: TextStyle(
                                                  color: baseColor,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: ((MediaQuery.of(context).size.height * .2) * .1) / 2,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: (MediaQuery.of(context).size.height * .24) * .9,
                    width: MediaQuery.of(context).size.width * .45,
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
    ));
  }
  return Column(
    children: widgetList,
  );
}
