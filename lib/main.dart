import 'package:flutter/material.dart';
import 'package:flutter_project/pages/Homepage.dart';

import 'pages/CartPage.dart';
import 'pages/ItemPage.dart';
import 'pages/login_screen.dart';
import 'pages/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
     '/': (context) => LoginScreen(),
       'homePage': (context) => HomePage(),
       'signupScreen': (context) => SignupScreen(),
      'cartPage': (context) => CartPage(),
      'itemPage': (context) => ItemPage(),
        },
    );
  }
}