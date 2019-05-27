import 'package:delivery_food_delyo/ForgotPassword/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;

class ForgotRestorePassword extends StatefulWidget {
  @override
  _ForgotRestorePasswordState createState() => _ForgotRestorePasswordState();
}

class _ForgotRestorePasswordState extends State<ForgotRestorePassword> {
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
                padding: const EdgeInsets.only(left: 20, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "You'll shortly receive an email with a code to set up a new password.",
                  style: TextStyle(color: gb.elementGreyColor),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: _codeField(context),
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
                      'Restore Password',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print('Send');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPassword()));
                    },
                  ),
                ),
              ),
              // TODO: Time ticker
              Text(
                "Resend confirmation code (1:11)",
                style: TextStyle(color: gb.baseColor),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _codeField(BuildContext context) {
    final children = <Widget>[];
    final Widget boxField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 60,
        width: 55,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(10)),
        child: TextField(
          obscureText: true,
          cursorColor: gb.baseColor,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              border: InputBorder.none,
              counter: null),
          // TODO:
          onChanged: (val) {},
        ),
      ),
    );
    for (var i = 0; i < 4; i++) {
      children.add(boxField);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
