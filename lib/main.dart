import 'package:delivery_food_delyo/appTapPages.dart';
import 'package:delivery_food_delyo/signIn.dart';
import 'package:delivery_food_delyo/signUp.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => AppTabPage(),
        '/signin' : (context) => SignInPage(),
        '/signup' : (context) => SignUpPage(),
        '/home' : (context) => HomePage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Container(
//           child: Column(
//             children: <Widget>[
//               FlatButton(
//                 child: Text('Sign In'),
//                 onPressed: () {
//                   Navigator.of(context).pushNamed('/signin');
//                 },
//               ),
//               FlatButton(
//                 child: Text('Sign Up'),
//                 onPressed: () {
//                   Navigator.of(context).pushNamed('/signup');
//                 },
//               ),
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
