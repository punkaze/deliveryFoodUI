import 'package:flutter/material.dart';

Color baseColor = Color.fromRGBO(255,82,69, 1);
Color shadeColor = Color.fromRGBO(250,185,91, 1);
Color backgroundColor = Color(0xFFEEF0F2);
Color hintTextColor = Color(0xFFD2D4D6);
Color elementColor = Colors.white;
Color elementGreyColor = Color(0xFF50514F);
Color blueColor = Color(0xFF083D77);

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
