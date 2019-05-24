import 'package:delivery_food_delyo/globalStyle.dart' as gb;
import 'package:delivery_food_delyo/singIn.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            child: Text('Sign In'),
            onPressed: () {
              gb.nextPage(context, SignInPage());
            },
          ),
        ),
      )
    );
  }
}
