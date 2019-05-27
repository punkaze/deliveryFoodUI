import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:flutter/material.dart' as prefix0;

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPassword = new TextEditingController();
  TextEditingController confirmNewPassword = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Reset',
                          style:
                              TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Password',
                          style:
                              TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        cursorColor: gb.baseColor,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: TextStyle(color: gb.hintTextColor),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: gb.hintTextColor, width: 1.5)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: gb.baseColor)),
                        ),
                        controller: newPassword,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        cursorColor: gb.baseColor,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: gb.hintTextColor),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: gb.hintTextColor, width: 1.5)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: gb.baseColor)),
                            ),
                        controller: confirmNewPassword,
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
                            color: gb.shadeColor,
                            offset: Offset(0, 5),
                            blurRadius: 20,
                            spreadRadius: -10)
                      ]),
                  child: FlatButton(
                    shape: StadiumBorder(),
                    color: gb.baseColor,
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print('Reset Password');
                      Navigator.popUntil(context, ModalRoute.withName('/signin'));
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: InkWell(
                    child: Text(
                      "Cancle",
                      style: TextStyle(
                        color: gb.baseColor, fontSize: 16, fontWeight: FontWeight.w500
                      ),
                    ),
                    onTap: () {
                      print('Cancle');
                      Navigator.popUntil(context, ModalRoute.withName('/signin'));
                    },
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
