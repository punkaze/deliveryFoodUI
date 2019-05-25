import 'package:delivery_food_delyo/verifyNumber.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class SignUpPage extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  TextEditingController userFullName = new TextEditingController();
  TextEditingController userPhoneNumber = new TextEditingController();
  TextEditingController userLocation = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: gb.backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.navigate_before,
            size: 30,
            color: gb.elementGreyColor,
          ),
          onTap: () {
            gb.popBack(context);
          },
        ),
        elevation: 0,
        backgroundColor: gb.backgroundColor,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: gb.yellowColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Name',
                          hintStyle: TextStyle(color: gb.hintTextColor),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: gb.hintTextColor, width: 1.5)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: gb.yellowColor)),
                        ),
                        controller: userFullName,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        cursorColor: gb.yellowColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Phone Number',
                          hintStyle: TextStyle(color: gb.hintTextColor),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: gb.hintTextColor, width: 1.5)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: gb.yellowColor)),
                        ),
                        controller: userPhoneNumber,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        cursorColor: gb.yellowColor,
                        decoration: InputDecoration(
                            hintText: 'Location',
                            hintStyle: TextStyle(color: gb.hintTextColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: gb.hintTextColor, width: 1.5)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: gb.yellowColor)),
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.location_on,
                                  color: userLocation.text == ''
                                      ? gb.hintTextColor
                                      : gb.yellowColor),
                            )),
                        controller: userLocation,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        cursorColor: gb.yellowColor,
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: gb.hintTextColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: gb.hintTextColor, width: 1.5)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: gb.yellowColor)),
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.visibility,
                                  color: _obscurePassword
                                      ? gb.hintTextColor
                                      : gb.yellowColor),
                              onTap: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            )),
                        controller: userPassword,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: gb.yellowShadowColor,
                            offset: Offset(0, 5),
                            blurRadius: 20,
                            spreadRadius: -10)
                      ]),
                  child: FlatButton(
                    shape: StadiumBorder(),
                    color: gb.yellowColor,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print('Sign Up');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyNumberPage()));
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: gb.elementGreyColor),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      child: InkWell(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: gb.yellowColor,
                      ),
                    ),
                    onTap: () {
                      print('sign In');
                      Navigator.popAndPushNamed(context, '/signin');
                    },
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: gb.elementGreyColor, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.google,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign Up with Google',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    print('Sign up with Google');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
