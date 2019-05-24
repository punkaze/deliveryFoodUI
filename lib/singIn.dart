import 'package:delivery_food_delyo/forgotPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool _obscurePassword = true;
  bool validEmail = false;

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
                      'Sign In',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: gb.yellowColor),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()));
                      },
                    ),
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: gb.yellowColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Your Email or Phone',
                          hintStyle: TextStyle(color: gb.hintTextColor),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: gb.hintTextColor, width: 1.5)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: gb.yellowColor)),
                          suffixIcon: validEmail
                              ? Icon(Icons.check, color: Colors.green)
                              : null,
                        ),
                        controller: username,
                        onChanged: (value) {
                          if (gb.validateEmail(value)) {
                            setState(() {
                              validEmail = true;
                            });
                          } else {
                            setState(() {
                              validEmail = false;
                            });
                          }
                        },
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
                        controller: password,
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
                      'Sign In',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print('Sign In');
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
                      "Sign Up",
                      style: TextStyle(
                        color: gb.yellowColor,
                      ),
                    ),
                    onTap: () {
                      print('sign up');
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
                          'Sign In with Google',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    print('Sign in with Google');
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
