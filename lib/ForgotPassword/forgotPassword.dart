import 'package:delivery_food_delyo/ForgotPassword/forgotPasswordDialog.dart';
import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  TextEditingController userEmail = new TextEditingController();
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    cursorColor: gb.baseColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(color: gb.hintTextColor),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: gb.hintTextColor, width: 1.5)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: gb.baseColor)),
                      suffixIcon: validEmail
                          ? Icon(Icons.check, color: Colors.green)
                          : null,
                    ),
                    controller: userEmail,
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
                      'Send',
                      style: TextStyle(
                          color: gb.elementGreyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      print('Send');
                      _forgotPasswordDialog(context, true);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _forgotPasswordDialog(BuildContext context, bool forgotStatus) async {
    await showDialog(context: context, builder: (_) => ForgotDialog());
  }
}
